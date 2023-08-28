#include "wm_include.h"
#include "lcd_task.h"
#include "sdio_spi_driver.h"
#include "lcd.h"
#include "wm_psram.h"

#if USE_LCD_TASK

#define USER_TASK_QUEUE_START             0x01
#define USER_TASK_QUEUE_SEND1             0x02
#define USER_TASK_QUEUE_SEND2             0x03
#define USER_TASK_QUEUE_STOP              0x04

#define USER_TASK_QUEUE_SIZE              0x04

#define LCD_BUFF_SIZE   (BSP_LCD_X_PIXELS*BSP_LCD_Y_PIXELS/4)

static tls_os_queue_t *user_task_queue = NULL;
static OS_STK LcdTaskStk[LCD_TASK_STACK_SIZE/4];

volatile static bool lcd_dma_ready = true;

static u32  g_data_len    = 0;
static u32  g_data_offset = 0;
static u32 *g_data_addr   = NULL;

volatile static u8 buf_flag = 0;

static u16 buf1_valid_len = 0;
static u16 buf2_valid_len = 0;

static u8 lcd_buff1[LCD_BUFF_SIZE+3] = {0};
static u8 lcd_buff2[LCD_BUFF_SIZE+3] = {0};

int lcd_dma_queue_write(u16 x_start, u16 y_start, u16 x_end, u16 y_end, u32* data, u32 len)
{
    extern int delay_us();
    while(!lcd_dma_ready){
        delay_us(1);
    }
    lcd_dma_ready = 0;
    g_data_offset  = 0;
    buf1_valid_len = 0;
    buf2_valid_len = 0;
    // printf("---> %p %d\n", data, len);
    g_data_len     = len;
    g_data_addr    = data;
    lcd_set_windows(x_start, y_start, x_end, y_end);
    tls_os_queue_send(user_task_queue, (void *)USER_TASK_QUEUE_START, 0);
    return 0;
}

static void fill_buf(u8 buf_num)
{
    u16 tx_len = 0;

    if(g_data_len > LCD_BUFF_SIZE) {
        tx_len = LCD_BUFF_SIZE;
    }
    else {
        tx_len = g_data_len;
    }

    if(buf_num == 1){
        memcpy(lcd_buff1, g_data_addr + g_data_offset, tx_len);
        if(tx_len%4)
        {
            tx_len += (4 - (tx_len%4)); // dma发送长度必须为4的倍数。
        }
        buf1_valid_len = tx_len;
    }
    else if(buf_num == 2){
        memcpy(lcd_buff2, g_data_addr + g_data_offset, tx_len);
        if(tx_len%4)
        {
            tx_len += (4 - (tx_len%4)); // dma发送长度必须为4的倍数。
        }
        buf2_valid_len = tx_len;
    }

	if(g_data_len > tx_len)
	{
		g_data_len -= tx_len;
	}
	else
	{
		g_data_len = 0;
	}
    g_data_offset += tx_len/4;
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
                fill_buf(1);
                tls_os_queue_send(user_task_queue, (void *)USER_TASK_QUEUE_SEND1, 0);
                break;
            }
            case USER_TASK_QUEUE_SEND1: //
            {
                // printf("---> send1,%d\r\n", buf1_valid_len);
                if(buf1_valid_len == 0){
                    tls_os_queue_send(user_task_queue, (void *)USER_TASK_QUEUE_STOP, 0);
                    break;
                }
                write_sdio_spi_dma_async((u32 *)lcd_buff1, buf1_valid_len);
                fill_buf(2);
                tls_os_queue_send(user_task_queue, (void *)USER_TASK_QUEUE_SEND2, 0);
                // printf("---> send1 end\r\n");
                break;
            }
            case USER_TASK_QUEUE_SEND2: // 
            {
                // printf("---> send2,%d\r\n", buf2_valid_len);
                if(buf2_valid_len == 0){
                    tls_os_queue_send(user_task_queue, (void *)USER_TASK_QUEUE_STOP, 0);
                    break;
                }
                write_sdio_spi_dma_async((u32 *)lcd_buff2, buf2_valid_len);
                fill_buf(1);
                tls_os_queue_send(user_task_queue, (void *)USER_TASK_QUEUE_SEND1, 0);
                // printf("---> send2 end\r\n");
                break;
            }
            case USER_TASK_QUEUE_STOP: // 
            {
                // printf("---> stop msg\r\n");
                lcd_dma_ready = 1;
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
    
    tls_os_task_create(NULL, 
                      "lcd",
                       lcd_task_start,
                       NULL,
                       (void *)LcdTaskStk,          /* task's stack start address */
                       LCD_TASK_STACK_SIZE, /* task's stack size, unit:byte */
                       LCD_TASK_PRORITY,
                       0);
    // 创建消息队列
    tls_os_queue_create(&user_task_queue, USER_TASK_QUEUE_SIZE);
}

#endif