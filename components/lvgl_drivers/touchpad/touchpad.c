#include "touchpad.h"
#include "xpt2046.h"
#include "ft5206.h"
#include "gt911.h"
#include "cst816t.h"

#if USE_TOUCHPAD

#define TOUCH_TASK_PRORITY 56
#define TOUCH_TASK_STACK_SIZE 4096

static OS_STK TouchPadTaskStk[TOUCH_TASK_STACK_SIZE];

extern void delay_us();
coord_TypeDef g_Coord;

static void touchpad_task_create(void);

//============================================================================
// TouchPad 外部接口
//============================================================================
bool bsp_touchpad_is_pressed()
{
    return g_Coord.isPressed;
}

void bsp_touchpad_get_xy(int16_t *x, int16_t *y)
{
    (*x) = g_Coord.xCoord;
    (*y) = g_Coord.yCoord;
}

void bsp_touchpad_init(void)
{
    touchpad_task_create();
}
//============================================================================

bool TP_Update_Coord(void)
{
    bool sta = true;
    uint16_t x = 0;
    uint16_t y = 0;

#if (TOUCHPAD_TYPE == 0) || (TOUCHPAD_TYPE == 1) || (TOUCHPAD_TYPE == 4)
    sta = xpt2046_read_coord(&x, &y);
    if(true == sta){
        g_Coord.xCoord = (int16_t)((x - g_Coord.xOffset)/g_Coord.xRate);
        g_Coord.yCoord = (int16_t)((y - g_Coord.yOffset)/g_Coord.yRate);
        g_Coord.xIndev = x;
        g_Coord.yIndex = y;
    }
#elif (TOUCHPAD_TYPE == 2)
    sta = ft5206_read_coord(&x, &y);
    if(true == sta){
        g_Coord.xCoord = x;
        g_Coord.yCoord = y;
        g_Coord.xIndev = x;
        g_Coord.yIndex = y;
    }
#elif (TOUCHPAD_TYPE == 3)
    sta = gt911_read_coord(&x, &y);
    if(true == sta){
        g_Coord.xCoord = x;
        g_Coord.yCoord = y;
        g_Coord.xIndev = x;
        g_Coord.yIndex = y;
    }
#elif (TOUCHPAD_TYPE == 5)
    u8 touch_points_num = 0;
    sta = cst816t_read_pos(&touch_points_num, &x, &y);
    if(true == sta){
        g_Coord.xCoord = x;
        g_Coord.yCoord = y + g_Coord.yOffset;
        g_Coord.xIndev = x;
        g_Coord.yIndex = y;
        g_Coord.isPressed = 1;
    }
    else{
        g_Coord.isPressed = 0;
    }

    
#endif
    return sta;
}

uint32_t TP_test(void)
{
    while (1)
    {
        TP_Update_Coord();
        printf("---> x:%d y:%d\n", g_Coord.xCoord, g_Coord.yCoord);
        tls_os_time_delay(HZ/10);
    }
}

static void touchpad_task_start(void *data)
{
    memset(&g_Coord, 0, sizeof(coord_TypeDef));

#if   (TOUCHPAD_TYPE == 0)
    xpt2046_gpio_init();
    // 此处应从Flash中读取校准过的数据
    g_Coord.xOffset = 200;  //x 轴偏移200
    g_Coord.yOffset = 280;  //y 轴偏移280
    g_Coord.xRate = 7.71;   //x 轴比例系数7.71
    g_Coord.yRate = 10.94;  //y 轴比例系数10.94
#elif (TOUCHPAD_TYPE == 1)
    xpt2046_gpio_init();
    // 此处应从Flash中读取校准过的数据
    g_Coord.xOffset = 400;  // x轴偏移200
    g_Coord.yOffset = 280;  // y轴偏移280
    g_Coord.xRate = 11;     // x轴比例系数7.71
    g_Coord.yRate = 15.21;  // y轴比例系数10.94
#elif (TOUCHPAD_TYPE == 2)
    // 电容触摸不需要校准
    ft5206_init();
#elif (TOUCHPAD_TYPE == 3)
    // 电容触摸不需要校准
    gt911_init();
#elif (TOUCHPAD_TYPE == 4)
    xpt2046_gpio_init();
    // 此处应从Flash中读取校准过的数据
    g_Coord.xOffset = 400;  // x轴偏移200
    g_Coord.yOffset = 280;  // y轴偏移280
    g_Coord.xRate = 11;     // x轴比例系数7.71
    g_Coord.yRate = 15.21;  // y轴比例系数10.94
#elif (TOUCHPAD_TYPE == 5)
    // 屏幕和触摸偏移20像素
    g_Coord.yOffset = 20;
    cst816t_init();
#endif

    while(1)
    {
#if(TOUCHPAD_TYPE == 3)
        bool sta = 0;

        sta = gt911_scan(0);
        if(sta){
            g_Coord.isPressed = 1;
            TP_Update_Coord();
        }
        else{
            g_Coord.isPressed = 0;
        }
#elif(TOUCHPAD_TYPE == 5)
        TP_Update_Coord();
#else
        if(tls_gpio_read(TIRQ) == 0)
        {
            // printf("---> 0\n");
            g_Coord.isPressed = 1;
            TP_Update_Coord();
        }
        else
        {
            // printf("---> 1\n");
            g_Coord.isPressed = 0;
        }
        // printf("---> x:%d y:%d\n", g_Coord.xCoord, g_Coord.yCoord);
#endif
        tls_os_time_delay(HZ/100);
    }
}

static void touchpad_task_create(void)
{
    tls_os_task_create(NULL, 
                      "touch",
                       touchpad_task_start,
                       NULL,
                       (void *)TouchPadTaskStk,          /* task's stack start address */
                       TOUCH_TASK_STACK_SIZE, /* task's stack size, unit:byte */
                       TOUCH_TASK_PRORITY,
                       0);
}

#endif