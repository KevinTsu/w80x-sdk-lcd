#ifndef __TOUCHPAD_H__
#define __TOUCHPAD_H__
#include "wm_include.h"
#include "lcd.h"

// i2c touchpad
#if     (LCD_TYPE == 5)
#define I2C_SDA	 WM_IO_PA_04 
#define TIRQ     WM_IO_PA_03
#define TRST     WM_IO_PA_02
#define I2C_SCL	 WM_IO_PA_01
#elif   (LCD_TYPE == 6)
#define I2C_SDA	 WM_IO_PA_04 
#define TIRQ     WM_IO_PB_08
#define TRST     WM_IO_PB_09
#define I2C_SCL	 WM_IO_PA_01
#else
// spi touchpad
#define TCLK     WM_IO_PA_07
#define TCS      WM_IO_PA_06
#define TDIN     WM_IO_PA_05
#define TDOU     WM_IO_PA_04
#define TIRQ     WM_IO_PA_03
#endif

/***************************************************************************** 
*   TOUCHPAD_TYPE
*   0   xpt2046   320*480               
*   1   xpt2046   240*320
*   2   ft5206    320*320
*   3   GT911     320*320
*****************************************************************************/ 
#if   (LCD_TYPE == 1)
#define TOUCHPAD_TYPE  0
#elif (LCD_TYPE == 2)
#define TOUCHPAD_TYPE  1
#elif (LCD_TYPE == 5)
#define TOUCHPAD_TYPE  2
#elif (LCD_TYPE == 6)
#define TOUCHPAD_TYPE  3
#endif

typedef struct _coord_t_{
    float       xRate;     // x轴比例系数
    float       yRate;
    int16_t     xOffset;   // 触摸屏与显示屏x轴偏移
    int16_t     yOffset;
    int16_t     xCoord;    // x轴坐标
    int16_t     yCoord;    
    int16_t     xIndev;    // 触摸屏x轴数据
    int16_t     yIndex;    
    bool        isPressed; // 检测触摸是否被按下
}coord_TypeDef;

enum{
    CMD_GPIO = 0,
    CMD_TMEP,
};

typedef struct _cmt_t_{
    uint32_t    cmdNum;
    uint32_t    cmdVal;
    uint8_t     cmdType;
}cmdTypedef;

bool bsp_touchpad_is_pressed();

void bsp_touchpad_init(void);

void bsp_touchpad_get_xy(int16_t *x, int16_t *y);



#endif