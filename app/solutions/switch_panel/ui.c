// SquareLine LVGL GENERATED FILE
// EDITOR VERSION: SquareLine Studio 1.2.1
// LVGL VERSION: 8.3.4
// PROJECT: SquareLine_Project

#include "ui.h"
#include "ui_helpers.h"

///////////////////// VARIABLES ////////////////////
void ui_event_Screen1(lv_event_t * e);
lv_obj_t * ui_Screen1;
lv_obj_t * ui_Image1;
lv_obj_t * ui_PanelWeather;
lv_obj_t * ui_LabelWeather;
lv_obj_t * ui_LabelTime;
lv_obj_t * ui_LabelWeek;
lv_obj_t * ui_LabelDate;
lv_obj_t * ui_ImageWeatherSun;
lv_obj_t * ui_Spinner;
lv_obj_t * ui_ImageSpinnerWiFi;
void ui_event_Screen2(lv_event_t * e);
lv_obj_t * ui_Screen2;
lv_obj_t * ui_Panel1;
lv_obj_t * ui_ImageClock;
lv_obj_t * ui_LabelTime1;
lv_obj_t * ui_LabelClock;
void ui_event_Panel2(lv_event_t * e);
lv_obj_t * ui_Panel2;
lv_obj_t * ui_ImageSpeed;
lv_obj_t * ui_LabelSpeed;
lv_obj_t * ui_LabelTemerature;
lv_obj_t * ui_Panel3;
lv_obj_t * ui_ImageSnow;
lv_obj_t * ui_LabelMode;
lv_obj_t * ui_Panel4;
lv_obj_t * ui_LabelWind;
lv_obj_t * ui_LabelUnknown;
lv_obj_t * ui_Panel5;
lv_obj_t * ui_ImageSnow2;
lv_obj_t * ui_LabelWiFi;
void ui_event_Screen3(lv_event_t * e);
lv_obj_t * ui_Screen3;
lv_obj_t * ui_PanelTimer;
lv_obj_t * ui_SwitchTimer;
lv_obj_t * ui_LabelTimer;
lv_obj_t * ui_LabelTimer2;
lv_obj_t * ui_PanelClock;
lv_obj_t * ui_LabelWind1;
lv_obj_t * ui_LabelClock2;
lv_obj_t * ui_PanelUnit;
lv_obj_t * ui_SwitchUnit;
lv_obj_t * ui_LabelUnit;
lv_obj_t * ui_PanelNetwork;
lv_obj_t * ui_ImageNetwork;
lv_obj_t * ui_LabelNetwork;
lv_obj_t * ui_PanelSleep;
lv_obj_t * ui_LabelSleep;
lv_obj_t * ui_SwitchSleepTime;
lv_obj_t * ui_LabelSleepTime;
lv_obj_t * ui_PanelColor;

///////////////////// TEST LVGL SETTINGS ////////////////////
#if LV_COLOR_DEPTH != 16
    #error "LV_COLOR_DEPTH should be 16bit to match SquareLine Studio's settings"
#endif
#if LV_COLOR_16_SWAP !=1
    #error "LV_COLOR_16_SWAP should be 1 to match SquareLine Studio's settings"
#endif

///////////////////// ANIMATIONS ////////////////////

///////////////////// FUNCTIONS ////////////////////
void ui_event_Screen1(lv_event_t * e)
{
    lv_event_code_t event_code = lv_event_get_code(e);
    lv_obj_t * target = lv_event_get_target(e);
    if(event_code == LV_EVENT_GESTURE &&  lv_indev_get_gesture_dir(lv_indev_get_act()) == LV_DIR_LEFT) {
        _ui_screen_change(ui_Screen2, LV_SCR_LOAD_ANIM_FADE_ON, 0, 0);
    }
    if(event_code == LV_EVENT_GESTURE &&  lv_indev_get_gesture_dir(lv_indev_get_act()) == LV_DIR_RIGHT) {
        _ui_screen_change(ui_Screen3, LV_SCR_LOAD_ANIM_FADE_ON, 0, 0);
    }
}
void ui_event_Screen2(lv_event_t * e)
{
    lv_event_code_t event_code = lv_event_get_code(e);
    lv_obj_t * target = lv_event_get_target(e);
    if(event_code == LV_EVENT_GESTURE &&  lv_indev_get_gesture_dir(lv_indev_get_act()) == LV_DIR_LEFT) {
        _ui_screen_change(ui_Screen3, LV_SCR_LOAD_ANIM_FADE_ON, 0, 0);
    }
    if(event_code == LV_EVENT_GESTURE &&  lv_indev_get_gesture_dir(lv_indev_get_act()) == LV_DIR_RIGHT) {
        _ui_screen_change(ui_Screen1, LV_SCR_LOAD_ANIM_FADE_ON, 0, 0);
    }
}
void ui_event_Panel2(lv_event_t * e)
{
    lv_event_code_t event_code = lv_event_get_code(e);
    lv_obj_t * target = lv_event_get_target(e);
    if(event_code == LV_EVENT_CLICKED) {
        _ui_image_set_property(ui_ImageSpeed, _UI_IMAGE_PROPERTY_IMAGE, & ui_img_icn_wind_speed_1_png);
    }
}
void ui_event_Screen3(lv_event_t * e)
{
    lv_event_code_t event_code = lv_event_get_code(e);
    lv_obj_t * target = lv_event_get_target(e);
    if(event_code == LV_EVENT_GESTURE &&  lv_indev_get_gesture_dir(lv_indev_get_act()) == LV_DIR_LEFT) {
        _ui_screen_change(ui_Screen1, LV_SCR_LOAD_ANIM_FADE_ON, 0, 0);
    }
    if(event_code == LV_EVENT_GESTURE &&  lv_indev_get_gesture_dir(lv_indev_get_act()) == LV_DIR_RIGHT) {
        _ui_screen_change(ui_Screen2, LV_SCR_LOAD_ANIM_FADE_ON, 0, 0);
    }
}

///////////////////// SCREENS ////////////////////
void ui_Screen1_screen_init(void)
{
    ui_Screen1 = lv_obj_create(NULL);
    lv_obj_clear_flag(ui_Screen1, LV_OBJ_FLAG_SCROLLABLE);      /// Flags
    lv_obj_set_style_bg_img_src(ui_Screen1, &ui_img_320x240_bg_png, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_Image1 = lv_img_create(ui_Screen1);
    lv_img_set_src(ui_Image1, &ui_img_icn_wifi_png);
    lv_obj_set_width(ui_Image1, LV_SIZE_CONTENT);   /// 14
    lv_obj_set_height(ui_Image1, LV_SIZE_CONTENT);    /// 13
    lv_obj_set_x(ui_Image1, -5);
    lv_obj_set_y(ui_Image1, 5);
    lv_obj_set_align(ui_Image1, LV_ALIGN_TOP_RIGHT);
    lv_obj_add_flag(ui_Image1, LV_OBJ_FLAG_ADV_HITTEST);     /// Flags
    lv_obj_clear_flag(ui_Image1, LV_OBJ_FLAG_SCROLLABLE);      /// Flags

    ui_PanelWeather = lv_obj_create(ui_Screen1);
    lv_obj_set_width(ui_PanelWeather, 160);
    lv_obj_set_height(ui_PanelWeather, 130);
    lv_obj_set_x(ui_PanelWeather, -49);
    lv_obj_set_y(ui_PanelWeather, -30);
    lv_obj_set_align(ui_PanelWeather, LV_ALIGN_CENTER);
    lv_obj_clear_flag(ui_PanelWeather, LV_OBJ_FLAG_SCROLLABLE);      /// Flags
    lv_obj_set_style_bg_color(ui_PanelWeather, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(ui_PanelWeather, 25, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_width(ui_PanelWeather, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_LabelWeather = lv_label_create(ui_PanelWeather);
    lv_obj_set_width(ui_LabelWeather, LV_SIZE_CONTENT);   /// 1
    lv_obj_set_height(ui_LabelWeather, LV_SIZE_CONTENT);    /// 1
    lv_obj_set_x(ui_LabelWeather, -10);
    lv_obj_set_y(ui_LabelWeather, -39);
    lv_obj_set_align(ui_LabelWeather, LV_ALIGN_CENTER);
    lv_label_set_text(ui_LabelWeather, "Sun");
    lv_obj_set_style_text_color(ui_LabelWeather, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(ui_LabelWeather, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui_LabelWeather, &lv_font_montserrat_14, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_LabelTime = lv_label_create(ui_PanelWeather);
    lv_obj_set_width(ui_LabelTime, LV_SIZE_CONTENT);   /// 1
    lv_obj_set_height(ui_LabelTime, LV_SIZE_CONTENT);    /// 1
    lv_obj_set_x(ui_LabelTime, -1);
    lv_obj_set_y(ui_LabelTime, 8);
    lv_obj_set_align(ui_LabelTime, LV_ALIGN_CENTER);
    lv_label_set_text(ui_LabelTime, "08:00");
    lv_obj_set_style_text_color(ui_LabelTime, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(ui_LabelTime, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui_LabelTime, &lv_font_montserrat_48, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_LabelWeek = lv_label_create(ui_PanelWeather);
    lv_obj_set_width(ui_LabelWeek, LV_SIZE_CONTENT);   /// 1
    lv_obj_set_height(ui_LabelWeek, LV_SIZE_CONTENT);    /// 1
    lv_obj_set_x(ui_LabelWeek, -53);
    lv_obj_set_y(ui_LabelWeek, 46);
    lv_obj_set_align(ui_LabelWeek, LV_ALIGN_CENTER);
    lv_label_set_text(ui_LabelWeek, "Fri");
    lv_obj_set_style_text_color(ui_LabelWeek, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(ui_LabelWeek, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui_LabelWeek, &lv_font_montserrat_14, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_LabelDate = lv_label_create(ui_PanelWeather);
    lv_obj_set_width(ui_LabelDate, LV_SIZE_CONTENT);   /// 1
    lv_obj_set_height(ui_LabelDate, LV_SIZE_CONTENT);    /// 1
    lv_obj_set_x(ui_LabelDate, 7);
    lv_obj_set_y(ui_LabelDate, 46);
    lv_obj_set_align(ui_LabelDate, LV_ALIGN_CENTER);
    lv_label_set_text(ui_LabelDate, "2023/03/10");
    lv_obj_set_style_text_color(ui_LabelDate, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(ui_LabelDate, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui_LabelDate, &lv_font_montserrat_14, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_ImageWeatherSun = lv_img_create(ui_PanelWeather);
    lv_img_set_src(ui_ImageWeatherSun, &ui_img_weather_sun_png);
    lv_obj_set_width(ui_ImageWeatherSun, LV_SIZE_CONTENT);   /// 37
    lv_obj_set_height(ui_ImageWeatherSun, LV_SIZE_CONTENT);    /// 30
    lv_obj_set_x(ui_ImageWeatherSun, -52);
    lv_obj_set_y(ui_ImageWeatherSun, -39);
    lv_obj_set_align(ui_ImageWeatherSun, LV_ALIGN_CENTER);
    lv_obj_add_flag(ui_ImageWeatherSun, LV_OBJ_FLAG_ADV_HITTEST);     /// Flags
    lv_obj_clear_flag(ui_ImageWeatherSun, LV_OBJ_FLAG_SCROLLABLE);      /// Flags

    ui_Spinner = lv_spinner_create(ui_Screen1, 1000, 90);
    lv_obj_set_width(ui_Spinner, 80);
    lv_obj_set_height(ui_Spinner, 80);
    lv_obj_set_x(ui_Spinner, -5);
    lv_obj_set_y(ui_Spinner, -5);
    lv_obj_set_align(ui_Spinner, LV_ALIGN_BOTTOM_RIGHT);
    lv_obj_add_flag(ui_Spinner, LV_OBJ_FLAG_HIDDEN);     /// Flags
    lv_obj_clear_flag(ui_Spinner, LV_OBJ_FLAG_CLICKABLE);      /// Flags
    lv_obj_set_style_arc_color(ui_Spinner, lv_color_hex(0xD0F0F3), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_arc_opa(ui_Spinner, 100, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_arc_width(ui_Spinner, 10, LV_PART_MAIN | LV_STATE_DEFAULT);

    lv_obj_set_style_arc_color(ui_Spinner, lv_color_hex(0x00EAFF), LV_PART_INDICATOR | LV_STATE_DEFAULT);
    lv_obj_set_style_arc_opa(ui_Spinner, 255, LV_PART_INDICATOR | LV_STATE_DEFAULT);
    lv_obj_set_style_arc_width(ui_Spinner, 10, LV_PART_INDICATOR | LV_STATE_DEFAULT);

    ui_ImageSpinnerWiFi = lv_img_create(ui_Spinner);
    lv_img_set_src(ui_ImageSpinnerWiFi, &ui_img_icn_wifi_28x22_png);
    lv_obj_set_width(ui_ImageSpinnerWiFi, LV_SIZE_CONTENT);   /// 28
    lv_obj_set_height(ui_ImageSpinnerWiFi, LV_SIZE_CONTENT);    /// 22
    lv_obj_set_align(ui_ImageSpinnerWiFi, LV_ALIGN_CENTER);
    lv_obj_add_flag(ui_ImageSpinnerWiFi, LV_OBJ_FLAG_ADV_HITTEST);     /// Flags
    lv_obj_clear_flag(ui_ImageSpinnerWiFi, LV_OBJ_FLAG_SCROLLABLE);      /// Flags

    lv_obj_add_event_cb(ui_Screen1, ui_event_Screen1, LV_EVENT_ALL, NULL);

}
void ui_Screen2_screen_init(void)
{
    ui_Screen2 = lv_obj_create(NULL);
    lv_obj_clear_flag(ui_Screen2, LV_OBJ_FLAG_SCROLLABLE);      /// Flags
    lv_obj_set_style_bg_img_src(ui_Screen2, &ui_img_320x240_bg_png, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_Panel1 = lv_obj_create(ui_Screen2);
    lv_obj_set_width(ui_Panel1, 153);
    lv_obj_set_height(ui_Panel1, 100);
    lv_obj_set_x(ui_Panel1, 5);
    lv_obj_set_y(ui_Panel1, 5);
    lv_obj_clear_flag(ui_Panel1, LV_OBJ_FLAG_SCROLLABLE);      /// Flags
    lv_obj_set_style_radius(ui_Panel1, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(ui_Panel1, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(ui_Panel1, 25, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_width(ui_Panel1, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_outline_width(ui_Panel1, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_outline_pad(ui_Panel1, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_ImageClock = lv_img_create(ui_Panel1);
    lv_img_set_src(ui_ImageClock, &ui_img_icn_clock_png);
    lv_obj_set_width(ui_ImageClock, LV_SIZE_CONTENT);   /// 37
    lv_obj_set_height(ui_ImageClock, LV_SIZE_CONTENT);    /// 30
    lv_obj_set_align(ui_ImageClock, LV_ALIGN_BOTTOM_LEFT);
    lv_obj_add_flag(ui_ImageClock, LV_OBJ_FLAG_ADV_HITTEST);     /// Flags
    lv_obj_clear_flag(ui_ImageClock, LV_OBJ_FLAG_SCROLLABLE);      /// Flags

    ui_LabelTime1 = lv_label_create(ui_Panel1);
    lv_obj_set_width(ui_LabelTime1, LV_SIZE_CONTENT);   /// 1
    lv_obj_set_height(ui_LabelTime1, LV_SIZE_CONTENT);    /// 1
    lv_obj_set_align(ui_LabelTime1, LV_ALIGN_TOP_MID);
    lv_label_set_text(ui_LabelTime1, "18 : 10");
    lv_obj_set_style_text_color(ui_LabelTime1, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(ui_LabelTime1, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui_LabelTime1, &lv_font_montserrat_32, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_LabelClock = lv_label_create(ui_Panel1);
    lv_obj_set_width(ui_LabelClock, LV_SIZE_CONTENT);   /// 1
    lv_obj_set_height(ui_LabelClock, LV_SIZE_CONTENT);    /// 1
    lv_obj_set_align(ui_LabelClock, LV_ALIGN_BOTTOM_RIGHT);
    lv_label_set_text(ui_LabelClock, "00 : 00");
    lv_obj_set_style_text_color(ui_LabelClock, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(ui_LabelClock, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui_LabelClock, &lv_font_montserrat_24, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_Panel2 = lv_obj_create(ui_Screen2);
    lv_obj_set_width(ui_Panel2, 153);
    lv_obj_set_height(ui_Panel2, 100);
    lv_obj_set_x(ui_Panel2, -5);
    lv_obj_set_y(ui_Panel2, 5);
    lv_obj_set_align(ui_Panel2, LV_ALIGN_TOP_RIGHT);
    lv_obj_clear_flag(ui_Panel2, LV_OBJ_FLAG_SCROLLABLE);      /// Flags
    lv_obj_set_style_radius(ui_Panel2, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(ui_Panel2, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(ui_Panel2, 25, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_width(ui_Panel2, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_outline_width(ui_Panel2, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_outline_pad(ui_Panel2, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_ImageSpeed = lv_img_create(ui_Panel2);
    lv_img_set_src(ui_ImageSpeed, &ui_img_icn_wind_speed_3_png);
    lv_obj_set_width(ui_ImageSpeed, LV_SIZE_CONTENT);   /// 37
    lv_obj_set_height(ui_ImageSpeed, LV_SIZE_CONTENT);    /// 30
    lv_obj_set_x(ui_ImageSpeed, -5);
    lv_obj_set_y(ui_ImageSpeed, -3);
    lv_obj_set_align(ui_ImageSpeed, LV_ALIGN_BOTTOM_RIGHT);
    lv_obj_add_flag(ui_ImageSpeed, LV_OBJ_FLAG_ADV_HITTEST);     /// Flags
    lv_obj_clear_flag(ui_ImageSpeed, LV_OBJ_FLAG_SCROLLABLE);      /// Flags

    ui_LabelSpeed = lv_label_create(ui_Panel2);
    lv_obj_set_width(ui_LabelSpeed, LV_SIZE_CONTENT);   /// 1
    lv_obj_set_height(ui_LabelSpeed, LV_SIZE_CONTENT);    /// 1
    lv_obj_set_x(ui_LabelSpeed, 5);
    lv_obj_set_y(ui_LabelSpeed, 0);
    lv_obj_set_align(ui_LabelSpeed, LV_ALIGN_BOTTOM_LEFT);
    lv_label_set_text(ui_LabelSpeed, "speed");
    lv_obj_set_style_text_color(ui_LabelSpeed, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(ui_LabelSpeed, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui_LabelSpeed, &lv_font_montserrat_14, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_LabelTemerature = lv_label_create(ui_Panel2);
    lv_obj_set_width(ui_LabelTemerature, LV_SIZE_CONTENT);   /// 1
    lv_obj_set_height(ui_LabelTemerature, LV_SIZE_CONTENT);    /// 1
    lv_label_set_text(ui_LabelTemerature, "22°");
    lv_obj_set_style_text_color(ui_LabelTemerature, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(ui_LabelTemerature, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui_LabelTemerature, &lv_font_montserrat_48, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_Panel3 = lv_obj_create(ui_Screen2);
    lv_obj_set_width(ui_Panel3, 100);
    lv_obj_set_height(ui_Panel3, 125);
    lv_obj_set_x(ui_Panel3, 5);
    lv_obj_set_y(ui_Panel3, -5);
    lv_obj_set_align(ui_Panel3, LV_ALIGN_BOTTOM_LEFT);
    lv_obj_clear_flag(ui_Panel3, LV_OBJ_FLAG_SCROLLABLE);      /// Flags
    lv_obj_set_style_radius(ui_Panel3, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(ui_Panel3, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(ui_Panel3, 25, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_width(ui_Panel3, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_outline_width(ui_Panel3, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_outline_pad(ui_Panel3, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_ImageSnow = lv_img_create(ui_Panel3);
    lv_img_set_src(ui_ImageSnow, &ui_img_icn_snow_png);
    lv_obj_set_width(ui_ImageSnow, LV_SIZE_CONTENT);   /// 37
    lv_obj_set_height(ui_ImageSnow, LV_SIZE_CONTENT);    /// 30
    lv_obj_set_align(ui_ImageSnow, LV_ALIGN_CENTER);
    lv_obj_add_flag(ui_ImageSnow, LV_OBJ_FLAG_ADV_HITTEST);     /// Flags
    lv_obj_clear_flag(ui_ImageSnow, LV_OBJ_FLAG_SCROLLABLE);      /// Flags

    ui_LabelMode = lv_label_create(ui_Panel3);
    lv_obj_set_width(ui_LabelMode, LV_SIZE_CONTENT);   /// 1
    lv_obj_set_height(ui_LabelMode, LV_SIZE_CONTENT);    /// 1
    lv_label_set_text(ui_LabelMode, "Mode");
    lv_obj_set_style_text_color(ui_LabelMode, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(ui_LabelMode, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui_LabelMode, &lv_font_montserrat_14, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_Panel4 = lv_obj_create(ui_Screen2);
    lv_obj_set_width(ui_Panel4, 100);
    lv_obj_set_height(ui_Panel4, 125);
    lv_obj_set_x(ui_Panel4, 0);
    lv_obj_set_y(ui_Panel4, -5);
    lv_obj_set_align(ui_Panel4, LV_ALIGN_BOTTOM_MID);
    lv_obj_clear_flag(ui_Panel4, LV_OBJ_FLAG_SCROLLABLE);      /// Flags
    lv_obj_set_style_radius(ui_Panel4, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(ui_Panel4, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(ui_Panel4, 25, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_width(ui_Panel4, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_outline_width(ui_Panel4, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_outline_pad(ui_Panel4, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_LabelWind = lv_label_create(ui_Panel4);
    lv_obj_set_width(ui_LabelWind, LV_SIZE_CONTENT);   /// 1
    lv_obj_set_height(ui_LabelWind, LV_SIZE_CONTENT);    /// 1
    lv_label_set_text(ui_LabelWind, "Wind");
    lv_obj_set_style_text_color(ui_LabelWind, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(ui_LabelWind, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui_LabelWind, &lv_font_montserrat_14, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_LabelUnknown = lv_label_create(ui_Panel4);
    lv_obj_set_width(ui_LabelUnknown, LV_SIZE_CONTENT);   /// 1
    lv_obj_set_height(ui_LabelUnknown, LV_SIZE_CONTENT);    /// 1
    lv_obj_set_align(ui_LabelUnknown, LV_ALIGN_CENTER);
    lv_label_set_text(ui_LabelUnknown, "--");
    lv_obj_set_style_text_color(ui_LabelUnknown, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(ui_LabelUnknown, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui_LabelUnknown, &lv_font_montserrat_26, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_Panel5 = lv_obj_create(ui_Screen2);
    lv_obj_set_width(ui_Panel5, 100);
    lv_obj_set_height(ui_Panel5, 125);
    lv_obj_set_x(ui_Panel5, -5);
    lv_obj_set_y(ui_Panel5, -5);
    lv_obj_set_align(ui_Panel5, LV_ALIGN_BOTTOM_RIGHT);
    lv_obj_clear_flag(ui_Panel5, LV_OBJ_FLAG_SCROLLABLE);      /// Flags
    lv_obj_set_style_radius(ui_Panel5, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(ui_Panel5, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(ui_Panel5, 25, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_width(ui_Panel5, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_outline_width(ui_Panel5, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_outline_pad(ui_Panel5, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_ImageSnow2 = lv_img_create(ui_Panel5);
    lv_img_set_src(ui_ImageSnow2, &ui_img_icn_wifi_28x22_png);
    lv_obj_set_width(ui_ImageSnow2, LV_SIZE_CONTENT);   /// 37
    lv_obj_set_height(ui_ImageSnow2, LV_SIZE_CONTENT);    /// 30
    lv_obj_set_align(ui_ImageSnow2, LV_ALIGN_CENTER);
    lv_obj_add_flag(ui_ImageSnow2, LV_OBJ_FLAG_ADV_HITTEST);     /// Flags
    lv_obj_clear_flag(ui_ImageSnow2, LV_OBJ_FLAG_SCROLLABLE);      /// Flags

    ui_LabelWiFi = lv_label_create(ui_Panel5);
    lv_obj_set_width(ui_LabelWiFi, LV_SIZE_CONTENT);   /// 1
    lv_obj_set_height(ui_LabelWiFi, LV_SIZE_CONTENT);    /// 1
    lv_label_set_text(ui_LabelWiFi, "WiFi");
    lv_obj_set_style_text_color(ui_LabelWiFi, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(ui_LabelWiFi, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui_LabelWiFi, &lv_font_montserrat_14, LV_PART_MAIN | LV_STATE_DEFAULT);

    lv_obj_add_event_cb(ui_Panel2, ui_event_Panel2, LV_EVENT_ALL, NULL);
    lv_obj_add_event_cb(ui_Screen2, ui_event_Screen2, LV_EVENT_ALL, NULL);

}
void ui_Screen3_screen_init(void)
{
    ui_Screen3 = lv_obj_create(NULL);
    lv_obj_clear_flag(ui_Screen3, LV_OBJ_FLAG_SCROLLABLE);      /// Flags
    lv_obj_set_style_bg_img_src(ui_Screen3, &ui_img_320x240_bg_png, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_PanelTimer = lv_obj_create(ui_Screen3);
    lv_obj_set_width(ui_PanelTimer, 120);
    lv_obj_set_height(ui_PanelTimer, 90);
    lv_obj_set_x(ui_PanelTimer, 5);
    lv_obj_set_y(ui_PanelTimer, 5);
    lv_obj_clear_flag(ui_PanelTimer, LV_OBJ_FLAG_SCROLLABLE);      /// Flags
    lv_obj_set_style_radius(ui_PanelTimer, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(ui_PanelTimer, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(ui_PanelTimer, 25, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_width(ui_PanelTimer, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_outline_width(ui_PanelTimer, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_outline_pad(ui_PanelTimer, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_SwitchTimer = lv_switch_create(ui_PanelTimer);
    lv_obj_set_width(ui_SwitchTimer, 42);
    lv_obj_set_height(ui_SwitchTimer, 21);
    lv_obj_set_x(ui_SwitchTimer, 0);
    lv_obj_set_y(ui_SwitchTimer, -3);
    lv_obj_set_align(ui_SwitchTimer, LV_ALIGN_TOP_RIGHT);

    lv_obj_set_style_bg_color(ui_SwitchTimer, lv_color_hex(0x5D5D5D), LV_PART_INDICATOR | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(ui_SwitchTimer, 128, LV_PART_INDICATOR | LV_STATE_DEFAULT);

    ui_LabelTimer = lv_label_create(ui_PanelTimer);
    lv_obj_set_width(ui_LabelTimer, LV_SIZE_CONTENT);   /// 1
    lv_obj_set_height(ui_LabelTimer, LV_SIZE_CONTENT);    /// 1
    lv_label_set_text(ui_LabelTimer, "Timer");
    lv_obj_set_style_text_color(ui_LabelTimer, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(ui_LabelTimer, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui_LabelTimer, &lv_font_montserrat_14, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_LabelTimer2 = lv_label_create(ui_PanelTimer);
    lv_obj_set_width(ui_LabelTimer2, LV_SIZE_CONTENT);   /// 1
    lv_obj_set_height(ui_LabelTimer2, LV_SIZE_CONTENT);    /// 1
    lv_obj_set_align(ui_LabelTimer2, LV_ALIGN_BOTTOM_MID);
    lv_label_set_text(ui_LabelTimer2, "00 : 30");
    lv_obj_set_style_text_color(ui_LabelTimer2, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(ui_LabelTimer2, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui_LabelTimer2, &lv_font_montserrat_26, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_PanelClock = lv_obj_create(ui_Screen3);
    lv_obj_set_width(ui_PanelClock, 120);
    lv_obj_set_height(ui_PanelClock, 90);
    lv_obj_set_x(ui_PanelClock, -70);
    lv_obj_set_y(ui_PanelClock, 5);
    lv_obj_set_align(ui_PanelClock, LV_ALIGN_TOP_RIGHT);
    lv_obj_clear_flag(ui_PanelClock, LV_OBJ_FLAG_SCROLLABLE);      /// Flags
    lv_obj_set_style_radius(ui_PanelClock, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(ui_PanelClock, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(ui_PanelClock, 25, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_width(ui_PanelClock, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_outline_width(ui_PanelClock, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_outline_pad(ui_PanelClock, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_LabelWind1 = lv_label_create(ui_PanelClock);
    lv_obj_set_width(ui_LabelWind1, LV_SIZE_CONTENT);   /// 1
    lv_obj_set_height(ui_LabelWind1, LV_SIZE_CONTENT);    /// 1
    lv_label_set_text(ui_LabelWind1, "Clock");
    lv_obj_set_style_text_color(ui_LabelWind1, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(ui_LabelWind1, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui_LabelWind1, &lv_font_montserrat_14, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_LabelClock2 = lv_label_create(ui_PanelClock);
    lv_obj_set_width(ui_LabelClock2, LV_SIZE_CONTENT);   /// 1
    lv_obj_set_height(ui_LabelClock2, LV_SIZE_CONTENT);    /// 1
    lv_obj_set_align(ui_LabelClock2, LV_ALIGN_BOTTOM_MID);
    lv_label_set_text(ui_LabelClock2, "16 : 30");
    lv_obj_set_style_text_color(ui_LabelClock2, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(ui_LabelClock2, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui_LabelClock2, &lv_font_montserrat_26, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_PanelUnit = lv_obj_create(ui_Screen3);
    lv_obj_set_width(ui_PanelUnit, 120);
    lv_obj_set_height(ui_PanelUnit, 90);
    lv_obj_set_x(ui_PanelUnit, 5);
    lv_obj_set_y(ui_PanelUnit, 25);
    lv_obj_set_align(ui_PanelUnit, LV_ALIGN_LEFT_MID);
    lv_obj_clear_flag(ui_PanelUnit, LV_OBJ_FLAG_SCROLLABLE);      /// Flags
    lv_obj_set_style_radius(ui_PanelUnit, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(ui_PanelUnit, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(ui_PanelUnit, 25, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_width(ui_PanelUnit, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_outline_width(ui_PanelUnit, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_outline_pad(ui_PanelUnit, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_SwitchUnit = lv_switch_create(ui_PanelUnit);
    lv_obj_set_width(ui_SwitchUnit, 42);
    lv_obj_set_height(ui_SwitchUnit, 21);
    lv_obj_set_x(ui_SwitchUnit, 0);
    lv_obj_set_y(ui_SwitchUnit, 5);
    lv_obj_set_align(ui_SwitchUnit, LV_ALIGN_CENTER);

    lv_obj_set_style_bg_color(ui_SwitchUnit, lv_color_hex(0x5D5D5D), LV_PART_INDICATOR | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(ui_SwitchUnit, 128, LV_PART_INDICATOR | LV_STATE_DEFAULT);

    ui_LabelUnit = lv_label_create(ui_PanelUnit);
    lv_obj_set_width(ui_LabelUnit, LV_SIZE_CONTENT);   /// 1
    lv_obj_set_height(ui_LabelUnit, LV_SIZE_CONTENT);    /// 1
    lv_label_set_text(ui_LabelUnit, "F/°C");
    lv_obj_set_style_text_color(ui_LabelUnit, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(ui_LabelUnit, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui_LabelUnit, &lv_font_montserrat_14, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_PanelNetwork = lv_obj_create(ui_Screen3);
    lv_obj_set_width(ui_PanelNetwork, 120);
    lv_obj_set_height(ui_PanelNetwork, 90);
    lv_obj_set_x(ui_PanelNetwork, -70);
    lv_obj_set_y(ui_PanelNetwork, 25);
    lv_obj_set_align(ui_PanelNetwork, LV_ALIGN_RIGHT_MID);
    lv_obj_clear_flag(ui_PanelNetwork, LV_OBJ_FLAG_SCROLLABLE);      /// Flags
    lv_obj_set_style_radius(ui_PanelNetwork, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(ui_PanelNetwork, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(ui_PanelNetwork, 25, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_width(ui_PanelNetwork, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_outline_width(ui_PanelNetwork, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_outline_pad(ui_PanelNetwork, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_ImageNetwork = lv_img_create(ui_PanelNetwork);
    lv_img_set_src(ui_ImageNetwork, &ui_img_icn_wifi_28x22_png);
    lv_obj_set_width(ui_ImageNetwork, LV_SIZE_CONTENT);   /// 37
    lv_obj_set_height(ui_ImageNetwork, LV_SIZE_CONTENT);    /// 30
    lv_obj_set_x(ui_ImageNetwork, 0);
    lv_obj_set_y(ui_ImageNetwork, 5);
    lv_obj_set_align(ui_ImageNetwork, LV_ALIGN_CENTER);
    lv_obj_add_flag(ui_ImageNetwork, LV_OBJ_FLAG_ADV_HITTEST);     /// Flags
    lv_obj_clear_flag(ui_ImageNetwork, LV_OBJ_FLAG_SCROLLABLE);      /// Flags

    ui_LabelNetwork = lv_label_create(ui_PanelNetwork);
    lv_obj_set_width(ui_LabelNetwork, LV_SIZE_CONTENT);   /// 1
    lv_obj_set_height(ui_LabelNetwork, LV_SIZE_CONTENT);    /// 1
    lv_label_set_text(ui_LabelNetwork, "Network");
    lv_obj_set_style_text_color(ui_LabelNetwork, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(ui_LabelNetwork, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui_LabelNetwork, &lv_font_montserrat_14, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_PanelSleep = lv_obj_create(ui_Screen3);
    lv_obj_set_width(ui_PanelSleep, 245);
    lv_obj_set_height(ui_PanelSleep, 40);
    lv_obj_set_x(ui_PanelSleep, 5);
    lv_obj_set_y(ui_PanelSleep, -5);
    lv_obj_set_align(ui_PanelSleep, LV_ALIGN_BOTTOM_LEFT);
    lv_obj_clear_flag(ui_PanelSleep, LV_OBJ_FLAG_SCROLLABLE);      /// Flags
    lv_obj_set_style_radius(ui_PanelSleep, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(ui_PanelSleep, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(ui_PanelSleep, 25, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_width(ui_PanelSleep, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_outline_width(ui_PanelSleep, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_outline_pad(ui_PanelSleep, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_LabelSleep = lv_label_create(ui_PanelSleep);
    lv_obj_set_width(ui_LabelSleep, LV_SIZE_CONTENT);   /// 1
    lv_obj_set_height(ui_LabelSleep, LV_SIZE_CONTENT);    /// 1
    lv_label_set_text(ui_LabelSleep, "Sleep");
    lv_obj_set_style_text_color(ui_LabelSleep, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(ui_LabelSleep, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui_LabelSleep, &lv_font_montserrat_14, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_SwitchSleepTime = lv_switch_create(ui_PanelSleep);
    lv_obj_set_width(ui_SwitchSleepTime, 42);
    lv_obj_set_height(ui_SwitchSleepTime, 21);
    lv_obj_set_x(ui_SwitchSleepTime, 0);
    lv_obj_set_y(ui_SwitchSleepTime, -3);
    lv_obj_set_align(ui_SwitchSleepTime, LV_ALIGN_TOP_RIGHT);

    lv_obj_set_style_bg_color(ui_SwitchSleepTime, lv_color_hex(0x5D5D5D), LV_PART_INDICATOR | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(ui_SwitchSleepTime, 128, LV_PART_INDICATOR | LV_STATE_DEFAULT);

    ui_LabelSleepTime = lv_label_create(ui_PanelSleep);
    lv_obj_set_width(ui_LabelSleepTime, LV_SIZE_CONTENT);   /// 1
    lv_obj_set_height(ui_LabelSleepTime, LV_SIZE_CONTENT);    /// 1
    lv_obj_set_align(ui_LabelSleepTime, LV_ALIGN_TOP_MID);
    lv_label_set_text(ui_LabelSleepTime, "30");
    lv_obj_set_style_text_color(ui_LabelSleepTime, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(ui_LabelSleepTime, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(ui_LabelSleepTime, &lv_font_montserrat_14, LV_PART_MAIN | LV_STATE_DEFAULT);

    ui_PanelColor = lv_obj_create(ui_Screen3);
    lv_obj_set_width(ui_PanelColor, 60);
    lv_obj_set_height(ui_PanelColor, 230);
    lv_obj_set_x(ui_PanelColor, -5);
    lv_obj_set_y(ui_PanelColor, -5);
    lv_obj_set_align(ui_PanelColor, LV_ALIGN_BOTTOM_RIGHT);
    lv_obj_clear_flag(ui_PanelColor, LV_OBJ_FLAG_SCROLLABLE);      /// Flags
    lv_obj_set_style_radius(ui_PanelColor, 3, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(ui_PanelColor, lv_color_hex(0x64F802), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(ui_PanelColor, 245, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_grad_color(ui_PanelColor, lv_color_hex(0x029FF8), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_main_stop(ui_PanelColor, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_grad_stop(ui_PanelColor, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_grad_dir(ui_PanelColor, LV_GRAD_DIR_VER, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_width(ui_PanelColor, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    lv_obj_add_event_cb(ui_Screen3, ui_event_Screen3, LV_EVENT_ALL, NULL);

}

void ui_init(void)
{
    lv_disp_t * dispp = lv_disp_get_default();
    lv_theme_t * theme = lv_theme_default_init(dispp, lv_palette_main(LV_PALETTE_BLUE), lv_palette_main(LV_PALETTE_RED),
                                               false, LV_FONT_DEFAULT);
    lv_disp_set_theme(dispp, theme);
    ui_Screen1_screen_init();
    ui_Screen2_screen_init();
    ui_Screen3_screen_init();
    lv_disp_load_scr(ui_Screen1);
}
