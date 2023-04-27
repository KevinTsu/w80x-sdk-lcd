#include "wm_include.h"
#include "iic.h"
#include "ft5206.h"
#include "touchpad.h"
#include "wm_i2c.h"
#include "wm_gpio_afsel.h"

#if(LCD_TYPE == 5)

#define USE_HARD_IIC 1

void ft5206_gpio_init(void)
{
    printf("---> %s\r\n", __func__);
    tls_gpio_cfg(TRST,  WM_GPIO_DIR_OUTPUT,  WM_GPIO_ATTR_PULLHIGH);
    tls_gpio_cfg(TIRQ,  WM_GPIO_DIR_INPUT,   WM_GPIO_ATTR_PULLHIGH);
#if(USE_HARD_IIC)
    wm_i2c_scl_config(I2C_SCL);
    wm_i2c_sda_config(I2C_SDA);
	tls_i2c_init(200000);
#else
    tls_gpio_cfg(I2C_SCL,  WM_GPIO_DIR_OUTPUT,  WM_GPIO_ATTR_FLOATING);
    tls_gpio_cfg(I2C_SDA,  WM_GPIO_DIR_OUTPUT,  WM_GPIO_ATTR_FLOATING);
#endif

}

u8 ft5206_write_reg(u16 reg, u8 *buf, u8 len)
{
#if USE_HARD_IIC
    // printf("---> %s\r\n", __func__);
	u8 i;
	u8 ret=0;
	
    tls_i2c_write_byte(FT_CMD_WR, 1);
    tls_i2c_wait_ack(); 	
	tls_i2c_write_byte(reg&0XFF, 0);   	    // 发送低8位地址
	tls_i2c_wait_ack();  
	for(i=0;i<len;i++)
	{	   
    	tls_i2c_write_byte(buf[i], 0);  	// 发数据
		ret = tls_i2c_wait_ack();
		if(ret)break;  
	}
 	tls_i2c_stop();  
    tls_os_time_delay(1);                   // 不加延时会导致i2c通讯失败
	return ret; 
#else
	u8 i;
	u8 ret=0;
	I2C_Start();	 
	I2C_Write_Byte(FT_CMD_WR);	//发送写命令 	 
	I2C_Wait_Ack(); 	 										  		   
	I2C_Write_Byte(reg&0XFF);   	//发送低8位地址
	I2C_Wait_Ack();  
	for(i=0;i<len;i++)
	{	   
    	I2C_Write_Byte(buf[i]);  	//发数据
		ret=I2C_Wait_Ack();
		if(ret)break;  
	}
    I2C_Stop();					//产生一个停止条件	    
    tls_os_time_delay(1);                   // 不加延时会导致i2c通讯失败
	return ret; 
#endif
}
	  
void ft5206_read_reg(u16 reg, u8 *buf, u8 len)
{
#if USE_HARD_IIC
    // printf("---> %s\r\n", __func__);
	u8 i; 	

    tls_i2c_write_byte(FT_CMD_WR, 1); 
	tls_i2c_wait_ack(); 	 										  		   
 	tls_i2c_write_byte(reg&0XFF, 0);     	//发送低8位地址
	tls_i2c_wait_ack();  
    tls_i2c_write_byte(FT_CMD_RD, 1); 	
	while(len > 1)
	{
		*buf++ = tls_i2c_read_byte(1,0);
		//printf("\nread byte=%x\n",*(pBuffer - 1));
		len --;
	}
   	*buf = tls_i2c_read_byte(0,1);	   
    tls_os_time_delay(1);                   // 不加延时会导致i2c通讯失败
#else
	u8 i; 
 	I2C_Start();	
 	I2C_Write_Byte(FT_CMD_WR);   	//发送写命令 	 
	I2C_Wait_Ack(); 	 										  		   
 	I2C_Write_Byte(reg&0XFF);   	//发送低8位地址
	I2C_Wait_Ack();  
 	I2C_Start();  	 	   
	I2C_Write_Byte(FT_CMD_RD);   	//发送读命令		   
	I2C_Wait_Ack();	   
	for(i=0;i<len;i++)
	{	   
    	buf[i]=I2C_Read_Byte();     //发数据	  
	} 
    I2C_Stop();//产生一个停止条件     
    tls_os_time_delay(1);                   // 不加延时会导致i2c通讯失败
#endif
} 



//初始化FT5206触摸屏
//返回值:0, 初始化成功;1, 初始化失败 
u8 ft5206_init(void)
{
    printf("---> %s\r\n", __func__);
    ft5206_gpio_init();
    // tp reset
    tls_gpio_write(TRST,  0);
	tls_os_time_delay(20);
    tls_gpio_write(TRST,  1);	    
	tls_os_time_delay(50);  	

    u8 temp[2] = {0}; 
	temp[0]=0;
	ft5206_write_reg(FT_DEVIDE_MODE, temp, 1);	// 进入正常操作模式 
	ft5206_write_reg(FT_ID_G_MODE, temp, 1);	// 查询模式 
	temp[0]=22;								    // 触摸有效值，22，越小越灵敏	
	ft5206_write_reg(FT_ID_G_THGROUP, temp, 1);	// 设置触摸有效值
	temp[0]=12;								    // 激活周期，不能小于12，最大14
	ft5206_write_reg(FT_ID_G_PERIODACTIVE, temp, 1); 

    // read reg test
    // u8 read_test = 0xFF;
	// ft5206_read_reg(FT_ID_G_THGROUP, &read_test, 1);  
    // printf("---> read 0x80 reg: %d\n", read_test);
	// ft5206_read_reg(FT_ID_G_PERIODACTIVE, &read_test, 1);  
    // printf("---> read 0x88 reg: %d\n", read_test);

    return 0;
}

/*
 * 输入：x/y 坐标地址
 * 输出：true:获取正确坐标 / false：获取坐标失败
 */
bool ft5206_read_coord(uint16_t *x, uint16_t *y)
{
    u8 finger = 0xff;
    u8 buf[4] = {0};
    
    ft5206_read_reg(FT_REG_NUM_FINGER, &finger, 1); // 读取触摸点的状态  
    if(finger == 1)
    {
        ft5206_read_reg(FT_TP1_REG, buf, 4);
        // printf("---> raw: %d %d %d %d %d\n",  finger, buf[0],  buf[1],  buf[2],  buf[3]);
        *x=((u16)(buf[0]&0X0F)<<8)+buf[1];
        *y=((u16)(buf[2]&0X0F)<<8)+buf[3];
        // printf("---> %d %d %d\n", finger, *x, *y);
    }
    else
    {
        return false;
    }
    return true;
}

// const u16 FT5206_TPX_TBL[5]={FT_TP1_REG, FT_TP2_REG, FT_TP3_REG, FT_TP4_REG, FT_TP5_REG};
//扫描触摸屏(采用查询方式)
//mode:0, 正常扫描.
//返回值:当前触屏状态.
//0, 触屏无触摸;1, 触屏有触摸
// u8 FT5206_Scan(u8 mode)
// {
// 	u8 buf[4];
// 	u8 i=0;
// 	u8 res=0;
// 	u8 temp;
// 	static u8 t=0;//控制查询间隔, 从而降低CPU占用率   
// 	t++;
// 	if((t%10)==0||t<10)//空闲时, 每进入10次CTP_Scan函数才检测1次, 从而节省CPU使用率
// 	{
// 		ft5206_read_reg(FT_REG_NUM_FINGER, &mode, 1);//读取触摸点的状态  
// 		if((mode&0XF)&&((mode&0XF)<6))
// 		{
// 			temp=0XFF<<(mode&0XF);//将点的个数转换为1的位数, 匹配tp_dev.sta定义 
// 			tp_dev.sta=(~temp)|TP_PRES_DOWN|TP_CATH_PRES; 
// 			for(i=0;i<5;i++)
// 			{
// 				if(tp_dev.sta&(1<<i))		//触摸有效?
// 				{
// 					ft5206_read_reg(FT5206_TPX_TBL[i], buf, 4);	//读取XY坐标值 
// 					if(tp_dev.touchtype&0X01)//横屏
// 					{
// 						tp_dev.y[i]=((u16)(buf[0]&0X0F)<<8)+buf[1];
// 						tp_dev.x[i]=((u16)(buf[2]&0X0F)<<8)+buf[3];
// 					}else
// 					{
// 						tp_dev.x[i]=lcddev.width-(((u16)(buf[0]&0X0F)<<8)+buf[1]);
// 						tp_dev.y[i]=((u16)(buf[2]&0X0F)<<8)+buf[3];
// 					}  
// 					if((buf[0]&0XF0)!=0X80)tp_dev.x[i]=tp_dev.y[i]=0;//必须是contact事件，才认为有效
// 					//printf("x[%d]:%d, y[%d]:%d\r\n", i, tp_dev.x[i], i, tp_dev.y[i]);
// 				}			
// 			} 
// 			res=1;
// 			if(tp_dev.x[0]==0 && tp_dev.y[0]==0)mode=0;	//读到的数据都是0, 则忽略此次数据
// 			t=0;		//触发一次, 则会最少连续监测10次, 从而提高命中率
// 		}
// 	}
// 	if((mode&0X1F)==0)//无触摸点按下
// 	{ 
// 		if(tp_dev.sta&TP_PRES_DOWN)	//之前是被按下的
// 		{
// 			tp_dev.sta&=~(1<<7);	//标记按键松开
// 		}else						//之前就没有被按下
// 		{ 
// 			tp_dev.x[0]=0xffff;
// 			tp_dev.y[0]=0xffff;
// 			tp_dev.sta&=0XE0;	//清除点有效标记	
// 		}	 
// 	} 	
// 	if(t>240)t=10;//重新从10开始计数
// 	return res;
// }
 

#endif

























