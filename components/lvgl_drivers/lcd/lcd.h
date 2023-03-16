#ifndef __LCD_H__
#define __LCD_H__
#include "wm_include.h"

// 屏幕方向 0 : 竖屏 1 : 横屏
#define BSP_LCD_Direction (0)

/***************************************************************************** 
*   LCD_TYPE
*   0   st7789                 
*   1   st7796s     320*480     encoder √     touchpad √
*   2   ili9341     240*320     encoder √     touchpad √
*   3   ili9488                
*   4   nv3401n     480*272
*****************************************************************************/ 
#define LCD_TYPE  (0)
#define LCD_SIZE  (2)
// 屏幕分辨率
#if   (LCD_SIZE == 1)
#define LCD_WIDTH        320
#define LCD_HIGH         480
#elif (LCD_SIZE == 2)
#define LCD_WIDTH        240
#define LCD_HIGH         320
#elif (LCD_SIZE == 3)
#define LCD_WIDTH        272
#define LCD_HIGH         480
#else
#define LCD_WIDTH        320
#define LCD_HIGH         480
#endif

#if (BSP_LCD_Direction == 0)
#define BSP_LCD_X_PIXELS LCD_WIDTH
#define BSP_LCD_Y_PIXELS LCD_HIGH
#else
#define BSP_LCD_X_PIXELS LCD_HIGH
#define BSP_LCD_Y_PIXELS LCD_WIDTH
#endif

/******************************************
*   SDIO	    W800	W801	TFT
*               PB_05	PA_08	LED
*   sdio_ck	    PB_06	PA_09	CLK
*   sdio_cmd	PB_07	PA_10	MOSI
*   sdio_dat0	PB_08	PA_11	MISO
*   sdio_dat1	PB_09	PA_12	RST
*   sdio_dat2	PB_10	PA_13	DC/RS
*   sdio_dat3	PB_11	PA_14	CS
*******************************************/
#define CHIP_TYPE (0)

#if   (CHIP_TYPE == 0)  // W801
#define LCD_LED        	WM_IO_PA_08 //--->>TFT --LED
#define LCD_SCL        	WM_IO_PA_09 //--->>TFT --SCL
#define LCD_MOSI        WM_IO_PA_10 //--->>TFT --DO
#define LCD_MISO        WM_IO_PA_11	//--->>TFT --DI
#define LCD_DC     	    WM_IO_PA_12	//--->>TFT --RS/DC 
#define LCD_RST        	WM_IO_PA_13 //--->>TFT --RST
#define LCD_CS        	WM_IO_PA_14 //--->>TFT --CS
#elif (CHIP_TYPE == 1)  // W800
#define LCD_LED         WM_IO_PB_05 //--->>TFT --LED
#define LCD_SCL         WM_IO_PB_06 //--->>TFT --SCL
#define LCD_MOSI        WM_IO_PB_07 //--->>TFT --DO
#define LCD_MISO        WM_IO_PB_08	//--->>TFT --DI
#define LCD_DC       	WM_IO_PB_09	//--->>TFT --RS/DC
#define LCD_RST        	WM_IO_PB_10 //--->>TFT --RST
#define LCD_CS        	WM_IO_PB_11 //--->>TFT --CS
#else                   // TEST
#define LCD_LED        	WM_IO_PA_08 //--->>TFT --LED
#define LCD_SCL        	WM_IO_PA_09 //--->>TFT --SCL
#define LCD_MOSI        WM_IO_PA_10 //--->>TFT --SDA
#define LCD_DC         	WM_IO_PA_11	//--->>TFT --RS/DC
#define LCD_RST         WM_IO_PA_12	//--->>TFT --RST
#define LCD_CS        	WM_IO_PA_13 //--->>TFT --CS
#endif

// COLOR
#define WHITE         	 0xFFFF
#define BLACK         	 0x0000	  
#define BLUE         	 0x001F  
#define BRED             0XF81F
#define GRED 			 0XFFE0
#define GBLUE			 0X07FF
#define RED           	 0xF800
#define MAGENTA       	 0xF81F
#define GREEN         	 0x07E0
#define CYAN          	 0x7FFF
#define YELLOW        	 0xFFE0
#define BROWN 			 0XBC40 //棕色
#define BRRED 			 0XFC07 //棕红色
#define GRAY  			 0X8430 //灰色

#define COLOR_FORMAT    0  // 0 : RGB565  1 : RGB666
#define LCD_ASYNC_SEND  1  // 0 : sync    1 : async

void bsp_lcd_init();

void lcd_set_windows(u16 x_start, u16 y_start, u16 x_end, u16 y_end);

void lcd_clear(u16 Color);

void lcd_show_picture(u8 *data);

void lcd_full_picture(u16 image_width, u16 image_height, u8 *image_buf);

void lcd_full_picture_from_spiflash(u16 image_width, u16 image_height, u32 offset);

void bsp_lcd_draw_rect_wait(void);

void bsp_lcd_draw_rect(unsigned short x, unsigned short y, unsigned short width, unsigned short height, unsigned char *data);

#endif