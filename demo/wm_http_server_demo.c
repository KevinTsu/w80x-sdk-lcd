/**
 * @file    wm_http_server_demo.c
 * @brief   最简 HTTP 服务器（无 SSL），配合 SoftAP 使用
 */

#include <string.h>
#include "wm_include.h"
#include "wm_demo.h"
#include "wm_http_server_demo.h"

#include "../app/image/image_1_copy.h"
#include "../app/image/image_2_copy.h"
#include "../app/image/image_3_copy.h"
#include "../app/image/image_4_copy.h"
#include "../app/image/image_5_copy.h"

#if 1
// #if DEMO_HTTP_SERVER

#define HTTP_SERVER_TASK_SIZE   2000
#define HTTP_PORT               80
#define BACKLOG                 7
#define RECV_BUF_LEN            1024

#define DNS_PORT            53
#define DNS_TASK_SIZE       1024
#define DNS_BUF_SIZE        512

static OS_STK HttpServerTaskStk[HTTP_SERVER_TASK_SIZE];
static tls_os_queue_t *http_server_q = NULL;

static OS_STK DnsTaskStk[DNS_TASK_SIZE];
static tls_os_queue_t *dns_q = NULL;
/* AP 的 IP，所有域名都解析到这里 */
static const u8 dns_hijack_ip[4] = {192, 168, 6, 6};

typedef struct {
    const u8 *data;
    u32       size;
} img_desc_t;

static const img_desc_t g_images[] = {
    { (const u8 *)image_1_map, 14400 * 2 },
    { (const u8 *)image_2_map, 14400 * 2 },
    { (const u8 *)image_3_map, 14400 * 2 },
    { (const u8 *)image_4_map, 14400 * 2 },
    { (const u8 *)image_5_map, 14400 * 2 },
};

#define IMG_COUNT  (sizeof(g_images) / sizeof(g_images[0]))

/* 对外返回的 HTML 页面 */
static const char g_index_html[] =
	"<!DOCTYPE html>\n"
	"<html lang=\"zh-CN\">\n"
	"<head>\n"
	"<meta charset=\"utf-8\">\n"
	"<title>RGB565 缩略图选择</title>\n"
	"<style>\n"
	"  * { box-sizing: border-box; }\n"
	"  body {\n"
	"    margin: 0;\n"
	"    height: 100vh;\n"
	"    display: flex;\n"
	"    flex-direction: column;\n"
	"    background: #1e1e1e;\n"
	"    color: #fff;\n"
	"    font-family: system-ui, sans-serif;\n"
	"  }\n"
	"  .viewer {\n"
	"    flex: 1;\n"
	"    display: flex;\n"
	"    flex-direction: column;\n"
	"    align-items: center;\n"
	"    justify-content: center;\n"
	"    gap: 12px;\n"
	"    padding: 20px;\n"
	"    min-height: 0;\n"
	"  }\n"
	"  .viewer h2 { margin: 0; font-size: 20px; color: #ddd; }\n"
	"  #bigCanvas {\n"
	"    width: 120px;\n"
	"    height: 120px;\n"
	"    image-rendering: pixelated;\n"
	"    border-radius: 12px;\n"
	"    box-shadow: 0 8px 30px rgba(0,0,0,.5);\n"
	"  }\n"
	"  .thumbs {\n"
	"    display: flex;\n"
	"    justify-content: center;\n"
	"    gap: 14px;\n"
	"    padding: 16px;\n"
	"    background: #2a2a2a;\n"
	"    border-top: 1px solid #3a3a3a;\n"
	"    flex-wrap: wrap;\n"
	"  }\n"
	"  .thumb {\n"
	"    width: 80px;\n"
	"    height: 80px;\n"
	"    border-radius: 8px;\n"
	"    cursor: pointer;\n"
	"    border: 3px solid transparent;\n"
	"    image-rendering: pixelated;\n"
	"    transition: border-color .2s, transform .2s;\n"
	"  }\n"
	"  .thumb:hover { transform: translateY(-4px); }\n"
	"  .thumb.active { border-color: #4da3ff; }\n"
	"</style>\n"
	"</head>\n"
	"<body>\n"
	"\n"
	"  <div class=\"viewer\">\n"
	"    <h2 id=\"caption\">图片 1</h2>\n"
	"    <canvas id=\"bigCanvas\" width=\"120\" height=\"120\"></canvas>\n"
	"  </div>\n"
	"\n"
	"  <div class=\"thumbs\" id=\"thumbs\"></div>\n"
	"\n"
	"<script>\n"
	"const WIDTH = 120, HEIGHT = 120, COUNT = 5;\n"
	"\n"
	"function drawRGB565(canvas, buffer) {\n"
	"  const ctx = canvas.getContext('2d');\n"
	"  const view = new DataView(buffer);\n"
	"  const imageData = ctx.createImageData(WIDTH, HEIGHT);\n"
	"\n"
	"  for (let i = 0; i < WIDTH * HEIGHT; i++) {\n"
	"    const v = view.getUint16(i * 2, true);\n"
	"    const r5 = (v >> 11) & 0x1F;\n"
	"    const g6 = (v >> 5)  & 0x3F;\n"
	"    const b5 =  v        & 0x1F;\n"
	"\n"
	"    imageData.data[i * 4]     = (r5 * 255) / 31;\n"
	"    imageData.data[i * 4 + 1] = (g6 * 255) / 63;\n"
	"    imageData.data[i * 4 + 2] = (b5 * 255) / 31;\n"
	"    imageData.data[i * 4 + 3] = 255;\n"
	"  }\n"
	"\n"
	"  ctx.putImageData(imageData, 0, 0);\n"
	"}\n"
	"\n"
	"async function fetchRGB565(index) {\n"
	"  const res = await fetch('/image/' + index);\n"
	"  if (!res.ok) throw new Error('加载失败: ' + index);\n"
	"  return await res.arrayBuffer();\n"
	"}\n"
	"\n"
	"const bigCanvas = document.getElementById('bigCanvas');\n"
	"const caption   = document.getElementById('caption');\n"
	"const thumbs    = document.getElementById('thumbs');\n"
	"const buffers   = [];\n"
	"\n"
	"async function init() {\n"
	"  for (let i = 0; i < COUNT; i++) {\n"
	"    const buf = await fetchRGB565(i);\n"
	"    buffers.push(buf);\n"
	"\n"
	"    const thumb = document.createElement('canvas');\n"
	"    thumb.width  = WIDTH;\n"
	"    thumb.height = HEIGHT;\n"
	"    thumb.className = 'thumb';\n"
	"    thumb.dataset.index = i;\n"
	"    drawRGB565(thumb, buf);\n"
	"\n"
	"    thumb.addEventListener('click', () => select(i));\n"
	"    thumbs.appendChild(thumb);\n"
	"  }\n"
	"  select(0);\n"
	"}\n"
	"\n"
	"function select(index) {\n"
	"  drawRGB565(bigCanvas, buffers[index]);\n"
	"  caption.textContent = '图片 ' + (index + 1);\n"
	"\n"
	"  document.querySelectorAll('.thumb').forEach((el, i) => {\n"
	"    el.classList.toggle('active', i === index);\n"
	"  });\n"
	"\n"
	"  fetch('/select', {\n"
	"    method: 'POST',\n"
	"    headers: { 'Content-Type': 'application/json' },\n"
	"    body: JSON.stringify({ index: index })\n"
	"  }).catch(err => console.error('通知服务器失败：', err));\n"
	"}\n"
	"\n"
	"init();\n"
	"</script>\n"
	"\n"
	"</body>\n"
	"</html>\n";

const unsigned int index_html_len = sizeof(g_index_html) - 1;

static int send_all(int fd, const char *buf, int len)
{
    // int sent = 0, n;
    // while (sent < len)
    // {
    //     n = send(fd, buf + sent, len - sent, 0);
    //     if (n <= 0) return;
    //     sent += n;
    // }
	int sent = 0, n;
    while (sent < len)
    {
        n = send(fd, buf + sent, len - sent, 0);
        if (n < 0)
        {
            printf("[HTTP] send error: n=%d, sent=%d/%d\n", n, sent, len);
            return -1;
        }
        if (n == 0)
        {
            tls_os_time_delay(10);
            continue;
        }
        sent += n;
    }
    return sent;
}

/* 统一的 HTTP 响应头 */
static void http_send_response(int fd, const char *status,
							const char *content_type,
							const char *body, int body_len)
{
	char header[256];
	int hlen;
	int r1;
	int r2;

	r1 = 0;
	r2 = 0;

	hlen = snprintf(header, sizeof(header),
		"HTTP/1.1 %s\r\n"
		"Content-Type: %s\r\n"
		"Content-Length: %d\r\n"
		"Connection: close\r\n"
		"\r\n",
		status, content_type, body_len);

	// send_all(fd, header, hlen);
	// if (body && body_len > 0)
	// 	send_all(fd, body, body_len);
		
	r1 = send_all(fd, header, hlen);
	if (body && body_len > 0)
	{
		r2 = send_all(fd, body, body_len);
	}
	printf("[HTTP] send header=%d body=%d (expect %d)\n", r1, r2, body_len);
}

/* 302 重定向，用于 Captive Portal */
static void http_send_redirect(int fd, const char *location)
{
	char header[256];
	int hlen;
	int n = 0;

	hlen = snprintf(header, sizeof(header),
		"HTTP/1.1 302 Found\r\n"
		"Location: %s\r\n"
		"Content-Length: 0\r\n"
		"Connection: close\r\n"
		"\r\n",
		location);

	send(fd, header, hlen, 0);
	printf("[HTTP] 302 send n=%d/%d, Location: %s\n", n, hlen, location);
}

/* 处理一个 HTTP 请求 */
static void http_handle_request(int fd, const char *method, const char *path)
{
	printf("[HTTP] %s %s\n", method, path);

	/* Captive Portal 探测请求 → 302 到首页 */
	if (strcmp(path, "/generate_204") == 0 ||
		strcmp(path, "/hotspot-detect.html") == 0 ||
		strcmp(path, "/connecttest.txt") == 0)
	{
		http_send_redirect(fd, "http://192.168.6.6/");
		return;
	}

	/* 首页 */
	if (strcmp(path, "/") == 0) {
		http_send_response(fd, "200 OK", "text/html; charset=UTF-8",
						g_index_html, strlen(g_index_html));
		return;
	}

	/* 选择图片 */
	if (strncmp(path, "/select", 7) == 0)
	{
		/* 解析 id，切换显示 */
		const char *p = strstr(path, "id=");
		if (p) {
			int id = atoi(p + 3);
			printf("[HTTP] select image id=%d\n", id);
			/* TODO: 更新 LCD 显示 */
		}
		http_send_response(fd, "200 OK", "text/plain; charset=UTF-8", "ok", 2);
		return;
	}
	if (strncmp(path, "/image/", 7) == 0)
	{
		/* 解析 id，返回对应图片 */
		const char *p = strstr(path, "/image/");
		if (p) {
			int id = atoi(p + 7);
			if (id >= 0 && id < IMG_COUNT) {
				http_send_response(fd, "200 OK", "application/octet-stream",
									g_images[id].data, g_images[id].size);
				return;
			}
		}
		return;
	}

	/* 404 */
	http_send_response(fd, "404 Not Found", "text/plain; charset=UTF-8", "404", 3);
	printf("[HTTP] 404 Not Found\n");
}

/* 解析请求行，提取 method 和 path */
static int http_parse_request(const char *buf, char *method, int mlen,
							char *path, int plen) {
	const char *p = buf;
	const char *sp1, *sp2;
	int n;

	sp1 = strchr(p, ' ');
	if (!sp1) return -1;
	sp2 = strchr(sp1 + 1, ' ');
	if (!sp2) return -1;

	n = sp1 - p;
	if (n >= mlen) n = mlen - 1;
	memcpy(method, p, n);
	method[n] = '\0';

	n = sp2 - (sp1 + 1);
	if (n >= plen) n = plen - 1;
	memcpy(path, sp1 + 1, n);
	path[n] = '\0';

	return 0;
}

/* 服务器主循环 */
static void http_server_loop(int lfd) {
	struct sockaddr_in client_addr;
	char recvbuf[RECV_BUF_LEN];
	char method[16];
	char path[128];
	int fd, rc;
	
	while (1) {
		socklen_t addrlen = sizeof(client_addr);
		fd = accept(lfd, (struct sockaddr *)&client_addr, &addrlen);
		if (fd < 0) {
			tls_os_time_delay(10);
			continue;
		}

		printf("[HTTP] accept fd=%d from %s\n",
			fd, inet_ntoa(client_addr.sin_addr));

		memset(recvbuf, 0, sizeof(recvbuf));
		rc = recv(fd, recvbuf, sizeof(recvbuf) - 1, 0);
		if (rc > 0) {
			recvbuf[rc] = '\0';
			if (http_parse_request(recvbuf, method, sizeof(method), path, sizeof(path)) == 0) {
				http_handle_request(fd, method, path);
			} else {
				http_send_response(fd, "400 Bad Request",
								"text/plain; charset=UTF-8", "bad", 3);
			}
		}

		close(fd);
	}
}

/* 创建监听 socket */
static int http_server_listen(int port) {
	struct sockaddr_in addr;
	int fd;
	int yes = 1;

	fd = socket(AF_INET, SOCK_STREAM, 0);
	if (fd < 0) return -1;

	setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &yes, sizeof(yes));

	memset(&addr, 0, sizeof(addr));
	addr.sin_family = AF_INET;
	addr.sin_port = htons(port);
	addr.sin_addr.s_addr = INADDR_ANY;

	if (bind(fd, (struct sockaddr *)&addr, sizeof(addr)) < 0)
	{
		close(fd);
		return -1;
	}
	if (listen(fd, BACKLOG) < 0)
	{
		close(fd);
		return -1;
	}
	printf("[HTTP] listening on port %d\n", port);
	return fd;
}

/* 网络状态回调 */
static void http_server_net_status(u8 status) {
	switch (status)
	{
	case NETIF_IP_NET_UP:
	case NETIF_IP_NET2_UP:      /* SoftAP 网络起来 */
		printf("http_server_net_status %d\n", status);
		tls_os_queue_send(http_server_q, (void *)DEMO_MSG_SOCKET_CREATE, 0);
		tls_os_queue_send(dns_q, (void *)DEMO_MSG_SOCKET_CREATE, 0);
		break;
	default:
		break;
	}
}

static void net_status_changed_event(u8 status)
{
    printf("[NET] status = %d\n", status);

    switch (status)
    {
    case NETIF_IP_NET_UP:       /* STA 起来 */
    case NETIF_IP_NET2_UP:      /* AP 起来 */
        printf("[NET] net up, notify HTTP & DNS\n");

        /* 发给 HTTP 任务 */
        if (http_server_q)
            tls_os_queue_send(http_server_q, (void *)DEMO_MSG_SOCKET_CREATE, 0);

        /* 发给 DNS 任务 */
        if (dns_q)
            tls_os_queue_send(dns_q, (void *)DEMO_MSG_SOCKET_CREATE, 0);

        break;
    default:
        break;
    }
}

/* 任务入口 */
static void http_server_task(void *sdata) {
	void *msg;
	int lfd;

	printf("\n[http server task]\n");
	tls_netif_add_status_event(http_server_net_status);

	/* 如果 SoftAP 已经起来，直接开始 */
	{
		struct netif *nif = tls_get_netif();
		while (nif != NULL) {
		if ((nif->flags & NETIF_FLAG_UP) &&
			(nif->flags & NETIF_FLAG_LINK_UP)) {
			printf("[HTTP] netif already up: %d.%d.%d.%d\n",
					ip4_addr1(ip_2_ip4(&nif->ip_addr)),
					ip4_addr2(ip_2_ip4(&nif->ip_addr)),
					ip4_addr3(ip_2_ip4(&nif->ip_addr)),
					ip4_addr4(ip_2_ip4(&nif->ip_addr)));
			tls_os_queue_send(dns_q, (void *)DEMO_MSG_SOCKET_CREATE, 0);
			tls_os_queue_send(http_server_q, (void *)DEMO_MSG_SOCKET_CREATE, 0);
			// if (dns_q)
			break;
		}
			nif = nif->next;
		}
	}

	for (;;)
	{
		tls_os_queue_receive(http_server_q, (void **)&msg, 0, 0);
		switch ((u32)msg)
		{
		case DEMO_MSG_SOCKET_CREATE:
			lfd = http_server_listen(HTTP_PORT);
			printf("\n[http server task], lfd = %d\n", lfd);
			if (lfd >= 0)
			{
				http_server_loop(lfd);   /* 死循环 */
				close(lfd);
			}
			break;
		default:
			break;
		}
	}
}

/* 对外入口 */
int CreateHTTPServerDemoTask(void) {
	printf("[HTTP] CreateHttpServerDemoTask called\n");   // ← 加这行
	tls_os_queue_create(&http_server_q, DEMO_QUEUE_SIZE);
	tls_os_queue_create(&dns_q, DEMO_QUEUE_SIZE);
	tls_os_task_create(NULL, NULL,
					http_server_task,
					NULL,
					(void *)HttpServerTaskStk,
					HTTP_SERVER_TASK_SIZE * sizeof(u32),
					DEMO_HTTP_SERVER_TASK_PRIO,
					0);
	return WM_SUCCESS;
}
 
#if 1
/*
 * 构造 DNS 响应
 * 输入：query + qlen
 * 输出：resp + resp_len
 * 返回：0 成功，-1 失败
 */
static int dns_build_response(const u8 *query, int qlen,
                              u8 *resp, int *resp_len)
{
    int i;
    int qdcount;
    int qname_len;
    int pos;

    /* DNS 报文至少 12 字节 header */
    if (qlen < 12) return -1;

    /* 只处理标准查询（QR=0, OPCODE=0） */
    if ((query[2] & 0x80) != 0) return -1;

    /* QDCOUNT 必须为 1 */
    qdcount = (query[4] << 8) | query[5];
    if (qdcount != 1) return -1;

    /* 拷贝 header（12 字节） */
    for (i = 0; i < 12; i++) resp[i] = query[i];

    /* 设置响应标志：0x8180
     *   1000 0001 1000 0000
     *   QR=1(响应) OPCODE=0 AA=0 TC=0 RD=1 RA=1 Z=0 RCODE=0(无错误)
     */
    resp[2] = 0x81;
    resp[3] = 0x80;

    /* ANCOUNT = 1 */
    resp[6] = 0x00;
    resp[7] = 0x01;

    /* NSCOUNT = 0 */
    resp[8] = 0x00;
    resp[9] = 0x00;

    /* ARCOUNT = 0 */
    resp[10] = 0x00;
    resp[11] = 0x00;

    /* 定位 Question 结束位置 */
    pos = 12;
    while (pos < qlen && query[pos] != 0)
    {
        /* 跳过 label，每个 label 前有一个长度字节 */
        if ((query[pos] & 0xC0) == 0xC0)
        {
            /* 压缩指针，占 2 字节 */
            pos += 2;
            break;
        }
        pos += query[pos] + 1;
    }
    if (pos >= qlen) return -1;
    if (query[pos] == 0) pos++;   /* 跳过结尾的 0 */

    /* Question 后面还有 QTYPE(2) + QCLASS(2) */
    pos += 4;
    if (pos > qlen) return -1;

    qname_len = pos;

    /* 拷贝 Question 原样到 resp */
    for (i = 12; i < qname_len; i++) resp[i] = query[i];

    /* 构造 Answer */
    /* Name：用压缩指针 0xC00C 指向 Question 的域名 */
    resp[pos++] = 0xC0;
    resp[pos++] = 0x0C;

    /* TYPE = A (0x0001) */
    resp[pos++] = 0x00;
    resp[pos++] = 0x01;

    /* CLASS = IN (0x0001) */
    resp[pos++] = 0x00;
    resp[pos++] = 0x01;

    /* TTL = 60 秒 */
    resp[pos++] = 0x00;
    resp[pos++] = 0x00;
    resp[pos++] = 0x00;
    resp[pos++] = 0x3C;

    /* RDLENGTH = 4 (IPv4 地址长度) */
    resp[pos++] = 0x00;
    resp[pos++] = 0x04;

    /* RDATA = 192.168.1.1 */
    resp[pos++] = dns_hijack_ip[0];
    resp[pos++] = dns_hijack_ip[1];
    resp[pos++] = dns_hijack_ip[2];
    resp[pos++] = dns_hijack_ip[3];

    *resp_len = pos;
    return 0;
}

/* DNS 服务器主循环 */
static void dns_server_loop(int fd)
{
    struct sockaddr_in client_addr;
    socklen_t addrlen;
    u8 query[DNS_BUF_SIZE];
    u8 resp[DNS_BUF_SIZE];
    int qlen, rlen;
    int rc;

    while (1)
    {
        addrlen = sizeof(client_addr);
        qlen = recvfrom(fd, query, sizeof(query), 0,
                        (struct sockaddr *)&client_addr, &addrlen);

		printf("[DNS] recvfrom qlen=%d\n", qlen);   /* ← 加这行 */
        if (qlen <= 0)
        {
            tls_os_time_delay(10);
            continue;
        }

        rlen = 0;
        if (dns_build_response(query, qlen, resp, &rlen) == 0)
        {
            rc = sendto(fd, resp, rlen, 0,
                        (struct sockaddr *)&client_addr, addrlen);
            printf("[DNS] hijack query from %s, resp %d bytes\n",
                   inet_ntoa(client_addr.sin_addr), rc);
        }
    }
}

/* 创建 DNS 监听 socket */
static int dns_server_listen(int port)
{
    struct sockaddr_in addr;
    int fd;
    int yes = 1;

    fd = socket(AF_INET, SOCK_DGRAM, 0);
    if (fd < 0) return -1;

    setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &yes, sizeof(yes));

    memset(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_port = htons(port);
    addr.sin_addr.s_addr = INADDR_ANY;
	// addr.sin_addr.s_addr = inet_addr("192.168.6.6");

    if (bind(fd, (struct sockaddr *)&addr, sizeof(addr)) < 0)
    {
        close(fd);
        return -1;
    }
    printf("[DNS] listening on port %d\n", port);
    return fd;
}

/* DNS 任务入口 */
static void dns_server_task(void *sdata)
{
    void *msg;
    int fd;

    for (;;)
    {
        tls_os_queue_receive(dns_q, (void **)&msg, 0, 0);
        switch ((u32)msg)
        {
        case DEMO_MSG_SOCKET_CREATE:
            fd = dns_server_listen(DNS_PORT);
			printf("\n[dns server task], fd = %d\n", fd);
            if (fd >= 0)
            {
                dns_server_loop(fd);   /* 死循环 */
                close(fd);
            }
            break;
        default:
			printf("\n[dns server task], msg = %d\n", (u32)msg);
            break;
        }
    }
}

/* 对外入口 */
int CreateDnsServerDemoTask(void)
{
    // tls_os_queue_create(&dns_q, DEMO_QUEUE_SIZE);
    tls_os_task_create(NULL, NULL,
                       dns_server_task,
                       NULL,
                       (void *)DnsTaskStk,
                       DNS_TASK_SIZE * sizeof(u32),
                       DEMO_DNS_SERVER_TASK_PRIO,
                       0);
    return WM_SUCCESS;
}
#endif
#endif /* DEMO_HTTP_SERVER */