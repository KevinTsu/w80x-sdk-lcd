#include "wm_include.h"
#include "lvgl_task.h"
#include "lv_port_tick.h"
#include "lvgl.h"
#include "lv_port_disp.h"
#include "lv_port_indev.h"
#include "../lvgl/demos/lv_demos.h"
#include "solutions/switch_panel/ui.h"


static OS_STK TaskStk[LVGL_TASK_STACK_SIZE/4];



static void row_gap_anim(void * obj, int32_t v)
{
    lv_obj_set_style_pad_row(obj, v, 0);
}

static void column_gap_anim(void * obj, int32_t v)
{
    lv_obj_set_style_pad_column(obj, v, 0);
}

/**
 * Demonstrate the effect of column and row gap style properties
 */

void lv_example_flex_5(void)
{
    lv_obj_t * cont = lv_obj_create(lv_scr_act());
    lv_obj_set_size(cont, BSP_LCD_X_PIXELS, BSP_LCD_Y_PIXELS);
    lv_obj_center(cont);
    lv_obj_set_flex_flow(cont, LV_FLEX_FLOW_ROW_WRAP);

    uint32_t i;
    for(i = 0; i < 9; i++) {
        lv_obj_t * obj = lv_obj_create(cont);
        lv_obj_set_size(obj, 70, LV_SIZE_CONTENT);

        lv_obj_t * label = lv_label_create(obj);
        // lv_label_set_text_fmt(label, "%"LV_PRIu32, i);
        lv_obj_center(label);
    }

    lv_anim_t a;
    lv_anim_init(&a);
    lv_anim_set_var(&a, cont);
    lv_anim_set_values(&a, 0, 10);
    lv_anim_set_repeat_count(&a, LV_ANIM_REPEAT_INFINITE);

    lv_anim_set_exec_cb(&a, row_gap_anim);
    lv_anim_set_time(&a, 500);
    lv_anim_set_playback_time(&a, 500);
    lv_anim_start(&a);

    lv_anim_set_exec_cb(&a, column_gap_anim);
    lv_anim_set_time(&a, 3000);
    lv_anim_set_playback_time(&a, 3000);
    lv_anim_start(&a);
}

static void btn_event_cb(lv_event_t *e)
{
    lv_event_code_t code = lv_event_get_code(e);
    lv_obj_t *btn = lv_event_get_target(e);

    if(code == LV_EVENT_CLICKED)
    {
        static uint8_t cnt = 0;
        cnt++;

        lv_obj_t *label = lv_obj_get_child(btn,0);
        lv_label_set_text_fmt(label, "Butten: %d", cnt);
    }
}


// 在main函数中调用 才能出现效果
void lv_example_get_started_1(void)
{
    lv_obj_t * btn = lv_btn_create(lv_scr_act());
    lv_obj_set_pos(btn, 10,10);
    lv_obj_set_size(btn, 120,50);
    lv_obj_add_event_cb(btn, btn_event_cb, LV_EVENT_ALL, NULL);

    lv_obj_t *label = lv_label_create(btn);
    lv_label_set_text(label, "Button");
    lv_obj_center(label);
}
 
// static void on_benchmark_finished(void)
// {
//     LV_LOG("On benchmark finished");
// }

static void lvgl_task_start(void *data)
{
    lv_init();
    lv_create_tick();
    lv_port_disp_init();

    lv_port_indev_init();
    

    LV_LOG("Running LVGL Benchmark...");
    LV_LOG("Please stand by...");
    LV_LOG("NOTE: You will NOT see anything until the end.");

    // disp_disable_update();
    
    // lv_demo_benchmark_set_finished_cb(&on_benchmark_finished);
    // lv_demo_benchmark_set_max_speed(true);
    // lv_demo_benchmark();

    // lv_demo_benchmark_run_scene(1);      // run scene no 31

    // lv_demo_widgets();                
    lv_demo_keypad_encoder();     
    // lv_demo_music();           
    // lv_demo_stress();            
    // lv_example_flex_5();
    // lv_example_get_started_1();

    // lv_example_meter_1();
    // lv_example_meter_2();
    // ui_init();

    // u32 tick = 0;
    while(1) {

        lv_task_handler();
        tls_os_time_delay(HZ/100);
        // tick++;
        // if(tick%100 == 0)
        // {
        //     printf("---> keeplive\n");
        // }
    }
}

void lvgl_task_create(void)
{
    tls_os_task_create(NULL, 
                      "lvgl",
                       lvgl_task_start,
                       NULL,
                       (void *)TaskStk,          /* task's stack start address */
                       LVGL_TASK_STACK_SIZE, /* task's stack size, unit:byte */
                       LVGL_TASK_PRORITY,
                       0);

}