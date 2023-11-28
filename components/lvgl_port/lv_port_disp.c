#include "lv_port_disp.h"
#include "../user_config.h"

/* 设置LVGL缓冲区 双缓冲区 */
#if USE_PSRAM
#include "psram.h"
#define LVGL_PORT_BUFF_SIZE (BSP_LCD_X_PIXELS*BSP_LCD_Y_PIXELS/1) // 屏幕分辨率
static lv_color_t *lvgl_draw_buff1 = NULL;
static lv_color_t *lvgl_draw_buff2 = NULL;
#else
/* lvgl缓冲区大小，单位为像素数 */
#define LVGL_PORT_BUFF_SIZE (BSP_LCD_X_PIXELS*BSP_LCD_Y_PIXELS/8) // 1/8屏幕分辨率
static lv_color_t lvgl_draw_buff1[LVGL_PORT_BUFF_SIZE];
static lv_color_t lvgl_draw_buff2[LVGL_PORT_BUFF_SIZE];
#endif

// static u32 run_time = 0;

static void disp_flush(lv_disp_drv_t *disp_drv, const lv_area_t *area, lv_color_t *color_p)
{
    // printf("---> use1 %d ms\n", tls_os_get_time() - run_time);
    // run_time = tls_os_get_time();
    /* 等待上次传输完成 */
    bsp_lcd_draw_rect_wait();
    // printf("---> use2 %d ms\n", tls_os_get_time() - run_time);
    // run_time = tls_os_get_time();
    /* 启动新的传输 */
    bsp_lcd_draw_rect(area->x1,area->y1,area->x2 - area->x1 + 1,area->y2 - area->y1 + 1,(uint8_t *)color_p);
    // printf("---> use3 %d ms\n", tls_os_get_time() - run_time);
    // run_time = tls_os_get_time();
    /* 通知lvgl传输已完成 */
    lv_disp_flush_ready(disp_drv);
    // printf("---> use4 %d ms\n", tls_os_get_time() - run_time);
    // run_time = tls_os_get_time();
}

void lv_port_disp_init()
{
    /* 向lvgl注册缓冲区 */
    static lv_disp_draw_buf_t draw_buf_dsc; //需要全程生命周期，设置为静态变量

#if USE_PSRAM
    lvgl_draw_buff1 = dram_heap_malloc(LVGL_PORT_BUFF_SIZE*2);
    if(lvgl_draw_buff1 == NULL){
        printf("---> malloc lvgl_draw_buff1 err\n");
        return;
    }
    lvgl_draw_buff2 = dram_heap_malloc(LVGL_PORT_BUFF_SIZE*2);
    if(lvgl_draw_buff2 == NULL){
        printf("---> malloc lvgl_draw_buff2 err\n");
        return;
    }
#endif
    /* LVGL内存初始化*/
    lv_disp_draw_buf_init(&draw_buf_dsc, lvgl_draw_buff1, lvgl_draw_buff2, LVGL_PORT_BUFF_SIZE);
    /* 创建并初始化用于在lvgl中注册显示设备的结构 */
    static lv_disp_drv_t disp_drv;
    lv_disp_drv_init(&disp_drv); //使用默认值初始化该结构
    /* 设置屏幕分辨率 */
    disp_drv.hor_res = BSP_LCD_X_PIXELS;
    disp_drv.ver_res = BSP_LCD_Y_PIXELS;
    /* 初始化LCD总线 */
    bsp_lcd_init();
    /* 设置显示矩形函数，用于将矩形缓冲区刷新到屏幕上 */
    disp_drv.flush_cb = disp_flush;
    /* 设置缓冲区 */
    disp_drv.draw_buf = &draw_buf_dsc;
    /* 注册显示设备 */
    lv_disp_drv_register(&disp_drv);
}
