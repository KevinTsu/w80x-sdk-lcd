#include "wm_include.h"
#include "iic.h"
#include "ft6336.h"
#include "touchpad.h"
#include "wm_i2c.h"
#include "wm_gpio_afsel.h"
#include "../../user_config.h"

#if(USE_TOUCHPAD == 1 && TOUCHPAD_TYPE == 6)

#define USE_HARD_IIC 1

void ft6336_gpio_init(void)
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

//初始化ft6336触摸屏
//返回值:0, 初始化成功;1, 初始化失败 
u8 ft6336_init(void)
{
    printf("---> %s\r\n", __func__);
    ft6336_gpio_init();
    // tp reset
    tls_gpio_write(TRST,  0);
	tls_os_time_delay(20);
    tls_gpio_write(TRST,  1);	    
	tls_os_time_delay(50);  	
    // read chip id 
    // ft6336_rd_sigleReg(FT_ID_G_FOCALTECH_ID,&id);
    // if(id != PANNEL_ID)
    // {
    //     return set;
    // }
    // set = FT_TRUE;

    // u8 temp[2] = {0}; 
	// temp[0]=0;
	// ft6336_write_reg(FT_DEVIDE_MODE, &temp[0], 1);	// 进入正常操作模式 
	// ft6336_write_reg(FT_ID_G_MODE, temp, 1);	// 查询模式 
	// temp[0]=22;								    // 触摸有效值，22，越小越灵敏	
	// ft6336_write_reg(FT_ID_G_THGROUP, temp, 1);	// 设置触摸有效值
	// temp[0]=12;								    // 激活周期，不能小于12，最大14
	// ft6336_write_reg(FT_ID_G_PERIODACTIVE, temp, 1); 

    // read reg test
    u8 read_test = 0xFF;
	ft6336_read_reg(FT_ID_G_FOCALTECH_ID, &read_test, 1);  
    printf("---> read 0x%02X reg: %02X\n", FT_ID_G_FOCALTECH_ID, read_test);

	ft6336_read_reg(FT_ID_G_CIPHER_MID, &read_test, 1);  
    printf("---> read 0x%02X reg: %02X\n", FT_ID_G_CIPHER_MID, read_test);

    return 0;
}

u8 ft6336_write_reg(u8 reg, u8 *buf, u8 len)
{
#if USE_HARD_IIC
    // printf("---> %s\r\n", __func__);
	u8 i;
	u8 ret=0;
	
    tls_i2c_write_byte(FT_CMD_WR, 1);
    tls_i2c_wait_ack(); 	
	tls_i2c_write_byte(reg, 0);   	    // 发送低8位地址
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
	  
void ft6336_read_reg(u8 reg, u8 *buf, u8 len)
{
#if USE_HARD_IIC
    // printf("---> %s\r\n", __func__);
	// u8 i; 	

    tls_i2c_write_byte(FT_CMD_WR, 1); 
	tls_i2c_wait_ack(); 	 										  		   
 	tls_i2c_write_byte(reg, 0);    
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
 	I2C_Write_Byte(reg);  
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

/*
 * 输入：x/y 坐标地址
 * 输出：true:获取正确坐标 / false：获取坐标失败
 */
bool ft6336_read_coord(uint16_t *x, uint16_t *y)
{
    u8 finger = 0xff;
    u8 buf[4] = {0};
    // printf("---> finger: %d\n", finger);
    ft6336_read_reg(FT_REG_NUM_FINGER, &finger, 1); // 读取触摸点的状态  
    if(finger == 1)
    {
        ft6336_read_reg(FT_TP1_REG, buf, 4);
        // printf("---> raw: %d %d %d %d %d\n",  finger, buf[0],  buf[1],  buf[2],  buf[3]);
        *x=((u16)(buf[0]&0X0F)<<8)+buf[1];
        *y=((u16)(buf[2]&0X0F)<<8)+buf[3];
        printf("---> %d %d %d\n", finger, *x, *y);
    }
    else
    {
        return false;
    }
    return true;
}

#endif