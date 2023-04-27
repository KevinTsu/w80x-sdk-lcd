#ifndef __LCD_H__
#define __LCD_H__
#include "wm_include.h"
#include "user_config.h"


#if   (LCD_SIZE == 0)
#define LCD_WIDTH        240
#define LCD_HIGH         320
#elif (LCD_SIZE == 1)
#define LCD_WIDTH        320
#define LCD_HIGH         480
#elif (LCD_SIZE == 2)
#define LCD_WIDTH        320
#define LCD_HIGH         240
#elif (LCD_SIZE == 3)
#define LCD_WIDTH        480
#define LCD_HIGH         320
#elif (LCD_SIZE == 4)
#define LCD_WIDTH        480
#define LCD_HIGH         272
#elif (LCD_SIZE == 5)
#define LCD_WIDTH        320
#define LCD_HIGH         320
#else
#error lcd resolution not defined !!!
#endif

#if (BSP_LCD_Direction == 0)
#define BSP_LCD_X_PIXELS LCD_WIDTH
#define BSP_LCD_Y_PIXELS LCD_HIGH
#else
#define BSP_LCD_X_PIXELS LCD_HIGH
#define BSP_LCD_Y_PIXELS LCD_WIDTH
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