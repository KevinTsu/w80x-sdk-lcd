#ifndef __LCD_TASK_H__
#define __LCD_TASK_H__
#include "user_config.h"

#define LCD_TASK_STACK_SIZE 1024
#define LCD_TASK_PRORITY 55



void lcd_task_create(void);

int lcd_dma_queue_write(u16 x_start, u16 y_start, u16 x_end, u16 y_end, u32* data, u32 len);


#endif
