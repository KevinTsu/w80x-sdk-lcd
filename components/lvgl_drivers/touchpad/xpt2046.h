#ifndef __XPT2046_H__
#define __XPT2046_H__
#include "wm_include.h"


void xpt2046_gpio_init();

bool xpt2046_read_coord(uint16_t *x, uint16_t *y);

#endif