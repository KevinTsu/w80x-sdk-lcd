#ifndef __GT911_H__
#define __GT911_H__


// I2C读写命令	
#define GT_CMD_WR 		0x28     	// 写命令
#define GT_CMD_RD 		0x29		// 读命令
  
// GT911 部分寄存器定义 
#define GT_CTRL_REG 	0x8040   	// GT9147控制寄存器
#define GT_CFGS_REG 	0x8047   	// GT9147配置起始地址寄存器
#define GT_CHECK_REG 	0x80FF   	// GT9147校验和寄存器
#define GT_PID_REG 		0x8140   	// GT9147产品ID寄存器

#define GT_GSTID_REG 	0x814E   	// GT9147当前检测到的触摸情况
#define GT_TP1_REG 		0x8150  	// 第一个触摸点数据地址
#define GT_TP2_REG 		0x8158		// 第二个触摸点数据地址
#define GT_TP3_REG 		0x8160		// 第三个触摸点数据地址
#define GT_TP4_REG 		0x8168		// 第四个触摸点数据地址
#define GT_TP5_REG 		0x8170		// 第五个触摸点数据地址  

#define TP_PRES_DOWN    0x80  		// 触屏被按下	  
#define TP_CATH_PRES    0x40  		// 有按键按下了 


u8 gt911_init(void);



#endif
