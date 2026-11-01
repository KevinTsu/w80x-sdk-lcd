#ifndef __CANVAS_EYES__
#define __CANVAS_EYES__

#define IMG_W 120
#define IMG_H 120

// 图片旋转
void generate_rotated_array(lv_img_dsc_t src_img, void *dst_buf, float angle_deg);

// pupil init.
void pupil_anim_init(void);
void change_pupil_position(int16_t x, int16_t y);
// void pupil_pos_update_cb(void);
// eyelid init.
void eyelid_anim_init(void);

#endif
