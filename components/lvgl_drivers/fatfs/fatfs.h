#ifndef __USER_FATFS_H__
#define __USER_FATFS_H__
#include "ff.h"
#include <stdint.h>

extern FATFS fs_internal_flash; //FatFs文件系统对象
extern FATFS fs_external_flash; //FatFs文件系统对象

FRESULT scan_files(char *path);

void fatfs_disk_mount();

#endif

