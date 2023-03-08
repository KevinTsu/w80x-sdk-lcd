#ifndef __TOUCHPAD_H__
#define __TOUCHPAD_H__
#include "wm_include.h"

#define TOUCH_TASK_STACK_SIZE 1024
#define TOUCH_TASK_PRORITY 6



#if 0
#define TIRQ    WM_IO_PB_01
#define TCLK    WM_IO_PB_02
#define TCS     WM_IO_PB_04
#define TDIN    WM_IO_PB_05
#define TDOU    WM_IO_PB_03
#else
#define TCLK    WM_IO_PA_07
#define TCS     WM_IO_PA_06
#define TDIN    WM_IO_PA_05
#define TDOU    WM_IO_PA_04
#define TIRQ    WM_IO_PA_03
// #define TIRQ    WM_IO_PB_13
// #define TCLK    WM_IO_PB_14
// #define TCS     WM_IO_PB_15
// #define TDIN    WM_IO_PB_16
// #define TDOU    WM_IO_PB_17
#endif

#define ESP_INTR_FLAG_DEFAULT 0
#define CMD_RDX 0X90
#define CMD_RDY 0XD0

typedef struct _coord_t_{
    float       xRate;  //x轴比例系数
    float       yRate;
    int16_t     xOffset;//触摸屏与显示屏x轴偏移
    int16_t     yOffset;
    int16_t     xCoord; //x轴坐标
    int16_t     yCoord; //y轴坐标
    int16_t     xIndev; //触摸屏x轴数据
    int16_t     yIndex; //触摸屏y轴数据
    bool        isPressed;//检测触摸是否被按下
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