#ifndef __FT5206_H__
#define __FT5206_H__


//与电容触摸屏连接的芯片引脚(未包含IIC引脚) 
//IO操作函数	  
#define FT_RST    				PIout(8)	//FT5206复位引脚
#define FT_INT    				PHin(7)		//FT5206断引脚	
   
//I2C读写命令	
#define FT_CMD_WR 				0x70    	//写命令
#define FT_CMD_RD 				0x71		//读命令
  
//FT5206 部分寄存器定义 
#define FT_DEVIDE_MODE 			0x00   		//FT5206模式控制寄存器
#define FT_REG_NUM_FINGER       0x02		//触摸状态寄存器

#define FT_TP1_REG 				0x03	  	//第一个触摸点数据地址
#define FT_TP2_REG 				0x09		//第二个触摸点数据地址
#define FT_TP3_REG 				0x0F		//第三个触摸点数据地址
#define FT_TP4_REG 				0x15		//第四个触摸点数据地址
#define FT_TP5_REG 				0x1B		//第五个触摸点数据地址  
 

#define	FT_ID_G_LIB_VERSION		0xA1		//版本		
#define FT_ID_G_MODE 			0xA4   		//FT5206中断模式控制寄存器
#define FT_ID_G_THGROUP			0x80   		//触摸有效值设置寄存器
#define FT_ID_G_PERIODACTIVE	0x88   		//激活状态周期设置寄存器

void ft5206_gpio_init(void);

u8 ft5206_write_reg(u16 reg,u8 *buf,u8 len);

void ft5206_read_reg(u16 reg,u8 *buf,u8 len);

u8 ft5206_init(void);

// u8 ft5206_scan(u8 mode);

bool ft5206_read_coord(uint16_t *x, uint16_t *y);


#endif

















