#ifndef __TOUCHPAD_H__
#define __TOUCHPAD_H__
#include "wm_include.h"
#include "lcd.h"
#include "../../user_config.h"



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