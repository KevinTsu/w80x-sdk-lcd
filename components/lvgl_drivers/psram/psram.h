#ifndef __PSRAM_H__
#define __PSRAM_H__
#include "wm_include.h"
#include "user_config.h"



void user_psram_init();

void *dram_heap_malloc(size_t alloc_size);

void dram_heap_free(void *pfree);

size_t dram_heap_free_size(void);

size_t dram_heap_free_size_min(void);

int dram_heap_check_addr(void* addr);





#endif