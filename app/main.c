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

void UserMain(void)
{
	tls_sys_clk_set(CPU_CLK_80M);
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

#if DEMO_CONSOLE
	CreateDemoTask();
#endif
//用户自己的task
}

