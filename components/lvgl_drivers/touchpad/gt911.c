#include "wm_include.h"
#include "iic.h"
#include "gt911.h"
#include "touchpad.h"
#include "wm_i2c.h"
#include "wm_gpio_afsel.h"

#if(USE_TOUCHPAD == 1 && TOUCHPAD_TYPE == 3)

#if 0
// 单点触摸
const u8 GT911_CFG_TBL[]=
{ 
    0x6A,0x40,0x01,0x40,0x01,0x01,0x05,0x00,0x01,0x2F,0x28,0x0F,0x50,0x32,0x03,0x05,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x85,0x25,0x0A,0x46,0x44,
    0x31,0x0D,0x00,0x00,0x00,0x9A,0x02,0x1C,0x00,0x00,0x00,0x00,0x00,0x03,0x64,0x32,
    0x00,0x00,0x00,0x00,0x00,0x00,0x40,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x14,0x12,0x10,0x0E,0x0C,0x0A,0x08,0x06,0x04,0x02,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
    0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x21,0x20,
    0x1F,0x1E,0x1D,0x00,0x02,0x04,0x06,0x08,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
    0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
    0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x27,0x01
};  
#else
// 多点触摸
const u8 GT911_CFG_TBL[]=
{ 
    0x6B,0x40,0x01,0x40,0x01,0x05,0x05,0x00,0x01,0x2F,0x28,0x0F,0x50,0x32,0x03,0x05,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x85,0x25,0x0A,0x46,0x44,
    0x31,0x0D,0x00,0x00,0x00,0x9A,0x02,0x1C,0x00,0x00,0x00,0x00,0x00,0x03,0x64,0x32,
    0x00,0x00,0x00,0x00,0x00,0x00,0x40,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
    0x14,0x12,0x10,0x0E,0x0C,0x0A,0x08,0x06,0x04,0x02,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
    0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x21,0x20,
    0x1F,0x1E,0x1D,0x00,0x02,0x04,0x06,0x08,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
    0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
    0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x22,0x01
};  
#endif

u8 gt911_write_reg(u16 reg, u8 *buf, u8 len)
{
    // printf("---> %s\r\n", __func__);
	u8 ret=0;
	// vTaskSuspendAll();
    tls_i2c_write_byte(GT_CMD_WR, 1);
    tls_i2c_wait_ack(); 	
 	tls_i2c_write_byte((u8)(reg>>8), 0);        //发送高8位地址		
	tls_i2c_wait_ack();  							  		   
 	tls_i2c_write_byte((u8)(reg&0xFF), 0);     	//发送低8位地址
	tls_i2c_wait_ack();  
	for(u16 i=0;i<len;i++)
	{	   
    	tls_i2c_write_byte(buf[i], 0);  	    // 发数据
		ret = tls_i2c_wait_ack();
		if(ret)break;  
	}
 	tls_i2c_stop();  
    // xTaskResumeAll();
    tls_os_time_delay(1);                       // 不加延时会导致i2c通讯失败
	return ret; 
}


void gt911_read_reg(u16 reg, u8 *buf, u8 len)
{
    // vTaskSuspendAll();
    // printf("---> %s\r\n", __func__);
    tls_i2c_write_byte(GT_CMD_WR, 1); 
	tls_i2c_wait_ack(); 	 
 	tls_i2c_write_byte((u8)(reg>>8), 0);        //发送高8位地址		
	tls_i2c_wait_ack();  							  		   
 	tls_i2c_write_byte((u8)(reg&0xFF), 0);     	//发送低8位地址
	tls_i2c_wait_ack();  
    // tls_i2c_stop();  
    // tls_os_time_delay(1); 
    tls_i2c_write_byte(GT_CMD_RD, 1); 	
    tls_i2c_wait_ack(); 
	while(len > 1)
	{
		*buf++ = tls_i2c_read_byte(1,0);
		// printf("\nread byte=%x\n",*(buf - 1));
		len --;
	}
   	*buf = tls_i2c_read_byte(0,1);	  
    // xTaskResumeAll(); 
    tls_os_time_delay(1);                       // 不加延时会导致i2c通讯失败
} 


void gt911_gpio_init(void)
{
    printf("---> %s\r\n", __func__);
    tls_gpio_cfg(TRST,  WM_GPIO_DIR_OUTPUT,  WM_GPIO_ATTR_PULLHIGH);
    tls_gpio_cfg(TIRQ,  WM_GPIO_DIR_OUTPUT,  WM_GPIO_ATTR_FLOATING);
    tls_gpio_write(TIRQ, 1);
    // tls_gpio_cfg(I2C_SCL,  WM_GPIO_DIR_OUTPUT, WM_GPIO_ATTR_PULLHIGH);
    // tls_gpio_cfg(I2C_SDA,  WM_GPIO_DIR_OUTPUT, WM_GPIO_ATTR_PULLHIGH);
    // tls_gpio_write(I2C_SCL, 1);
    // tls_gpio_write(I2C_SDA, 1);

    wm_i2c_scl_config(I2C_SCL);
    wm_i2c_sda_config(I2C_SDA);
	tls_i2c_init(400000);
}

//驱动写入配置
u8 gt911_send_cfg(u8 mode)
{
	u8 buf[2];
	u8 i = 0;
	buf[0] = 0;
	buf[1] = mode;	                                                          // 是否写入到GT911 FLASH?  即是否掉电保存
	for(i=0; i<sizeof(GT911_CFG_TBL); i++) buf[0] += GT911_CFG_TBL[i];        // 计算校验和
    buf[0] = (~buf[0])+1;
	gt911_write_reg(GT_CFGS_REG, (u8*)GT911_CFG_TBL, sizeof(GT911_CFG_TBL));  // 发送寄存器配置
	gt911_write_reg(GT_CHECK_REG, buf, 2);                                    // 写入校验和,和配置更新标记
	return 0;
} 

const  u16 GT911_TPX_TBL[5] = {GT_TP1_REG, GT_TP2_REG, GT_TP3_REG, GT_TP4_REG, GT_TP5_REG};
static u8  tp_sta = 0;
static u16 tp_x[5] = {0};
static u16 tp_y[5] = {0};
static u8  touchtype = 0;
// 扫描触摸屏(采用查询方式)
// mode:0,正常扫描.
// 返回值:当前触屏状态.
// 0,触屏无触摸;1,触屏有触摸
u8 gt911_scan(u8 mode)
{
	u8 buf[4];
	u8 i = 0;
	u8 res = 0;
	u8 temp;
	// u8 tempsta;
 	static u8 t = 0;                                                // 控制查询间隔,从而降低CPU占用率   

	t++;
	// if((t%10) == 0||t < 10)                                         // 空闲时,每进入10次CTP_Scan函数才检测1次,从而节省CPU使用率
	{
        // printf("---> t: %d\n", t);
		gt911_read_reg(GT_GSTID_REG, &mode, 1);	                    // 读取触摸点的状态  
 		if( mode&0x80 &&((mode&0xF) < 6))
		{
			temp = 0;
			gt911_write_reg(GT_GSTID_REG, &temp, 1);                // 清标志 		
		}		
		if((mode & 0xF) && ((mode & 0xF) < 6))
		{
			temp = 0xFF << (mode & 0xF);		                    // 将点的个数转换为1的位数,匹配tp_dev.sta定义 
			// tempsta = tp_sta;			                            // 保存当前的tp_dev.sta值
			tp_sta = (~temp)|TP_PRES_DOWN|TP_CATH_PRES; 
			tp_x[4] = tp_x[0];	                                    // 保存触点0的数据
			tp_y[4] = tp_y[0];
			for( i=0; i<5; i++)
			{
				if(tp_sta&(1<<i))	                                // 触摸有效?
				{

					gt911_read_reg(GT911_TPX_TBL[i], buf, 4);       // 读取XY坐标值
					if(touchtype&0x01)                              // 横屏
					{
						// tp_y[i] = ((u16)buf[1] << 8) + buf[0];
						// tp_x[i] = 800 - (((u16)buf[3] << 8) + buf[2]);
					}else
					{
						tp_x[i] = ((u16)buf[1] << 8) + buf[0];
						tp_y[i] = ((u16)buf[3] << 8) + buf[2];
					}  
					// printf("x[%d]:%d,y[%d]:%d\r\n", i, tp_x[i], i, tp_y[i]);
				}			
			} 
			res = 1;
			// if(tp_x[0]>LCD_WIDTH||tp_y[0]>LCD_HIGH)                  // 非法数据(坐标超出了)
			// { 
			// 	if((mode&0xF) > 1)		                             // 有其他点有数据,则复第二个触点的数据到第一个触点.
			// 	{
			// 		tp_x[0] = tp_x[1];
			// 		tp_y[0] = tp_y[1];
			// 		t = 0;				                             // 触发一次,则会最少连续监测10次,从而提高命中率
			// 	}else					                             // 非法数据,则忽略此次数据(还原原来的)  
			// 	{
			// 		tp_x[0] = tp_x[4];
			// 		tp_y[0] = tp_y[4];
			// 		mode = 0x80;		
			// 		tp_sta = tempsta;	                             // 恢复tp_dev.sta
			// 	}
            //     printf("---> %d %d\n", tp_x[0], tp_y[0]);
			// }else t = 0;					                         // 触发一次,则会最少连续监测10次,从而提高命中率
		}
	}
	if((mode&0x8F) == 0x80)                                          // 无触摸点按下
	{ 
		if(tp_sta  & TP_PRES_DOWN)	                                 // 之前是被按下的
		{
			tp_sta &= ~(1<<7);	                                     // 标记按键松开
		}else						                                 // 之前就没有被按下
		{ 
			tp_x[0] = 0xffff;
			tp_y[0] = 0xffff;
			tp_sta &= 0xE0;	                                         // 清除点有效标记	
		}	 
	} 	
	if(t>240)t = 10;                                                 // 重新从10开始计数
	return res;
}

/*
 * 输入：x/y 坐标地址
 */
bool gt911_read_coord(uint16_t *x, uint16_t *y)
{
    *x = tp_x[0];
    *y = tp_y[0];
    // printf("---> %d %d\n", *x, *y);
    return 1;
}

u8 gt911_init(void)
{
    printf("---> %s\r\n", __func__);
    gt911_gpio_init();
    // tp reset
    tls_gpio_write(TRST,  0);
	tls_os_time_delay(20);
    tls_gpio_write(TRST,  1);	    
	tls_os_time_delay(50);
    tls_gpio_write(TIRQ, 0);
    tls_gpio_cfg(TIRQ,  WM_GPIO_DIR_INPUT,  WM_GPIO_ATTR_FLOATING);  
	tls_os_time_delay(50);
    u8 temp[4] = {0};
	gt911_read_reg(GT_PID_REG, temp, 4);	    // 读取产品ID

	printf("---> Touchpad id: %s\r\n", temp);   // 打印ID
	if(strcmp((char*)temp, "911") == 0)	        // ID==911
	{
		temp[0] = 0x02;			
		gt911_write_reg(GT_CTRL_REG, temp, 1);  // 软复位GT9147
 		gt911_read_reg(GT_CFGS_REG, temp, 1);   // 读取GT_CFGS_REG寄存器
        printf("---> Current version: %02X\n", temp[0]);
		if(temp[0] < 0x6A)                      // 默认版本比较低,需要更新flash配置
		{
			printf("---> Upgrade firmware\r\n");
			gt911_send_cfg(1);                  // 更新并保存配置
		}
		tls_os_time_delay(10);
		temp[0]=0x00;	 
		gt911_write_reg(GT_CTRL_REG, temp, 1);   // 结束复位   	
		return 0;
	} 
    return 1;
}
#endif