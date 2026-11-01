#include "wm_include.h"
#include "lvgl_task.h"
#include "lv_port_tick.h"
#include "lvgl.h"
#include "lv_port_disp.h"
#include "lv_port_indev.h"
#include "user_config.h"
#include "fatfs.h"
#include "lv_demo/lv_demo.h"
#include "solutions/ui.h"
#include "canvas_eyes.h"

#include <math.h>
#include <stdint.h>
#include <string.h>
#include "lsm6ds3trc.h"

// ==========================================pupil================================================
LV_IMG_DECLARE(pupil1);   // 对应转换生成的变量名

static lv_obj_t *s_pupil_anim;


uint16_t rotated_pixels1[IMG_W * IMG_H];
uint16_t rotated_pixels2[IMG_W * IMG_H];
// uint8_t test[0x10];
uint16_t rotated_pixels3[IMG_W * IMG_H];
uint16_t rotated_pixels4[IMG_W * IMG_H];
// uint16_t rotated_pixels5[IMG_W * IMG_H];

const lv_img_dsc_t rotated_img1 = {
    .header.cf    = LV_IMG_CF_TRUE_COLOR,
    .header.always_zero = 0,
    .header.reserved    = 0,
    .header.w     = IMG_W,
    .header.h     = IMG_H,
    .data_size    = IMG_W * IMG_H * 2,   // 字节数
    .data         = (const uint8_t *)rotated_pixels1,
};
const lv_img_dsc_t rotated_img2 = {
    .header.cf    = LV_IMG_CF_TRUE_COLOR,
    .header.always_zero = 0,
    .header.reserved    = 0,
    .header.w     = IMG_W,
    .header.h     = IMG_H,
    .data_size    = IMG_W * IMG_H * 2,   // 字节数
    .data         = (const uint8_t *)rotated_pixels2,
};
const lv_img_dsc_t rotated_img3 = {
    .header.cf    = LV_IMG_CF_TRUE_COLOR,
    .header.always_zero = 0,
    .header.reserved    = 0,
    .header.w     = IMG_W,
    .header.h     = IMG_H,
    .data_size    = IMG_W * IMG_H * 2,   // 字节数
    .data         = (const uint8_t *)rotated_pixels3,
};
const lv_img_dsc_t rotated_img4 = {
    .header.cf    = LV_IMG_CF_TRUE_COLOR,
    .header.always_zero = 0,
    .header.reserved    = 0,
    .header.w     = IMG_W,
    .header.h     = IMG_H,
    .data_size    = IMG_W * IMG_H * 2,   // 字节数
    .data         = (const uint8_t *)rotated_pixels4,
};
// const lv_img_dsc_t rotated_img5 = {
//     .header.cf    = LV_IMG_CF_TRUE_COLOR,
//     .header.always_zero = 0,
//     .header.reserved    = 0,
//     .header.w     = IMG_W,
//     .header.h     = IMG_H,
//     .data_size    = IMG_W * IMG_H * 2,   // 字节数
//     .data         = (const uint8_t *)rotated_pixels5,
// };

static const void *pupil_frames[] = {
    &pupil1,
    &rotated_img1,
    &rotated_img2,
    &rotated_img3,
    &rotated_img4,
    // &rotated_img5
};

// ==========================================eyelid================================================
static lv_obj_t *s_eyelid_img;
static lv_timer_t *s_eyelid_timer;
static uint8_t s_eyelid_step;
static lv_obj_t *s_eyelid_black;

static lv_timer_t *s_blink_trigger_timer;
static uint32_t s_next_blink_tick;

LV_IMG_DECLARE(eyelid1)
LV_IMG_DECLARE(eyelid2)
LV_IMG_DECLARE(eyelid3)
LV_IMG_DECLARE(eyelid4)

// 播放序列：正向 + 反向
// 0 1 2 3 2 1 0
static const uint8_t eyelid_seq[] = {0, 1, 2, 3, 2, 1, 0};
#define EYELID_SEQ_LEN (sizeof(eyelid_seq) / sizeof(eyelid_seq[0]))

// 每个序列步的持续时长（ms），可按需调
static const uint16_t eyelid_duration[EYELID_SEQ_LEN] = {
    80,   // 0 → 睁开
    90,   // 1
    100,   // 2
    110,   // 3 → 最闭合，停留久一点
    100,   // 2
    90,   // 1
};

static const void *eyelid_frames[3] = {
    &eyelid1,
    &eyelid2,
    &eyelid3,
    // &eyelid4
};

// ==========================================pupil================================================
// LVGL 定时器回调，在 lv_timer_handler 上下文中执行
void pupil_pos_update_cb(lv_timer_t *t) {
    int16 x;
    int16 y;
    x = (int16)get_x_pos();
    y = (int16)get_y_pos();
    lv_obj_set_pos(s_pupil_anim, IMG_W / 2 + x, IMG_H / 2 + y);
    // printf("%d, %d\r\n", x, y);
}
void pupil_anim_init(void) {
    uint32_t time_ms;
    time_ms = tls_os_get_time();

    generate_rotated_array(pupil1, rotated_pixels1, 24);
    generate_rotated_array(pupil1, rotated_pixels2, 48);
    generate_rotated_array(pupil1, rotated_pixels3, 72);
    generate_rotated_array(pupil1, rotated_pixels4, 96);
    // generate_rotated_array(pupil1, rotated_pixels5, 100);

    printf("rotate img cost %dms\r\n", tls_os_get_time());

    // 在创建瞳孔和眼睑之前，先把屏幕背景设成纯白
    lv_obj_set_style_bg_color(lv_scr_act(), lv_color_white(), 0);
    lv_obj_set_style_bg_opa(lv_scr_act(), LV_OPA_COVER, 0);

    s_pupil_anim = lv_animimg_create(lv_scr_act());
    // lv_obj_align(s_pupil_anim, LV_ALIGN_CENTER, 0, 0);
    lv_obj_set_pos(s_pupil_anim, IMG_W / 2, IMG_H / 2);
    lv_animimg_set_src(s_pupil_anim, (const void **)pupil_frames, 5);
    // 6 帧总时长 1200ms，即每帧 200ms
    lv_animimg_set_duration(s_pupil_anim, 400);
    // 无限循环
    lv_animimg_set_repeat_count(s_pupil_anim, LV_ANIM_REPEAT_INFINITE);
    // 开始播放
    lv_animimg_start(s_pupil_anim);

    // 在 pupil_anim_init 末尾创建这个 timer
    lv_timer_create(pupil_pos_update_cb, 20, NULL);
}

// 图片旋转
void generate_rotated_array(lv_img_dsc_t src_img, void *dst_buf, float angle_deg) {
    // 1. 创建画布
    lv_obj_t *canvas = lv_canvas_create(lv_scr_act());
    lv_canvas_set_buffer(canvas, dst_buf, IMG_W, IMG_H, LV_IMG_CF_TRUE_COLOR);
    // 2.填充背景
    lv_canvas_fill_bg(canvas, lv_color_white(), LV_OPA_COVER);
    // 3. 执行变换
    lv_canvas_transform(canvas,
                        &src_img,
                        (int16_t)(angle_deg * 10),
                        LV_IMG_ZOOM_NONE,
                        0, 0,
                        IMG_W / 2, IMG_H / 2,
                        true); // 耗时，但不花屏
    // 4. 变换完成
    lv_obj_del(canvas);
}

// pupil position changed.
void change_pupil_position(int16_t x, int16_t y) {
    lv_obj_set_pos(s_pupil_anim, x, y);
    // lv_refr_now(NULL);
}

// =========================eyelid=======================================
static void eyelid_black_create(void) {
    s_eyelid_black = lv_obj_create(lv_scr_act());
    lv_obj_set_size(s_eyelid_black, 240, 240);
    lv_obj_set_pos(s_eyelid_black, 0, 0);
    // lv_obj_align(s_eyelid_black, LV_ALIGN_CENTER, 0, 0);

    // 纯黑，不透明
    lv_obj_set_style_bg_color(s_eyelid_black, lv_color_black(), 0);
    lv_obj_set_style_bg_opa(s_eyelid_black, LV_OPA_COVER, 0);

    // ★ 关键：去掉 padding 和 border
    lv_obj_set_style_pad_all(s_eyelid_black, 0, 0);
    lv_obj_set_style_border_width(s_eyelid_black, 0, 0);

    // 默认隐藏黑色
    lv_obj_add_flag(s_eyelid_black, LV_OBJ_FLAG_HIDDEN);     // 隐藏黑色
}

static void eyelid_show_frame(uint8_t idx) {
    if (idx == 3) {
        // 全闭帧：显示纯黑，隐藏黑色眼睑图
        lv_obj_clear_flag(s_eyelid_black, LV_OBJ_FLAG_HIDDEN);   // 显示
        lv_img_set_src(s_eyelid_img, NULL);
    } else {
        // 眼睑帧：隐藏黑色，显示对应图片
        lv_obj_add_flag(s_eyelid_black, LV_OBJ_FLAG_HIDDEN);     // 隐藏黑色
        lv_img_set_src(s_eyelid_img, eyelid_frames[idx]);
    }
}

static void eyelid_timer_cb(lv_timer_t *t) {
    if (s_eyelid_step >= EYELID_SEQ_LEN) {
        // 一次眨眼结束，停在睁开帧
        s_eyelid_step = 0;
        eyelid_show_frame(0);
        lv_timer_pause(s_eyelid_timer);
        return;
    }
    uint8_t idx = eyelid_seq[s_eyelid_step];
    eyelid_show_frame(idx);
    lv_timer_set_period(s_eyelid_timer, eyelid_duration[idx]);
    s_eyelid_step++;
}

// 播放一次完整眨眼
static void eyelid_play_once(void) {
    s_eyelid_step = 0;
    lv_img_set_src(s_eyelid_img, eyelid_frames[0]);
    lv_timer_set_period(s_eyelid_timer, eyelid_duration[0]);
    lv_timer_resume(s_eyelid_timer);
}

static void blink_trigger_cb(lv_timer_t *t) {
    if (lv_tick_get() >= s_next_blink_tick) {
        eyelid_play_once();
        // 3 秒后再眨，可加随机抖动
        uint32_t interval = 3000 + (rand() % 1000);
        s_next_blink_tick = lv_tick_get() + interval;
    }
}

// eyelid effects.
void eyelid_anim_init(void) {
    s_eyelid_img = lv_img_create(lv_scr_act());
    lv_img_set_src(s_eyelid_img, eyelid_frames[0]);
    lv_obj_align(s_eyelid_img, LV_ALIGN_CENTER, 0, 0);

    // eyelid bilink process.
    eyelid_black_create();
    s_eyelid_step = 0;
    s_eyelid_timer = lv_timer_create(eyelid_timer_cb, 40, NULL);
    lv_timer_pause(s_eyelid_timer);
    // eyelid animate trigger timer.time is random but > 3s.
    s_next_blink_tick = lv_tick_get() + 3000;
    s_blink_trigger_timer = lv_timer_create(blink_trigger_cb, 20, NULL);
}

