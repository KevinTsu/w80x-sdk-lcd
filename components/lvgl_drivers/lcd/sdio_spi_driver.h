#ifndef __SDIO_SPI_DRIVER_H__
#define __SDIO_SPI_DRIVER_H__
#include "wm_include.h"





void init_sdio_spi_mode();

void sdio_spi_put(u8 d);

void write_sdio_spi_dma(u32* data,u32 len);

void write_sdio_spi_dma_async(u32* data,u32 len);

void wait_sdio_spi_dma_ready();

#endif