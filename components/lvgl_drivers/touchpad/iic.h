#ifndef __IIC_H__
#define __IIC_H__
#include "wm_include.h"


void I2C_Start(void);

void I2C_Stop(void);

void I2C_Ack(void);

void I2C_Nack(void);

uint8_t I2C_Wait_Ack(void);

void I2C_Write_Byte(uint8_t data);

uint8_t I2C_Read_Byte(void);

void  I2C_Gpio_Init(void);

uint32_t I2C_Write(uint8_t DevAddress, uint8_t MemAddress, uint8_t *pData, uint16_t Size);

uint32_t I2C_Read(uint8_t DevAddress, uint8_t MemAddress, uint8_t *pData, uint16_t Size);

#endif