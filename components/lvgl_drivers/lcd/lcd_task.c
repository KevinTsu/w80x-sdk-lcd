#include "wm_include.h"
#include "lcd_task.h"
#include "sdio_spi_driver.h"
#include "lcd.h"
#include "wm_psram.h"

#define ONCE_DMA_MAX_LEN                  65532

#define USER_TASK_QUEUE_START             0x01
#define USER_TASK_QUEUE_SEND              0x02
#define USER_TASK_QUEUE_STOP              0x03
#define USER_TASK_QUEUE_SIZE              0x03

static tls_os_queue_t   *user_task_queue = NULL;
static OS_STK LcdTaskStk[LCD_TASK_STACK_SIZE/4];

// 用于标记上一帧发送完成状态的变量
volatile static bool prev_frame_completion_flag = true;

static u32  g_data_len    = 0;
static u32  g_data_offset = 0;
static u32 *g_data_addr   = NULL;

static u32  g_send_len    = 0;
static u32 *g_send_addr   = NULL;



// 等待上一帧发送完成
void wait_for_prev_frame_completion()
{
    // extern int delay_us();
    // tls_os_time_delay(10);
    while(!prev_frame_completion_flag){
        tls_os_time_delay(1);
        // delay_us(1);
    }
}

int lcd_dma_queue_write(u16 x_start, u16 y_start, u16 x_end, u16 y_end, u32* data, u32 len)
{
    // printf("---> len :%d\n", len);
    prev_frame_completion_flag = false;
    g_data_offset  = 0;
    g_data_len     = len;
    g_data_addr    = data;
    lcd_set_windows(x_start, y_start, x_end, y_end);
    tls_os_queue_send(user_task_queue, (void *)USER_TASK_QUEUE_START, 0);
    return 0;
}

static int fill_buf()
{
    if(g_data_len == 0){
        return 1;
    }
    g_send_len = g_data_len;
    if(g_send_len > ONCE_DMA_MAX_LEN){
        g_send_len = ONCE_DMA_MAX_LEN;
    }
    g_send_addr = &g_data_addr[g_data_offset];
    g_data_offset += g_send_len/4;
    g_data_len    -= g_send_len;
    return 0;
}
    
static void lcd_task_start(void *data)
{
    void *msg;
    tls_os_status_t ret;

    for ( ; ; )
    {
        // 接收队里消息
        ret= tls_os_queue_receive(user_task_queue, (void **)&msg, 0, 0);
        if (ret == TLS_OS_SUCCESS)
        {
            switch((u32)msg)
            {
            case USER_TASK_QUEUE_START: // 
            {
                // printf("---> start msg\r\n");
                // time_ms = tls_os_get_time();
                // printf("---> use %d ms\n", tls_os_get_time() - time_ms);
                tls_os_queue_send(user_task_queue, (void *)USER_TASK_QUEUE_SEND, 0);
                break;
            }
            case USER_TASK_QUEUE_SEND: //
            {
                // printf("---> 0start msg\r\n");
                if(fill_buf() == 1){
                    tls_os_queue_send(user_task_queue, (void *)USER_TASK_QUEUE_STOP, 0);
                    break;
                }
                // printf("---> 1start msg\r\n");
                wait_sdio_dma_ready();
                // printf("---> 2start msg\r\n");
                wait_sdio_prev_data_completion();
                // printf("---> 3start msg\r\n");
                sdio_spi_dma_write_async((u32 *)g_send_addr, g_send_len);
                tls_os_queue_send(user_task_queue, (void *)USER_TASK_QUEUE_SEND, 0);
                break;
            }
            case USER_TASK_QUEUE_STOP: // 
            {
                // printf("---> stop msg\r\n");
                wait_sdio_prev_data_completion();
                prev_frame_completion_flag = true;
                break;
            }
            default:
                break;
            }
        }
    }
}

void lcd_task_create(void)
{
    // 创建消息队列
    tls_os_queue_create(&user_task_queue, USER_TASK_QUEUE_SIZE);
    tls_os_task_create(NULL, 
                      "lcd_task",
                       lcd_task_start,
                       NULL,
                       (void *)LcdTaskStk,          /* task's stack start address */
                       LCD_TASK_STACK_SIZE, /* task's stack size, unit:byte */
                       LCD_TASK_PRORITY,
                       0);
}

