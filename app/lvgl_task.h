#ifndef __LVGL_TASK_H__
#define __LVGL_TASK_H__

#define LVGL_TASK_STACK_SIZE 2048 // 8k
#define LVGL_TASK_PRORITY 55

void lvgl_task_create(void);

#endif
