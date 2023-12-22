/***************************************************************************** 
* 
* File Name : main.c
* 
* Description: main 
* 
* Copyright (c) 2014 Winner Micro Electronic Design Co., Ltd. 
* All rights reserved. 
* 
* Author : dave
* 
* Date : 2014-6-14
*****************************************************************************/ 
#include "wm_include.h"
#include "wm_cpu.h"
#include "lcd.h"
#include "picture.h"
#include "wm_timer.h"
#include "psram.h"
#include "wm_flash.h"
#include "lvgl.h"
#include "lvgl_task.h"

/**
*   DEMO 0  LCD lvgl、触摸、编码器、软键盘、lvgl组件测试
*   DEMO 1  LCD 颜色填充测试
*   DEMO 2  LCD 图片转c数组测试
*   DEMO 3  spi flash 读写测试
*   DEMO 4  psram 测试
*   DEMO 5  LCD 串口工具将图片转二进制文件，通过xmodem下载到spi flash显示
*/
#define RUN_DEMO_NUM  (0)

#if (RUN_DEMO_NUM == 5)
#include "button/multi_button.h"
#include "xmodem/xmodem.h"
#include "spiflash.h"
bool xmodem_flag = 0;
struct Button btn1;
void BTN1_LONG_PRESS_START_Handler(void* btn)
{
	//do something...
	printf("%s\r\n",__func__);
    xmodem_flag = 1;
    tls_os_time_delay(HZ/2);
    xmodem_download();
}
#endif

void UserMain(void)
{
	tls_sys_clk_set(CPU_CLK_240M);
	// extern int tls_get_mac_addr(u8 *mac);
	// extern int tls_get_bt_mac_addr(u8 *mac);
	extern u32 tls_mem_get_avail_heapsize(void);
    extern char FirmWareVer[4];
	// u8 wifi_mac[6] = {0};
	// u8 ble_mac[6] = {0};
	// tls_get_mac_addr(wifi_mac);
	// tls_get_bt_mac_addr(ble_mac);
	printf("             \\\\\\|///\n");
	printf("           \\\\  .-.-  //\n");
	printf(".           (  .@.@  )  \n");
	printf("+-------oOOo-----(_)-----oOOo---------+\n\n");
	printf(" ---> Compile "__DATE__", "__TIME__"\n");
	printf(" ---> %s\r\n",__func__);
    printf(" ---> SDK: %c%x.%02x.%02x\n", FirmWareVer[0], FirmWareVer[1], FirmWareVer[2], FirmWareVer[3]);
	printf(" ---> GetHeap:%d\n",tls_mem_get_avail_heapsize());
	// printf(" ---> BLE  MAC:%02X%02X%02X%02X%02X%02X\n",ble_mac[0],ble_mac[1],ble_mac[2],ble_mac[3],ble_mac[4],ble_mac[5]);
	// printf(" ---> WIFI MAC:%02X%02X%02X%02X%02X%02X\n",wifi_mac[0],wifi_mac[1],wifi_mac[2],wifi_mac[3],wifi_mac[4],wifi_mac[5]);
	printf("\n+---------------------Oooo------------+\n");
	printf("\n user task \n");
    
    /* 初始化LCD总线 */
    bsp_lcd_init();
#if  (RUN_DEMO_NUM == 0) // 使能lvgl任务
    printf("---> RUN DEMO [%d] LVGL \n", RUN_DEMO_NUM);
    lvgl_task_create();
#elif(RUN_DEMO_NUM == 1) // 颜色填充测试
    printf("---> RUN DEMO [%d] FULL COLORS \n", RUN_DEMO_NUM);
    u8 index = 0;
    u16 buff[]={RED,GREEN,BLUE,BRED,YELLOW,RED,GRAY};
    while(1)
    {
        if(++index>=7)
        {
            index = 0;
        }
        // lcd_clear(RED);
        // lcd_clear(0b1111100000000000);
        lcd_clear(buff[index]);
        tls_os_time_delay(1*HZ);
        
    }
#elif(RUN_DEMO_NUM == 2) // 图片数组测试
    printf("---> RUN DEMO [%d] IMAGE C ARRAY \n", RUN_DEMO_NUM);
    bsp_lcd_init();
    while(1){
        lcd_clear(BLACK);
        lcd_full_picture(320, 480, (u8 *)image_labi_320x480);
        tls_os_time_delay(HZ);
        lcd_full_picture(480, 272, (u8 *)image_bluesky_272x480);
        tls_os_time_delay(HZ);
        lcd_full_picture(240, 320, (u8 *)image_flowers_240x320);
        tls_os_time_delay(HZ);
        lcd_full_picture(48, 48, (u8 *)image_red_48x48);
        tls_os_time_delay(HZ);
    }
#elif(RUN_DEMO_NUM == 3) // spi flash test
    printf("---> RUN DEMO [%d] SPI FLASH TEST \n", RUN_DEMO_NUM);
    u8 buf[64]={0};
    tls_spifls_read(0x1000, buf, 64);
    for(u16 i = 0; i < 64; i++){
        printf("%02X ", buf[i]);
    }
    printf("\n");
    u8 data = buf[0] + 1;
    memset(buf, data, 64);
    tls_spifls_write(0x1000, buf, 64);
    for(u16 i = 0; i < 64; i++){
        printf("%02X ", buf[i]);
    }
    printf("\n");
#elif(RUN_DEMO_NUM == 4) // psram test
    // need components/user_config.h ---> #define USE_PSRAM     1
    printf("---> RUN DEMO [%d] SPI PSRAM \n", RUN_DEMO_NUM);
    user_psram_init();
    char *test = dram_heap_malloc(128);
    strcpy(test,"hello world!!!\r\n");
    printf("%s",test);
    dram_heap_free(test);
#elif(RUN_DEMO_NUM == 5) // xmodem下载图片显示demo

#if TLS_CONFIG_HOSTIF != 1
    #error "SDK/include/wm_config.h ---> TLS_CONFIG_HOSTIF should be CFG_ON. after that 'make lib && make'"
#endif
    printf("---> RUN DEMO [%d] XMODEM TRANSMISSION IMAGE DISPLAY \n", RUN_DEMO_NUM);
    button_init(&btn1, WM_IO_PA_00, 0);
    button_attach(&btn1, LONG_PRESS_START, BTN1_LONG_PRESS_START_Handler);
    button_start(&btn1);
    get_image_list_show();

#endif

#if DEMO_CONSOLE
	CreateDemoTask();
#endif
//用户自己的task
}
