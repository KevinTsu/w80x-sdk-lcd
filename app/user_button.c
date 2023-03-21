
#include "wm_include.h"
#include "button/multi_button.h"
#include "solutions/switch_panel/ui.h" 
#include "solutions/switch_panel/ui_helpers.h" 

struct Button btn1;
struct Button btn2;
struct Button btn3;
struct Button btn4;
struct Button btn5;

u8 static screen_index = 0;
u8 static screen_count = 3;

u8 static temperature = 22;

u8 static img_speed_index = 2;

void BTN1_SINGLE_Click_Handler(void* btn)
{
	printf("%s\r\n",__func__);
    screen_index++;
    if(screen_index >= screen_count)
    {
        screen_index = 0;
    }
    switch (screen_index)
    {
    case 0:
        _ui_screen_change(ui_Screen1, LV_SCR_LOAD_ANIM_FADE_ON, 0, 0);
        break;
    case 1:
        _ui_screen_change(ui_Screen2, LV_SCR_LOAD_ANIM_FADE_ON, 0, 0);
        break;
    case 2:
        _ui_screen_change(ui_Screen3, LV_SCR_LOAD_ANIM_FADE_ON, 0, 0);
        break;   
    default:
        break;
    }
}

void BTN2_SINGLE_Click_Handler(void* btn)
{
	//do something...
	printf("%s\r\n",__func__);
    img_speed_index++;
    if(img_speed_index >= 5)
    {
        img_speed_index = 0;
    }
    switch (img_speed_index)
    {
    case 0:
        _ui_image_set_property(ui_ImageSpeed, _UI_IMAGE_PROPERTY_IMAGE, & ui_img_icn_wind_speed_1_png);
        break;
    case 1:
        _ui_image_set_property(ui_ImageSpeed, _UI_IMAGE_PROPERTY_IMAGE, & ui_img_icn_wind_speed_2_png);
        break;
    case 2:
        _ui_image_set_property(ui_ImageSpeed, _UI_IMAGE_PROPERTY_IMAGE, & ui_img_icn_wind_speed_3_png);
        break;   
    case 3:
        _ui_image_set_property(ui_ImageSpeed, _UI_IMAGE_PROPERTY_IMAGE, & ui_img_icn_wind_speed_4_png);
        break;   
    case 4:
        _ui_image_set_property(ui_ImageSpeed, _UI_IMAGE_PROPERTY_IMAGE, & ui_img_icn_wind_speed_5_png);
        break;   
    default:
        break;
    }

}

void BTN3_SINGLE_Click_Handler(void* btn)
{
	//do something...
	printf("%s\r\n",__func__);
    temperature++;
    char buf[5] = {0};
    sprintf(buf, "%d°", temperature);
    lv_label_set_text(ui_LabelTemerature, buf);
}

void BTN4_SINGLE_Click_Handler(void* btn)
{
	//do something...
	printf("%s\r\n",__func__);
    temperature--;
    char buf[5] = {0};
    sprintf(buf, "%d°", temperature);
    lv_label_set_text(ui_LabelTemerature, buf);
}

void BTN5_SINGLE_Click_Handler(void* btn)
{
	//do something...
	printf("%s\r\n",__func__);
}

void user_button_init(void)
{
	printf("---> %s\r\n",__func__);
    button_init(&btn1, WM_IO_PB_06, 0);
    button_init(&btn2, WM_IO_PB_07, 0);
    button_init(&btn3, WM_IO_PB_08, 0);
    button_init(&btn4, WM_IO_PB_09, 0);
    button_init(&btn5, WM_IO_PB_10, 0);

    button_attach(&btn1, SINGLE_CLICK, BTN1_SINGLE_Click_Handler);
    button_attach(&btn2, SINGLE_CLICK, BTN2_SINGLE_Click_Handler);
    button_attach(&btn3, SINGLE_CLICK, BTN3_SINGLE_Click_Handler);
    button_attach(&btn4, SINGLE_CLICK, BTN4_SINGLE_Click_Handler);
    button_attach(&btn5, SINGLE_CLICK, BTN5_SINGLE_Click_Handler);

    button_start(&btn1);
    button_start(&btn2);
    button_start(&btn3);
    button_start(&btn4);
    button_start(&btn5);
}
