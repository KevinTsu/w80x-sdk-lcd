#include "fatfs.h"
#include "../../user_config.h"

#if (USE_INTERNAL_FLASH_FATFS || USE_EXTERNAL_FLASH_FATFS)

#define FATFS_DEBUG_EN           1
#if FATFS_DEBUG_EN
#define FATFS_DEBUG(fmt, ...)    printf("%s: "fmt, __func__, ##__VA_ARGS__)
#else
#define FATFS_DEBUG(fmt, ...)
#endif

#if USE_EXTERNAL_FLASH_FATFS
FATFS fs_external_flash; // FatFs文件系统对象
#endif

#if USE_INTERNAL_FLASH_FATFS
FATFS fs_internal_flash; // FatFs文件系统对象
#endif


FRESULT scan_files(char *path)
{
    printf("---> Scanning files: \"%s\" \r\n", path);
	FRESULT res;                                  // 定义结果对象
	DIR dir;                                      // 定义目录对象
	FILINFO fno;                                  // 定义静态文件信息结构对象
	res = f_opendir(&dir,path);                   // 打开目录，返回状态 和 目录对象的指针
	if(res == FR_OK){
        printf("--------------------------------------------------\r\n");
		for(;;){
			res = f_readdir(&dir, &fno);          // 读取目录，返回状态 和 文件信息的指针
			if(res != FR_OK || fno.fname[0] == 0) 
 				break;                            // 若打开失败 或 到结尾，则退出
			if(fno.fattrib & AM_DIR){
				printf("--   %s/\n",fno.fname);
			}
            else{
                // char* ext = strrchr(fno.fname, '.'); // 获取文件后缀
                // if (ext != NULL && strcmp(ext + 1, "wav") == 0) { // 如果后缀为wav
                    printf("--   %s\n",fno.fname); // 是文件
                // }
			}
		}
        printf("--------------------------------------------------\r\n");
	}
	else{
		printf("File opening failure - %d\n",res); //打开失败
	}
	f_closedir(&dir); //关闭目录
	return res; //返回状态
}

void fatfs_disk_mount()
{
    FRESULT res_sd;//文件操作结果
    BYTE work[FF_MAX_SS];
    char logical_drives[4] = {0};

#if USE_EXTERNAL_FLASH_FATFS
    sprintf(logical_drives, "%s", "3:");
	res_sd = f_mount(&fs_external_flash, logical_drives, 1);
	
	//***********************格式化测试****************************
	if(res_sd == FR_NO_FILESYSTEM)
	{
		while(1)
		{
			FATFS_DEBUG("The disk \"%s\" does not have a file system and is about to be formatted...\r\n", logical_drives);
			//格式化
			
			res_sd = f_mkfs(logical_drives, 0, work, sizeof(work));
			
			if(res_sd == FR_OK)
			{
				FATFS_DEBUG("The disk \"%s\" formatted successfully!\r\n", logical_drives);
				//格式化后先取消挂载
				res_sd = f_mount(NULL, logical_drives, 1);
				//再重新挂载
				res_sd = f_mount(&fs_external_flash, logical_drives, 1);
				break;
			}
			else
			{
				FATFS_DEBUG("File formatting failed! Error code: %d; will try again...\r\n",res_sd);
                tls_os_time_delay(HZ);
			}
		}
	}
	else if(res_sd != FR_OK)
	{
		FATFS_DEBUG("The disk \"%s\" Failed to mount file system! Probably because file initialization failed! Error code: %d\r\n", logical_drives,res_sd);
	}
	else
	{
		FATFS_DEBUG("The disk \"%s\" file system is mounted successfully. Read and write tests can be performed!\r\n", logical_drives);
	}
#endif

#if USE_INTERNAL_FLASH_FATFS
    sprintf(logical_drives, "%s", "4:");
	res_sd = f_mount(&fs_internal_flash, logical_drives, 1);
	
	//***********************格式化测试****************************
	if(res_sd == FR_NO_FILESYSTEM)
	{
		while(1)
		{
			FATFS_DEBUG("The disk \"%s\" does not have a file system and is about to be formatted...\r\n", logical_drives);
			//格式化
			
			res_sd = f_mkfs(logical_drives, 0, work, sizeof(work));
			
			if(res_sd == FR_OK)
			{
				FATFS_DEBUG("The disk \"%s\" formatted successfully!\r\n", logical_drives);
				//格式化后先取消挂载
				res_sd = f_mount(NULL, logical_drives, 1);
				//再重新挂载
				res_sd = f_mount(&fs_internal_flash, logical_drives, 1);
				break;
			}
			else
			{
				FATFS_DEBUG("File formatting failed! Error code: %d; will try again...\r\n",res_sd);
                tls_os_time_delay(HZ);
			}
		}
	}
	else if(res_sd != FR_OK)
	{
		FATFS_DEBUG("The disk \"%s\" Failed to mount file system! Probably because file initialization failed! Error code: %d\r\n", logical_drives,res_sd);
	}
	else
	{
		FATFS_DEBUG("The disk \"%s\" file system is mounted successfully. Read and write tests can be performed!\r\n", logical_drives);
	}
#endif
}

#endif