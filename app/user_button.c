
#include "wm_include.h"
#include "button/multi_button.h"

struct Button btn1;
struct Button btn2;
struct Button btn3;
struct Button btn4;
struct Button btn5;

void BTN1_SINGLE_Click_Handler(void* btn)
{
	//do something...
	printf("%s\r\n",__func__);
}

void BTN2_SINGLE_Click_Handler(void* btn)
{
	//do something...
	printf("%s\r\n",__func__);
}

void BTN3_SINGLE_Click_Handler(void* btn)
{
	//do something...
	printf("%s\r\n",__func__);
}

void BTN4_SINGLE_Click_Handler(void* btn)
{
	//do something...
	printf("%s\r\n",__func__);
}

void BTN5_SINGLE_Click_Handler(void* btn)
{
	//do something...
	printf("%s\r\n",__func__);
}

void user_button_init(void)
{
	printf("%s\r\n",__func__);
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
