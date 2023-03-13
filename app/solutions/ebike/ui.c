#include "lvgl.h"
#include "ui.h"

static lv_obj_t * screen_mater1;
static lv_obj_t * meter;
static lv_obj_t * speed;
static lv_obj_t * arc;

static void set_value(void * indic, int32_t v)
{
    lv_meter_set_indicator_value(meter, indic, v);
}

static void set_value_speed(void * indic, int32_t v)
{
    lv_meter_set_indicator_end_value(meter, indic, v);
    lv_label_set_text_fmt(speed, "%d", v);
    lv_arc_set_value(arc, v);
}


/**
 * A simple meter
 */
void lv_example_meter_1()
{
    extern const lv_img_dsc_t ui_img_meter_bg_png;

    // 默认风格
    static lv_style_t style;
    lv_style_init(&style);
    lv_style_set_bg_color(&style, lv_color_hex3(0x0000));   
    lv_obj_add_style(lv_scr_act(), &style, LV_STATE_DEFAULT);

    // 创建主屏幕
    screen_mater1 = lv_img_create(lv_scr_act());
    lv_obj_center(screen_mater1);
    lv_obj_set_size(screen_mater1, 480, 320);
    lv_img_set_src(screen_mater1, &ui_img_meter_bg_png);
    lv_obj_align(screen_mater1, LV_ALIGN_BOTTOM_MID, 0, 0);



    // 创建仪表盘
    meter = lv_meter_create(screen_mater1);
    lv_obj_set_size(meter, 320, 320);
    lv_obj_align(meter, LV_ALIGN_TOP_LEFT, 1, 0);
    // 移除默认样式
    lv_obj_remove_style(meter, NULL, LV_PART_INDICATOR);

    // 新样式透明
    static lv_style_t meter_style;
    lv_style_init(&meter_style);
    lv_style_set_bg_opa(&meter_style, LV_OPA_TRANSP);
    lv_obj_add_style(meter, &meter_style, LV_STATE_DEFAULT);


    /*Create a white label, set its text and align it to the center*/
    speed = lv_label_create(meter);
    lv_label_set_text(speed, "100");
    lv_obj_set_style_text_color(speed, lv_color_hex3(0xffff), LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(speed, &lv_font_montserrat_42, 0);
    lv_obj_align(speed, LV_ALIGN_CENTER, 0, 0);

    // extern const lv_img_dsc_t ui_img_icn_bike_png;
    // lv_obj_t * ui_ICN_Driving = lv_img_create(meter);
    // lv_img_set_src(ui_ICN_Driving, &ui_img_icn_bike_png);
    // lv_obj_align(ui_ICN_Driving, LV_ALIGN_BOTTOM_MID, 0, -10);


    lv_obj_t * units = lv_label_create(meter);
    lv_label_set_text(units, "Km/h");
    lv_obj_set_style_text_color(units, lv_palette_main(LV_PALETTE_GREY), LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(units, &lv_font_montserrat_38, 0);
    lv_obj_align(units, LV_ALIGN_CENTER, 0, 50);

    // lv_obj_t * mileage = lv_label_create(meter);   
    // lv_label_set_text_fmt(mileage, "%dKm", 1234);
    // lv_obj_set_style_text_color(mileage, lv_color_hex(0x32C5FF), LV_STATE_DEFAULT);
    // lv_obj_set_style_text_font(mileage, &lv_font_montserrat_16, 0);
    // lv_obj_align(mileage, LV_ALIGN_BOTTOM_MID, 0, 10);

    /*Add a scale first*/
    lv_meter_scale_t * scale = lv_meter_add_scale(meter);

    lv_meter_set_scale_ticks(meter, scale, 11, 0, 10, lv_color_hex3(0xf800));
    // lv_meter_set_scale_major_ticks(meter, scale, 1, 0, 10, lv_color_hex3(0xf800), 15);
    lv_meter_set_scale_range(meter, scale, 0, 100, 0, 0);


    /*Add a needle line indicator*/
    extern const lv_img_dsc_t lv_img_needle2;
    lv_meter_indicator_t * indic = lv_meter_add_needle_img(meter, scale, &lv_img_needle2, -95, 0);


    // // /*Add a three arc indicator*/
    // lv_meter_indicator_t * indic1 = lv_meter_add_arc(meter, scale, 30, lv_palette_main(LV_PALETTE_BLUE), -10);

    // static lv_style_t indic1_style;
    // lv_style_init(&indic1_style);
    // lv_style_set_bg_opa(&indic1_style, LV_OPA_10);
    // lv_obj_add_style(indic1, &indic1_style, LV_STATE_DEFAULT);

  /*Create an Arc*/

    arc = lv_arc_create(meter);
    lv_obj_set_size(arc, 278, 278);
    lv_obj_remove_style(arc, NULL, LV_PART_KNOB);   /*Be sure the knob is not displayed*/
    // lv_obj_clear_flag(arc, LV_OBJ_FLAG_CLICKABLE);  /*To not allow adjusting by click*/
    lv_obj_set_style_arc_opa(arc, LV_OPA_30, LV_PART_INDICATOR);                     // 设置圆弧前景透明度
    lv_obj_set_style_arc_rounded(arc, false, LV_PART_INDICATOR);                     // 设置圆弧前景末端点
    lv_obj_set_style_arc_width(arc, 44, LV_PART_INDICATOR | LV_STATE_DEFAULT);       // 设置圆弧前景宽度

    lv_obj_set_style_arc_opa(arc, LV_OPA_TRANSP, LV_PART_MAIN | LV_STATE_DEFAULT);   // 设置圆弧背景景透明度


    static lv_style_t style_indic;
    lv_style_init(&style_indic);
    lv_style_set_bg_opa(&style_indic, LV_OPA_COVER);
    lv_style_set_bg_color(&style_indic, lv_palette_main(LV_PALETTE_RED));
    lv_style_set_bg_grad_color(&style_indic, lv_palette_main(LV_PALETTE_BLUE));
    lv_style_set_bg_grad_dir(&style_indic, LV_GRAD_DIR_VER);
    lv_obj_add_style(arc, &style_indic, LV_PART_INDICATOR | LV_STATE_DEFAULT);

    // lv_obj_set_style_arc_color(obj1, lv_color_hex(0xff0000), LV_PART_INDICATOR);

    lv_arc_set_bg_angles(arc, 120, 60);
    lv_arc_set_angles(arc, 120, 60); // 前景角度
    lv_obj_center(arc);

    lv_arc_set_range(arc, 0, 100);
    // lv_arc_set_value(arc, 90);




    /*Create an animation to set the value*/
    lv_anim_t a;
    lv_anim_init(&a);
    lv_anim_set_exec_cb(&a, set_value_speed);
    lv_anim_set_values(&a, 0, 100);
    lv_anim_set_repeat_delay(&a, 100);
    lv_anim_set_playback_delay(&a, 100);
    lv_anim_set_repeat_count(&a, LV_ANIM_REPEAT_INFINITE);

    lv_anim_set_time(&a, 2000);
    lv_anim_set_playback_time(&a, 500);
    lv_anim_set_var(&a, indic);
    lv_anim_start(&a);

    // lv_anim_set_time(&a, 2000);
    // lv_anim_set_playback_time(&a, 500);
    // lv_anim_set_var(&a, indic1);
    // lv_anim_start(&a);
}


/**
 * A meter with multiple arcs
 */
void lv_example_meter_2(void)
{
    meter = lv_meter_create(lv_scr_act());
    lv_obj_center(meter);
    lv_obj_set_size(meter, 300, 300);

    extern const lv_img_dsc_t ui_img_icn_bike_png;
    lv_obj_t * ui_ICN_Driving = lv_img_create(meter);
    lv_img_set_src(ui_ICN_Driving, &ui_img_icn_bike_png);
    lv_obj_align(ui_ICN_Driving, LV_ALIGN_BOTTOM_MID, 0, -10);


    extern const lv_img_dsc_t lv_img_arrows;
    lv_obj_t * left = lv_img_create(lv_scr_act());
    lv_img_set_src(left, &lv_img_arrows);
    lv_img_set_angle(left, 900);
    lv_obj_align(left, LV_ALIGN_TOP_LEFT, 10, 0);

    lv_obj_t * right = lv_img_create(lv_scr_act());
    lv_img_set_src(right, &lv_img_arrows);
    lv_img_set_angle(right, 2700);
    lv_obj_align(right, LV_ALIGN_TOP_RIGHT, -10, 0);
    // lv_obj_t * left = lv_btn_create(lv_scr_act());
    // lv_obj_set_size(left, 48, 48);
    // lv_obj_align(left, LV_ALIGN_TOP_LEFT, 20, 20);

    // extern const lv_img_dsc_t lv_img_arrows;
    // lv_imgbtn_set_src(left, LV_IMGBTN_STATE_RELEASED, NULL, &lv_img_arrows, NULL);
    // lv_imgbtn_set_src(left, LV_IMGBTN_STATE_CHECKED_RELEASED, NULL, &lv_img_arrows, NULL);
    // lv_obj_add_flag(left, LV_OBJ_FLAG_CHECKABLE);

    // static lv_style_t style_btn;
    // lv_style_init(&style_btn);
    // lv_style_set_img_recolor_opa(&style_btn, LV_OPA_50);
    // lv_style_set_img_recolor(&style_btn, lv_color_black());
    // lv_style_set_transform_width(&style_btn, 0);
    // lv_obj_add_style(left, &style_btn, LV_STATE_DEFAULT);

    // extern const lv_img_dsc_t lv_img_arrows;
    // lv_imgbtn_set_src(left, LV_IMGBTN_STATE_RELEASED,  &lv_img_arrows, NULL, NULL);
    // lv_imgbtn_set_src(left, LV_IMGBTN_STATE_PRESSED,  &lv_img_arrows, NULL, NULL);

    // lv_obj_set_style_bg_opa(left, LV_OPA_0, LV_PART_MAIN);
    
    // extern const lv_img_dsc_t lv_img_arrows;
    // lv_imgbtn_set_src(left, LV_IMGBTN_STATE_RELEASED, NULL, NULL, NULL);
    // lv_imgbtn_set_src(left, LV_IMGBTN_STATE_PRESSED, &lv_img_arrows);




    /*Create a white label, set its text and align it to the center*/
    speed = lv_label_create(meter);
    lv_label_set_text(speed, "100");
    lv_obj_set_style_text_color(speed, lv_color_hex3(0xffff), LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(speed, &lv_font_montserrat_42, 0);
    lv_obj_align(speed, LV_ALIGN_CENTER, 0, 15);

    lv_obj_t * units = lv_label_create(meter);
    lv_label_set_text(units, "Km/h");
    lv_obj_set_style_text_color(units, lv_palette_main(LV_PALETTE_GREY), LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(units, &lv_font_montserrat_38, 0);
    lv_obj_align(units, LV_ALIGN_CENTER, 0, 50);

    lv_obj_t * mileage = lv_label_create(meter);   
    lv_label_set_text_fmt(mileage, "%dKm", 1234);
    lv_obj_set_style_text_color(mileage, lv_color_hex(0x32C5FF), LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(mileage, &lv_font_montserrat_16, 0);
    lv_obj_align(mileage, LV_ALIGN_BOTTOM_MID, 0, 10);

    /*Remove the circle from the middle*/
    lv_obj_remove_style(meter, NULL, LV_PART_INDICATOR);

    extern const lv_img_dsc_t lv_img_meter_bg;
    lv_obj_set_style_bg_img_src(meter, &lv_img_meter_bg, LV_STATE_DEFAULT);

    static lv_style_t style;
    lv_style_init(&style);
    lv_style_set_bg_color(&style, lv_color_hex3(0x0000));   
    lv_obj_add_style(lv_scr_act(), &style, LV_STATE_DEFAULT);
    lv_obj_add_style(meter, &style, LV_STATE_DEFAULT);
    // lv_obj_set_style_outline_color(meter, lv_color_black(), LV_PART_INDICATOR);
    // lv_obj_set_style_outline_width(meter, 3, LV_PART_INDICATOR);
    /*Add a scale first*/
    lv_meter_scale_t * scale = lv_meter_add_scale(meter);
    lv_meter_set_scale_ticks(meter, scale, 11, 0, 10, lv_color_hex3(0xf800));
    lv_meter_set_scale_major_ticks(meter, scale, 1, 0, 10, lv_color_hex3(0xf800), 15);
    lv_meter_set_scale_range(meter, scale, 0, 100, 309, 114);


    /*Add a needle line indicator*/
    // lv_meter_indicator_t * indic = lv_meter_add_needle_line(meter, scale, 1, lv_palette_main(LV_PALETTE_BLUE), -50);
    extern const lv_img_dsc_t lv_img_needle;
    lv_meter_indicator_t * indic = lv_meter_add_needle_img(meter, scale, &lv_img_needle, -59, 5);




    // /*Add a three arc indicator*/
    lv_meter_indicator_t * indic1 = lv_meter_add_arc(meter, scale, 30, lv_palette_main(LV_PALETTE_BLUE), -10);
    // lv_meter_indicator_t * indic2 = lv_meter_add_arc(meter, scale, 10, lv_palette_main(LV_PALETTE_GREEN), -10);
    // lv_meter_indicator_t * indic3 = lv_meter_add_arc(meter, scale, 10, lv_palette_main(LV_PALETTE_BLUE), -20);



    // /*Create an animation to set the value*/
    lv_anim_t a;
    lv_anim_init(&a);
    lv_anim_set_exec_cb(&a, set_value_speed);
    lv_anim_set_values(&a, 0, 100);
    lv_anim_set_repeat_delay(&a, 100);
    lv_anim_set_playback_delay(&a, 100);
    lv_anim_set_repeat_count(&a, LV_ANIM_REPEAT_INFINITE);

    lv_anim_set_time(&a, 2000);
    lv_anim_set_playback_time(&a, 500);
    lv_anim_set_var(&a, indic);
    lv_anim_start(&a);

    lv_anim_set_time(&a, 2000);
    lv_anim_set_playback_time(&a, 500);
    lv_anim_set_var(&a, indic1);
    lv_anim_start(&a);

    // lv_anim_set_time(&a, 1000);
    // lv_anim_set_playback_time(&a, 1000);
    // lv_anim_set_var(&a, indic2);
    // lv_anim_start(&a);

    // lv_anim_set_time(&a, 1000);
    // lv_anim_set_playback_time(&a, 2000);
    // lv_anim_set_var(&a, indic3);
    // lv_anim_start(&a);
}