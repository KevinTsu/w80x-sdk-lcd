#include "wm_include.h"
#include "ff.h"
#include "libjpeg.h"
#include "lvgl.h"
#include "../../user_config.h"

#if USE_JPEG
// static int total_cnt = 0, total_len = 0;
static int image_x = 0, image_y = 0;
static FIL file;            /* FatFs文件对象 */



static void decompcb(uint8_t *buf, uint32_t len)
{	
    UINT fnum; // 文件成功读写数量
    int ret = 0;

    uint16_t *buf_p = (uint16_t *)buf;
    uint16_t rgb565 = 0;
	// total_cnt++;
	// total_len += len;
    // 图片宽
    image_x =  len/3;
    // 图片高
    image_y++;

    for(u32 i = 0; i < len; i+=3){
        rgb565 = 0;
        rgb565 |= (buf[i] >> 3) << 11;           // 移位并组合红色位
        rgb565 |= (buf[i+1] >> 2) << 5;          // 移位并组合绿色位
        rgb565 |= (buf[i+2] >> 3);               // 移位并组合蓝色位
#if 1
        // LV_COLOR_16_SWAP
        rgb565 = (rgb565 << 8) | (rgb565 >> 8);
#endif
        buf_p[0] = rgb565;
        buf_p++;
    }
    len =  image_x*2;
    ret = f_lseek(&file, f_size(&file));
    if(ret != FR_OK){
        image_x = 0;
        image_y = 0;
    }
    ret = f_write(&file, buf, len, &fnum);
    if(ret != FR_OK){
        image_x = 0;
        image_y = 0;
    }
}

int jpeg_to_rgb565(char * input, char * output)
{
    UINT fnum; // 文件成功读写数量
    int ret = 0;
    // total_cnt = 0;
    // total_len = 0;
    image_x  = 0;
    image_y  = 0;

    u32 t1 = tls_os_get_time();
    /* 打开文件 */
    
    ret = f_open(&file, output, FA_OPEN_ALWAYS | FA_WRITE);
    if(ret != FR_OK){
        goto exit;
    }

    // 预先写入image header
    lv_img_header_t header = {0};
    ret = f_write(&file, &header, sizeof(lv_img_header_t), &fnum);
    if(ret != FR_OK){
        goto exit;
    }

    ret = jpeg_to_rgb(NULL, 0, input, 1, (void * (*)(uint8_t *, uint32_t))decompcb);
    if(ret != FR_OK){
        goto exit;
    }

    /* 定位到文件开头 */
    ret = f_lseek(&file, 0);
    if(ret != FR_OK){
        goto exit;
    }

    /* 重写前四个字节 */
    header.always_zero = 0,
    header.w = image_x,
    header.h = image_y,
    header.cf = LV_IMG_CF_TRUE_COLOR,

    ret = f_write(&file, &header, sizeof(lv_img_header_t), &fnum);
    if(ret != FR_OK){
        goto exit;
    }

    u32 t2 = tls_os_get_time();
    printf("---> use %d ms, image x: %d y:%d \n", (t2 - t1), image_x, image_y);

exit:
    /* 关闭文件 */
    f_close(&file);

    return ret;
}

#endif