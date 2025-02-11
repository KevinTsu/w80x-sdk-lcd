
#include "wm_include.h"
#include "iic.h"
#include "touchpad.h"
#if(USE_TOUCHPAD == 1 && TOUCHPAD_TYPE == 3)

static void user_bitband_write(enum tls_io_name io, u8 val)
{
    if(io > WM_IO_PA_15){
        tls_bitband_write(HR_GPIOB_DATA, io - 16, val);
    }
    else{
        tls_bitband_write(HR_GPIOA_DATA, io, val);
    }
}

void I2C_SDA_H()			
{
    user_bitband_write(I2C_SDA, 1);
}

void I2C_SDA_L()			
{
    user_bitband_write(I2C_SDA, 0);
}

void I2C_SCL_H()			
{
    user_bitband_write(I2C_SCL, 1);
}

void I2C_SCL_L()			
{
    user_bitband_write(I2C_SCL, 0);
}

void I2C_SDA_IN()		
{
    tls_gpio_cfg(I2C_SDA, WM_GPIO_DIR_INPUT, WM_GPIO_ATTR_FLOATING);
}

void I2C_SDA_OUT()		
{
    tls_gpio_cfg(I2C_SDA, WM_GPIO_DIR_OUTPUT, WM_GPIO_ATTR_FLOATING);
}

bool I2C_SDA_GET()		
{
    return tls_gpio_read(I2C_SDA);
}
// 可以调I2C时钟频率
static void delay_us(void)
{
#if 1	
	uint32_t i;
	for (i = 0; i < (45 * 3); i++)
	{
		__NOP();
	}
	// for (i = 0; i < 100; i++)
	// {
	// 	__NOP();
	// }
#endif	
}

void I2C_Start(void)
{
	I2C_SCL_H();
	I2C_SDA_H();
	delay_us();
	
	I2C_SDA_L();
	delay_us();
	
	I2C_SCL_L();
	delay_us();
}

void I2C_Stop(void)
{	
	I2C_SDA_L();	
	I2C_SCL_H();
	delay_us();
	
	I2C_SDA_H();
	delay_us();
}

void I2C_Ack(void)
{	
	I2C_SDA_OUT();
	I2C_SDA_L();
	I2C_SCL_H();
	delay_us();
	
	I2C_SCL_L();
	delay_us();
	I2C_SDA_IN();
}

void I2C_Nack(void)
{
	I2C_SDA_OUT();
	I2C_SDA_H();
	I2C_SCL_H();
	delay_us();
	
	I2C_SCL_L();
	delay_us();
	I2C_SDA_IN();
}

uint8_t I2C_Wait_Ack(void)
{
	uint8_t ack;

	I2C_SDA_H();
	delay_us();
	I2C_SDA_IN();
	I2C_SCL_H();
	delay_us();
	ack = I2C_SDA_GET();
	I2C_SCL_L();
	delay_us();
	I2C_SDA_OUT();

	return ack;
}

void I2C_Write_Byte(uint8_t data)
{
	uint8_t i;
	
	for (i = 0; i < 8; i ++)
	{
		if (data & 0x80)
		{
			I2C_SDA_H();
		}
		else
		{
			I2C_SDA_L();
		}
		I2C_SCL_H();
		delay_us();
		I2C_SCL_L();
		delay_us();
		data <<= 1;
	}
}

uint8_t I2C_Read_Byte(void)
{
	uint8_t i, temp = 0;
	
	for (i = 0; i < 8; i++)
	{
		I2C_SCL_H();
		delay_us();
		temp <<= 1;
		if (I2C_SDA_GET())
		{
			temp |= 0x01;
		}
		I2C_SCL_L();
		delay_us();
	}

	return temp;
}

void  I2C_Gpio_Init(void)
{
    tls_gpio_cfg(I2C_SCL,  WM_GPIO_DIR_OUTPUT,  WM_GPIO_ATTR_FLOATING);
    tls_gpio_cfg(I2C_SDA,  WM_GPIO_DIR_OUTPUT,  WM_GPIO_ATTR_FLOATING);
}

uint32_t I2C_Write(uint8_t DevAddress, uint8_t MemAddress, uint8_t *pData, uint16_t Size)
{
	uint32_t i, ret = 1;
	
	I2C_Start();
	I2C_Write_Byte(DevAddress & 0xFE);
	if (I2C_Wait_Ack())
	{
		goto OUT;
	}
	I2C_Write_Byte(MemAddress);
	if (I2C_Wait_Ack())
	{
		goto OUT;
	}
	for (i = 0; i < Size; i++)
	{
		I2C_Write_Byte(pData[i]);
		if (I2C_Wait_Ack())
		{
			goto OUT;
		}
	}
	ret = 0;
OUT:
	I2C_Stop();
	return ret;
}

uint32_t I2C_Read(uint8_t DevAddress, uint8_t MemAddress, uint8_t *pData, uint16_t Size)
{
	uint32_t i, ret = 1;
	
	I2C_Start();
	I2C_Write_Byte(DevAddress & 0xFE);
	if (I2C_Wait_Ack())
	{
		goto OUT;
	}
	I2C_Write_Byte(MemAddress);
	if (I2C_Wait_Ack())
	{
		goto OUT;
	}
	I2C_Start();
	I2C_Write_Byte(DevAddress | 0x01);
	if (I2C_Wait_Ack())
	{
		goto OUT;
	}
	I2C_SDA_IN();
	for (i = 0; i < Size; i++)
	{
		pData[i] = I2C_Read_Byte();
		if (i == (Size - 1))
		{
			I2C_Nack();
		}
		else
		{
			I2C_Ack();
		}
	}
	ret = 0;
OUT:
	I2C_SDA_OUT();
	I2C_Stop();
	return ret;
}

uint32_t I2C_Read_Addr16(uint8_t DevAddress, uint16_t MemAddress, uint8_t *pData, uint16_t Size)
{
	uint32_t i, ret = 1;
	
	I2C_Start();
	I2C_Write_Byte(DevAddress & 0xFE);
	if (I2C_Wait_Ack())
	{
		goto OUT;
	}

	I2C_Write_Byte((u8)(MemAddress>>8));       //发送高8位地址		
	if (I2C_Wait_Ack())
	{
		goto OUT;
	}

    I2C_Write_Byte((u8)(MemAddress&0xFF));     //发送低8位地址
	if (I2C_Wait_Ack())
	{
		goto OUT;
	}

	I2C_Start();
	I2C_Write_Byte(DevAddress | 0x01);
	if (I2C_Wait_Ack())
	{
		goto OUT;
	}
	I2C_SDA_IN();
	for (i = 0; i < Size; i++)
	{
		pData[i] = I2C_Read_Byte();
		if (i == (Size - 1))
		{
			I2C_Nack();
		}
		else
		{
			I2C_Ack();
		}
	}
	ret = 0;
OUT:
	I2C_SDA_OUT();
	I2C_Stop();
	return ret;
}

uint32_t I2C_Write_Addr16(uint8_t DevAddress, uint16_t MemAddress, uint8_t *pData, uint16_t Size)
{
	uint32_t i, ret = 1;
	
	I2C_Start();
	I2C_Write_Byte(DevAddress & 0xFE);
	if (I2C_Wait_Ack())
	{
		goto OUT;
	}

	I2C_Write_Byte((u8)(MemAddress>>8));       //发送高8位地址		
	if (I2C_Wait_Ack())
	{
		goto OUT;
	}

    I2C_Write_Byte((u8)(MemAddress&0xFF));     //发送低8位地址
	if (I2C_Wait_Ack())
	{
		goto OUT;
	}
    
	for (i = 0; i < Size; i++)
	{
		I2C_Write_Byte(pData[i]);
		if (I2C_Wait_Ack())
		{
			goto OUT;
		}
	}
	ret = 0;
OUT:
	I2C_Stop();
	return ret;
}

#endif