#ifndef __USER_CONFIG_H__
#define __USER_CONFIG_H__
#include "wm_include.h"

#define USE_LCD       1   // 必须使能
#define USE_ENCODE    1
#define USE_TOUCHPAD  1
#define USE_PSRAM     0
#define USE_LCD_TASK  0
// #define USE_SPIFLASH  1

#if USE_PSRAM
    #if (USE_LCD_TASK == 0)
    #error lcd task must be enabled to enable psram !!!
    #endif
#endif

#if USE_LCD

/***************************************************************************** 
*   屏幕驱动
*   0   st7789      240*320          
*   1   st7796s     320*480     encoder √     touchpad √
*   2   ili9341     240*320     encoder √     touchpad √
*   3   ili9488               
*   4   nv3401n     480*272
*   5   st7796      320*320                   touchpad √
*   6   st7796s     320*320                   touchpad √
*   7   GC9A01      240*240
*****************************************************************************/ 
#define LCD_TYPE  (1)


/***************************************************************************** 
*   屏幕方向 
*   0 : 竖屏          
*   1 : 横屏
*****************************************************************************/ 
#define BSP_LCD_Direction (1)


/***************************************************************************** 
*   屏幕分辨率
*   0   240*320          
*   1   320*480     
*   2   320*240  
*   3   480*320            
*   4   480*272
*   5   320*320
*   6   240*240
*****************************************************************************/ 
#define LCD_SIZE  (1)


/******************************************
*   SDIO	    W800	W801	TFT
*   sdio_ck	    PB_06	PA_09	CLK
*   sdio_cmd	PB_07	PA_10	MOSI
*******************************************/
#define CHIP_TYPE (0)
#if   (CHIP_TYPE == 0)  // GPIOA ---> W801
#define LCD_LED        	WM_IO_PA_08 //--->>TFT --LED
#define LCD_SCL        	WM_IO_PA_09 //--->>TFT --SCL
#define LCD_MOSI        WM_IO_PA_10 //--->>TFT --DO
#define LCD_TE          WM_IO_PA_11	//--->>TFT --TE
#define LCD_DC     	    WM_IO_PA_12	//--->>TFT --RS/DC 
#define LCD_RST        	WM_IO_PA_13 //--->>TFT --RST
#define LCD_CS        	WM_IO_PA_14 //--->>TFT --CS
#elif (CHIP_TYPE == 1)  // GPIOB ---> W800/W801/W801S2
#define LCD_LED         WM_IO_PB_05 //--->>TFT --LED
#define LCD_SCL         WM_IO_PB_06 //--->>TFT --SCL
#define LCD_MOSI        WM_IO_PB_07 //--->>TFT --DO
#define LCD_TE          WM_IO_PB_08	//--->>TFT --TE
#define LCD_DC       	WM_IO_PB_09	//--->>TFT --RS/DC
#define LCD_RST        	WM_IO_PB_10 //--->>TFT --RST
#define LCD_CS        	WM_IO_PB_11 //--->>TFT --CS
#elif (CHIP_TYPE == 2)  // GPIOA ---> W802
#define LCD_LED        	WM_IO_PA_02 //--->>TFT --LED
#define LCD_SCL        	WM_IO_PA_09 //--->>TFT --SCL
#define LCD_MOSI        WM_IO_PA_10 //--->>TFT --DO
#define LCD_TE          WM_IO_PB_29	//--->>TFT --TE
#define LCD_DC     	    WM_IO_PA_12	//--->>TFT --RS/DC 
#define LCD_RST        	WM_IO_PA_07 //--->>TFT --RST
#define LCD_CS        	WM_IO_PA_14 //--->>TFT --CS
#else                   // Customer 自定义（除SCL和MOSI外，其余可以用普通GPIO）
#define LCD_LED         WM_IO_PB_05 //--->>TFT --LED
#define LCD_SCL         WM_IO_PB_06 //--->>TFT --SCL
#define LCD_MOSI        WM_IO_PB_07 //--->>TFT --DO
#define LCD_TE          WM_IO_PB_08	//--->>TFT --TE
#define LCD_DC       	WM_IO_PB_10	//--->>TFT --RS/DC
#define LCD_RST        	WM_IO_PB_09 //--->>TFT --RST
#define LCD_CS        	WM_IO_PB_11 //--->>TFT --CS
#endif
#endif


#if USE_ENCODE
#if (1)
#define ENCODER_S   WM_IO_PA_00
#define ENCODER_A   WM_IO_PA_01
#define ENCODER_B   WM_IO_PA_02
#else
#define ENCODER_A   WM_IO_PB_00
#define ENCODER_B   WM_IO_PB_01
#define ENCODER_S   WM_IO_PB_02
#endif
#endif


#if USE_TOUCHPAD
/***************************************************************************** 
*   TOUCHPAD_TYPE
*   0   xpt2046   320*480               
*   1   xpt2046   240*320
*   2   ft5206    320*320
*   3   GT911     320*320
*****************************************************************************/ 
#if   LCD_TYPE == 1 
#define TOUCHPAD_TYPE  0
#elif LCD_TYPE == 2
#define TOUCHPAD_TYPE  1
#elif LCD_TYPE == 5
#define TOUCHPAD_TYPE  2
#elif LCD_TYPE == 6
#define TOUCHPAD_TYPE  3
#elif LCD_TYPE == 4
#define TOUCHPAD_TYPE  4
#endif 


// i2c touchpad
#if     (TOUCHPAD_TYPE == 2)
#define I2C_SDA	 WM_IO_PA_04 
#define TIRQ     WM_IO_PA_03
#define TRST     WM_IO_PA_02
#define I2C_SCL	 WM_IO_PA_01
#elif   (TOUCHPAD_TYPE == 3)
#define I2C_SDA	 WM_IO_PA_04 
#define TIRQ     WM_IO_PB_08
#define TRST     WM_IO_PB_09
#define I2C_SCL	 WM_IO_PA_01
#elif   (TOUCHPAD_TYPE == 4)
#define TCLK     WM_IO_PB_08
#define TCS      WM_IO_PB_09
#define TDIN     WM_IO_PB_12
#define TDOU     WM_IO_PB_13
#define TIRQ     WM_IO_PB_14
#else
// spi touchpad
#define TCLK     WM_IO_PA_07
#define TCS      WM_IO_PA_06
#define TDIN     WM_IO_PA_05
#define TDOU     WM_IO_PA_04
#define TIRQ     WM_IO_PA_03
#endif

#endif

#if USE_PSRAM
/***************************************************************************** 
* numsel: config psram ck cs dat0 dat1 dat2 dat3 pins multiplex relation,valid para 0,1
* 0:                 1: only for 56pin
* psram_ck   PB00    psram_ck   PA15
* psram_cs   PB01    psram_cs   PB27
* psram_dat0 PB02    psram_dat0 PB02
* psram_dat1 PB03    psram_dat1 PB03
* psram_dat2 PB04    psram_dat2 PB04
* psram_dat3 PB05    psram_dat3 PB05
*****************************************************************************/ 
#define PSRAM_NUMSET 0

#endif

#endif