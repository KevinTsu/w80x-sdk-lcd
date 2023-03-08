# Example
```
struct Button btn1;
struct Button btn2;

void BTN1_LONG_PRESS_START_Handler(void* btn)
{
	//do something...
	printf("%s\r\n",__func__);
}

void BTN2_LONG_PRESS_START_Handler(void* btn)
{
	//do something...
	printf("%s\r\n",__func__);
}

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

void BTN2_DOUBLE_Click_Handler(void* btn)
{
	//do something...
	printf("%s\r\n",__func__);
}
void BTN2_TRIPLE_Click_Handler(void* btn)
{
	//do something...
	printf("%s\r\n",__func__);
}
void UserMain(void)
{
	extern int tls_get_mac_addr(u8 *mac);
	extern int tls_get_bt_mac_addr(u8 *mac);
	extern u32 tls_mem_get_avail_heapsize(void);
	u8 mac[6]={0};
	u8 btmac[6]={0};
	tls_get_mac_addr(mac);
	tls_get_bt_mac_addr(btmac);
	printf("             \\\\\\|///\n");
	printf("           \\\\  .-.-  //\n");
	printf(".           (  .@.@  )  \n");
	printf("+-------oOOo-----(_)-----oOOo---------+\n\n");
	printf(" ---> Compile "__DATE__", "__TIME__"\n");
	printf(" ---> %s.c\r\n",__func__);
	printf(" ---> GetHeap:%d\n",tls_mem_get_avail_heapsize());
	printf(" ---> BLE  MAC:%02X%02X%02X%02X%02X%02X\n",btmac[0],btmac[1],btmac[2],btmac[3],btmac[4],btmac[5]);
	printf(" ---> WIFI MAC:%02X%02X%02X%02X%02X%02X\n",mac[0],mac[1],mac[2],mac[3],mac[4],mac[5]);
	printf("\n+---------------------Oooo------------+\n");

	printf("\n user task \n");

	button_init(&btn1, WM_IO_PA_00, 0);
	button_init(&btn2, WM_IO_PB_05, 0);

	button_attach(&btn1, LONG_PRESS_START, BTN1_LONG_PRESS_START_Handler);
	button_attach(&btn2, LONG_PRESS_START, BTN2_LONG_PRESS_START_Handler);
	button_attach(&btn1, SINGLE_CLICK, BTN1_SINGLE_Click_Handler);
	button_attach(&btn2, SINGLE_CLICK, BTN2_SINGLE_Click_Handler);
	button_attach(&btn2, DOUBLE_CLICK, BTN2_DOUBLE_Click_Handler);
	button_attach(&btn2, TRIPLE_CLICK, BTN2_TRIPLE_Click_Handler);

	button_start(&btn1);
	button_start(&btn2);

#if DEMO_CONSOLE
	CreateDemoTask();
#endif
//用户自己的task
}

```