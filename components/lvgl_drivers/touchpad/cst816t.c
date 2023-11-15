#include "wm_include.h"
#include "cst816t.h"
#include "touchpad.h"
#include "wm_i2c.h"
#include "wm_gpio_afsel.h"
#include "../../user_config.h"

#if(USE_TOUCHPAD == 1 && TOUCHPAD_TYPE == 5)

// 用于标志触摸按下状态。
bool touchpad_is_pressed = 0;

int cst816t_read_len(u16 reg, u8 *buf, u8 len)
{
    // vTaskSuspendAll();
    // printf("---> %s\r\n", __func__);
    tls_i2c_write_byte(TP_DRIVER_WRITE, 1); 
	tls_i2c_wait_ack(); 	 
 	tls_i2c_write_byte((u8)(reg>>8), 0);        //发送高8位地址		
	tls_i2c_wait_ack();  							  		   
 	tls_i2c_write_byte((u8)(reg&0xFF), 0);     	//发送低8位地址
	tls_i2c_wait_ack();  
    // tls_i2c_stop();  
    // tls_os_time_delay(1); 
    tls_i2c_write_byte(TP_DRIVER_READ, 1); 	
    tls_i2c_wait_ack(); 
	while(len > 1)
	{
		*buf++ = tls_i2c_read_byte(1,0);
		// printf("\nread byte=%x\n",*(buf - 1));
		len --;
	}
   	*buf = tls_i2c_read_byte(0,1);	  
    // xTaskResumeAll(); 
    tls_os_time_delay(5);                       // 不加延时会导致i2c通讯失败
    return 0;
} 

static void touchpad_isr_callback(void *context)
{
	u16 ret;
	ret = tls_get_gpio_irq_status(TIRQ);
	if(ret)
	{
		tls_clr_gpio_irq_status(TIRQ);
        touchpad_is_pressed = 1;
	}
}

void cst816t_gpio_init(void)
{
    printf("---> %s\r\n", __func__);
    tls_gpio_cfg(TRST,  WM_GPIO_DIR_OUTPUT,  WM_GPIO_ATTR_FLOATING);

    tls_gpio_cfg(TIRQ,  WM_GPIO_DIR_INPUT,   WM_GPIO_ATTR_FLOATING);
	tls_gpio_isr_register(TIRQ, touchpad_isr_callback, NULL);
	tls_gpio_irq_enable(TIRQ, WM_GPIO_IRQ_TRIG_FALLING_EDGE);

    wm_i2c_scl_config(I2C_SCL);
    wm_i2c_sda_config(I2C_SDA);
	tls_i2c_init(400000);

    tls_gpio_write(TRST, 0);
    tls_os_time_delay(HZ/100);
    tls_gpio_write(TRST, 1);
    tls_os_time_delay(HZ/20);
}

// 读取芯片 ID，读 0xA7 寄存器，值。
// CST716  : 0x20
// CST816S : 0xB4
// CST816T : 0xB5
// CST816D : 0xB6
uint8_t cst816t_chipId(void)
{
    uint8_t id = 0;
    uint8_t res = 0;
    res = cst816t_read_len(0xA7, &id, 1);

    printf("---> Touchpad id: %02X\n", id);

    return 0;
}

static uint8_t cst816t_get_touch_points_num(uint8_t *touch_points_num)
{
    uint8_t res = 0;
    res = cst816t_read_len(0x02, touch_points_num, 1);
    return res;
}


static u8 data[4] = {0};
static u8 pressed_state = 0;

int cst816t_read_pos(uint8_t *touch_points_num, uint16_t *x, uint16_t *y)
{
    // cst816t有休眠机制，所以有触摸中断来才读数据。
    if (touchpad_is_pressed == 0){
        *x = 0;
        *y = 0;
        return touchpad_is_pressed;
    }

    cst816t_get_touch_points_num(touch_points_num);
    // printf("touch_points_num:%d\n", *touch_points_num);
    if (0 == *touch_points_num)
    {
        *x = 0;
        *y = 0;
        // 没有触摸清空标志
        touchpad_is_pressed = 0;
    }
    else if(43 == *touch_points_num)
    {
        *x = 0;
        *y = 0;
        // 读数异常清空标志
        touchpad_is_pressed = 0;
    }
    else
    {
        cst816t_read_len(0x03, data, 4);
        pressed_state = data[0] & 0xf0;
        // printf("---> pressed_state: %02X\n", pressed_state);
        if(pressed_state == 0x00 || pressed_state == 0x80){
            touchpad_is_pressed = 1;
        }
        else if(pressed_state == 0x40){
            touchpad_is_pressed = 0;
        }
        else{
            printf("--->Error: touchpad unknow state!");
        }
        *x = ((data[0] & 0x0f) << 8) | data[1];
        *y = ((data[2] & 0x0f) << 8) | data[3];
        // printf("---> pos:X:%d Y:%d\n", *x,*y);
    }
    return touchpad_is_pressed;
}



u8 cst816t_init(void)
{
    cst816t_gpio_init();
    cst816t_chipId();
    return 0;
}


#endif