#include "wm_include.h"
#include "wm_flash.h"
#include "lcd.h"
#include "spiflash.h"

extern bool xmodem_flag;

typedef struct
{
    u32   magic_num;       //  4 byte   目前固定为0x12345678
    char  version[10];     // 10 byte
    u16   image_count;     //  2 byte
}ImageHeader;

typedef struct 
{
    u32  strAddr;          //  4 byte
    u32  size;             //  4 byte
    char image_name[16]    // 16 byte
}ImageInfo;                // image_count



// typedef struct 
// {
//     u16 width;
//     u16 height;
// }ImageSize;

ImageHeader image_header;

static unsigned int get_image_header()
{
    int ret = 0;
    int len = 0;
    len = sizeof(ImageHeader);
    //ret = tls_spifls_read(0, (u8 *)&image_header, len);
    ret = tls_fls_read(0x200000, (u8 *)&image_header, len);
	if(ret != 0)
	{
		printf("---> get_image_header tls_fls_read fail !\n");
		return 0;
	}
    // 防止打印%s越界
    image_header.version[9] = '\0';
#if (0) // test
    u8 *buf = (u8 *)&image_header;
    printf("---> len: %d\n", len);
    for(u16 i = 0; i < len; i++)
    {
        printf("%02X ", buf[i]);
    }
    printf("\n");
#endif
    // if(image_header.magic_num != 0x12345678)
    // {
	// 	printf("---> get_image_header fail !\n");
	// 	return ret;
    // }
    printf("---> magic_num:   %08X\n", image_header.magic_num);
    printf("---> version:     %s\n",   image_header.version);
    printf("---> image_count: %d\n\n",   image_header.image_count);

    if(0x12345678 == image_header.magic_num)
    {
        return image_header.image_count;        
    }
    else
    {
        return 0;
    }

}

int get_image_list_show(void)
{
    int ret = 0;
    u32 image_count = 0;
    u16 image_buf_len = 0;
    u16 offset = 0;

    u16 index = 0;

    u8 *image_info = NULL;

    ImageInfo *image_list = NULL;
    // ImageSize  image_size = {0};
    u8 image_size[4] = {0};
 
    tls_fls_init();

    image_count = get_image_header();

    if(image_count == 0)
    {
        printf("---> get_image_header fail 22 !\n");
        return -1;        
    }

    image_buf_len = image_count * sizeof(ImageInfo);
    offset = sizeof(ImageHeader);

    image_info = tls_mem_alloc(image_buf_len);
    if(image_info == NULL)
    {
        printf("[%s] mem err\n", __func__);
        return -1;
    }
    //ret = tls_spifls_read(offset, image_info, image_buf_len);
    ret = tls_fls_read(0x200000+offset, image_info, image_buf_len);
	if(ret != 0)
	{
		printf("---> get_image_list fail %d !\n", ret);
		return ret;
	}
    image_list = (ImageInfo *)image_info;
    printf("---> strAddr  imgSize  imgName\n");
    for(u16 i = 0; i < image_count; i++)
    {
        image_list[i].image_name[15] = '\0';
        printf("---> %08X %08X %s\n", image_list[i].strAddr, image_list[i].size, image_list[i].image_name);
    }

    while(1)
    {
        if(xmodem_flag)
        {
            return -1;
        }

        if(index >= image_count)
        {
            index = 0;
        }
        //ret = tls_spifls_read(image_list[index].strAddr, (u8 *)&image_size, sizeof(image_size));
        ret = tls_fls_read(0x200000+image_list[index].strAddr, (u8 *)&image_size, sizeof(image_size));
        if(ret != 0)
        {
            printf("---> image_size fail %d !\n", ret);
            return ret;
        }
        u8 *p = (u8 *)&image_size;
        // printf("%02X %02X %02X %02X\n", p[0],p[1],p[2],p[3]);
        u16 width =  (p[0] << 8) + p[1];
        u16 height =  (p[2] << 8) + p[3];
        printf("---> width: %d height %d\n", width, height);
        //lcd_clear(BLACK);
        lcd_full_picture_from_spiflash(width, height, image_list[index].strAddr + 4);
        index++;
        //tls_os_time_delay(HZ*3);
        tls_os_time_delay(100);
    }
    tls_mem_free(image_list);
    return 0;
}

