#include "wm_include.h"
#include "multi_button.h"

#define EVENT_CB(ev)   if(handle->cb[ev])handle->cb[ev]((Button*)handle)
#define BUTTON_TIMER_TIME     (float)HZ/100            // 10ms

static tls_os_timer_t *TICKS_TIMER = NULL;

//button handle list head.
static struct Button* head_handle = NULL;

/**
  * @brief  Initializes the button struct handle.
  * @param  handle: the button handle strcut.
  * @param  pin_level: read the HAL GPIO of the connet button level.
  * @param  active_level: pressed GPIO level.
  * @retval None
  */
void button_init(struct Button* handle, enum tls_io_name gpio_pin, uint8_t active_level)
{
	handle->active_level = active_level;
	if(handle->active_level)
	{
		tls_gpio_cfg(gpio_pin, WM_GPIO_DIR_INPUT, WM_GPIO_ATTR_PULLLOW);
	}
	else
	{
		tls_gpio_cfg(gpio_pin, WM_GPIO_DIR_INPUT, WM_GPIO_ATTR_PULLHIGH);
	}
	memset(handle, 0, sizeof(struct Button));
	handle->event = (uint8_t)NONE_PRESS;
	handle->button_gpio = gpio_pin;
	handle->hal_button_Level = tls_gpio_read;
	handle->button_level = handle->hal_button_Level(gpio_pin);

	if (NULL == TICKS_TIMER)
	{
		tls_os_timer_create(&TICKS_TIMER,button_ticks,NULL,BUTTON_TIMER_TIME,TRUE,NULL);  // Create button ticks timer
	}
	tls_os_timer_start(TICKS_TIMER);

}

/**
  * @brief  Attach the button event callback function.
  * @param  handle: the button handle strcut.
  * @param  event: trigger event type.
  * @param  cb: callback function.
  * @retval None
  */
void button_attach(struct Button* handle, PressEvent event, BtnCallback cb)
{
	handle->cb[event] = cb;
}

/**
  * @brief  Inquire the button event happen.
  * @param  handle: the button handle strcut.
  * @retval button event.
  */
PressEvent get_button_event(struct Button* handle)
{
	return (PressEvent)(handle->event);
}

/**
  * @brief  Button driver core function, driver state machine.
  * @param  handle: the button handle strcut.
  * @retval None
  */
void button_handler(struct Button* handle)
{
	uint8_t read_gpio_level = handle->hal_button_Level(handle->button_gpio);

	//ticks counter working..
	if((handle->state) > 0) handle->ticks++;

	/*------------button debounce handle---------------*/
	if(read_gpio_level != handle->button_level) { //not equal to prev one
		//continue read 3 times same new level change
		if(++(handle->debounce_cnt) >= DEBOUNCE_TICKS) {
			handle->button_level = read_gpio_level;
			handle->debounce_cnt = 0;
		}
	} else { //leved not change ,counter reset.
		handle->debounce_cnt = 0;
	}

	/*-----------------State machine-------------------*/
	switch (handle->state) {
	case 0:
		if(handle->button_level == handle->active_level) {	//start press down
			handle->event = (uint8_t)PRESS_DOWN;
			EVENT_CB(PRESS_DOWN);
			handle->ticks = 0;
			handle->repeat = 1;
			handle->state = 1;
		} else {
			handle->event = (uint8_t)NONE_PRESS;
		}
		break;

	case 1:
		if(handle->button_level != handle->active_level) { //released press up
			handle->event = (uint8_t)PRESS_UP;
			EVENT_CB(PRESS_UP);
			handle->ticks = 0;
			handle->state = 2;

		} else if(handle->ticks > LONG_TICKS) {
			handle->event = (uint8_t)LONG_PRESS_START;
			EVENT_CB(LONG_PRESS_START);
			handle->state = 5;
		}
		break;

	case 2:
		if(handle->button_level == handle->active_level) { //press down again
			handle->event = (uint8_t)PRESS_DOWN;
			EVENT_CB(PRESS_DOWN);
			handle->repeat++;
			EVENT_CB(PRESS_REPEAT); // repeat hit
			handle->ticks = 0;
			handle->state = 3;
		} else if(handle->ticks > SHORT_TICKS) { //released timeout
			if(handle->repeat == 1) {
				handle->event = (uint8_t)SINGLE_CLICK;
				EVENT_CB(SINGLE_CLICK);
			} else if(handle->repeat == 2) {
				handle->event = (uint8_t)DOUBLE_CLICK;
				EVENT_CB(DOUBLE_CLICK); // repeat hit
			} else if(handle->repeat == 3) {
				handle->event = (uint8_t)TRIPLE_CLICK;
				EVENT_CB(TRIPLE_CLICK); // repeat hit
			}
			handle->state = 0;
		}
		break;

	case 3:
		if(handle->button_level != handle->active_level) { //released press up
			handle->event = (uint8_t)PRESS_UP;
			EVENT_CB(PRESS_UP);
			if(handle->ticks < SHORT_TICKS) {
				handle->ticks = 0;
				handle->state = 2; //repeat press
			} else {
				handle->state = 0;
			}
		}
		break;

	case 5:
		if(handle->button_level == handle->active_level) {
			//continue hold trigger
			handle->event = (uint8_t)LONG_PRESS_HOLD;
			EVENT_CB(LONG_PRESS_HOLD);

		} else { //releasd
			handle->event = (uint8_t)PRESS_UP;
			EVENT_CB(PRESS_UP);
			handle->state = 0; //reset
		}
		break;
	}
}

/**
  * @brief  Start the button work, add the handle into work list.
  * @param  handle: target handle strcut.
  * @retval 0: succeed. -1: already exist.
  */
int button_start(struct Button* handle)
{
	struct Button* target = head_handle;
	while(target) {
		if(target == handle) return -1;	//already exist.
		target = target->next;
	}
	handle->next = head_handle;
	head_handle = handle;
	return 0;
}

/**
  * @brief  Stop the button work, remove the handle off work list.
  * @param  handle: target handle strcut.
  * @retval None
  */
void button_stop(struct Button* handle)
{
	struct Button** curr;
	for(curr = &head_handle; *curr; ) {
		struct Button* entry = *curr;
		if (entry == handle) {
			*curr = entry->next;
//			free(entry);
		} else
			curr = &entry->next;
	}
}

/**
  * @brief  background ticks, timer repeat invoking interval 5ms.
  * @param  None.
  * @retval None
  */
void button_ticks(void *ptmr, void *parg)
{
	// printf("hello\r\n");
	struct Button* target;
	for(target=head_handle; target; target=target->next) {
		button_handler(target);
	}
}

// example
#if 0

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

#endif