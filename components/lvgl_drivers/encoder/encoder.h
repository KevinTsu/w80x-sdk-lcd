#ifndef __ENCODER_H__
#define __ENCODER_H__
#include "wm_include.h"
#include "../../user_config.h"



void bsp_encoder_init();
bool get_encoder_btn_state();
int32_t get_encoder_diff();
void set_encoder_diff(int32_t val);



#endif