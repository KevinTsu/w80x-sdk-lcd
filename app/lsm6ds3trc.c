/**************************************************************************//**
 * @file     lsm6ds3tr-c.c
 * @version
 * @date
 * @author
 * @note
 * Copyright (c) 2014 Winner Microelectronics Co., Ltd. All rights reserved.
 *****************************************************************************/
#include "wm_include.h"
#include "wm_i2c.h"
#include <string.h>
#include "wm_gpio_afsel.h"
#include "lsm6ds3trc.h"
#include "math.h"
// #include "canvas_eyes.h"


static float pupil_x = 0, pupil_y = 0;

extern void change_pupil_position(int16_t x, int16_t y);

#if 1
#define LSM6DS3TRC_TASK_STACK_SIZE (512)
#define I2C_FREQ		(400000)

// CS			->		1
// SDO/SA0		->		0	最低有效位
// SDI			->		数据SDA
// SCK			->		CLK

/*
 * @author: rtrobot<admin@rtrobot.org>
 * @website:rtrobot.org
 * @licence: GPL v3
 */


//0:SPI
//1:I2C
uint8_t lsm6ds3trc_mode = 0;

static volatile bool g_i2c_done;

static void i2c_done_cb(void)
{
    g_i2c_done = true;
}

/***************************************************************************************************************
 LSM6DS3TRC Read Command
****************************************************************************************************************/
void LSM6DS3TRC_ReadCommand(uint8_t reg_addr, uint8_t *rev_data, uint8_t len)
{
	// if (lsm6ds3trc_mode == LSM6DS3TRC_MODE_I2C)
	// {
	// 	g_i2c_done = false;
	// 	// HAL_I2C_Mem_Read(&hi2c1, LSM6DS3TRC_I2CADDR << 0x01, reg_addr, 1, rev_data, length, 100);
	// 	wm_i2c_start_read_it(0xD4, reg_addr, rev_data, length);
	// 	while(!g_i2c_done);
	// }
	// else
	// {
	// 	// SPI
	// }
	tls_i2c_write_byte(LSM6DS3TR_C_ADDR_W,1);
	tls_i2c_wait_ack();
	tls_i2c_write_byte(reg_addr,0);
	tls_i2c_wait_ack();
	tls_i2c_write_byte(LSM6DS3TR_C_ADDR_R,1);
	tls_i2c_wait_ack();

	while(len > 1) {
		*rev_data++ = tls_i2c_read_byte(1,0);
		//printf("\nread byte=%x\n",*(pBuffer - 1));
		len--;
	}
   	*rev_data = tls_i2c_read_byte(0,1);
}

/***************************************************************************************************************
 LSM6DS3TRC Write Command
****************************************************************************************************************/
void LSM6DS3TRC_WriteCommand(uint8_t reg_addr, uint8_t *send_data, uint16_t len) {
	// if (lsm6ds3trc_mode == LSM6DS3TRC_MODE_I2C) {
		// HAL_I2C_Mem_Write(&hi2c1, LSM6DS3TRC_I2CADDR << 0x01, reg_addr, 1, send_data, length, 100);
	// 	wm_i2c_start_write_it(LSM6DS3TR_C_ADDR_W, reg_addr, send_data, length);
	// } else {
	// 	// SPI
	// }
	tls_i2c_write_byte(LSM6DS3TR_C_ADDR_W, 1);
	tls_i2c_wait_ack();
	tls_i2c_write_byte(reg_addr, 0);
	tls_i2c_wait_ack();
	while(len--) {
		tls_i2c_write_byte(*send_data, 0);
		tls_i2c_wait_ack();
	}
	tls_i2c_stop();
	tls_os_time_delay(1);
}

/***************************************************************************************************************
 LSM6DS3TRC Get id
****************************************************************************************************************/
bool LSM6DS3TRC_GetChipID(void)
{
	uint8_t buf = 0;

	LSM6DS3TRC_ReadCommand(LSM6DS3TRC_WHO_AM_I, &buf, 1);
	if (buf == 0x6a)
		return true;
	else
		return false;
}

/***************************************************************************************************************
 LSM6DS3TRC reboot and reset register
****************************************************************************************************************/
void LSM6DS3TRC_Reset(void)
{
	uint8_t buf[1] = {0};
	//reboot modules
	buf[0] = 0x80;
	LSM6DS3TRC_WriteCommand(LSM6DS3TRC_CTRL3_C, buf, 1);
	tls_os_time_delay(15);

	//reset register
	LSM6DS3TRC_ReadCommand(LSM6DS3TRC_CTRL3_C, buf, 1);
	buf[0] |= 0x01;
	LSM6DS3TRC_WriteCommand(LSM6DS3TRC_CTRL3_C, buf, 1);
	while (buf[0] & 0x01)
		LSM6DS3TRC_ReadCommand(LSM6DS3TRC_CTRL3_C, buf, 1);
}

/***************************************************************************************************************
 LSM6DS3TRC Get data status
****************************************************************************************************************/
uint8_t LSM6DS3TRC_Get_Status(void)
{
	uint8_t buf[1] = {0};
	LSM6DS3TRC_ReadCommand(LSM6DS3TRC_STATUS_REG, buf, 1);
	return buf[0];
}

/***************************************************************************************************************
 LSM6DS3TRC Set Block Data Update
****************************************************************************************************************/
void LSM6DS3TRC_Set_BDU(bool flag)
{
	uint8_t buf[1] = {0};
	LSM6DS3TRC_ReadCommand(LSM6DS3TRC_CTRL3_C, buf, 1);

	if (flag == true)
	{
		buf[0] |= 0x40;
		LSM6DS3TRC_WriteCommand(LSM6DS3TRC_CTRL3_C, buf, 1);
	}
	else
	{
		buf[0] &= 0xbf;
		LSM6DS3TRC_WriteCommand(LSM6DS3TRC_CTRL3_C, buf, 1);
	}

	LSM6DS3TRC_ReadCommand(LSM6DS3TRC_CTRL3_C, buf, 1);
}

/***************************************************************************************************************
 LSM6DS3TRC Set accelerometer data rate
****************************************************************************************************************/
void LSM6DS3TRC_Set_Accelerometer_Rate(uint8_t rate)
{
	uint8_t buf[1] = {0};
	LSM6DS3TRC_ReadCommand(LSM6DS3TRC_CTRL1_XL, buf, 1);
	buf[0] |= rate;
	LSM6DS3TRC_WriteCommand(LSM6DS3TRC_CTRL1_XL, buf, 1);
}

/***************************************************************************************************************
 LSM6DS3TRC Set gyroscope data rate
****************************************************************************************************************/
void LSM6DS3TRC_Set_Gyroscope_Rate(uint8_t rate)
{
	uint8_t buf[1] = {0};
	LSM6DS3TRC_ReadCommand(LSM6DS3TRC_CTRL2_G, buf, 1);
	buf[0] |= rate;
	LSM6DS3TRC_WriteCommand(LSM6DS3TRC_CTRL2_G, buf, 1);
}

/***************************************************************************************************************
 LSM6DS3TRC Set accelerometer full-scale selection.
****************************************************************************************************************/
void LSM6DS3TRC_Set_Accelerometer_Fullscale(uint8_t value)
{
	uint8_t buf[1] = {0};
	LSM6DS3TRC_ReadCommand(LSM6DS3TRC_CTRL1_XL, buf, 1);
	buf[0] |= value;
	LSM6DS3TRC_WriteCommand(LSM6DS3TRC_CTRL1_XL, buf, 1);
}

/***************************************************************************************************************
 LSM6DS3TRC Set gyroscope full-scale selection.
****************************************************************************************************************/
void LSM6DS3TRC_Set_Gyroscope_Fullscale(uint8_t value)
{
	uint8_t buf[1] = {0};
	LSM6DS3TRC_ReadCommand(LSM6DS3TRC_CTRL2_G, buf, 1);
	buf[0] |= value;
	LSM6DS3TRC_WriteCommand(LSM6DS3TRC_CTRL2_G, buf, 1);
}

/***************************************************************************************************************
 LSM6DS3TRC Set accelerometer analog chain bandwidth.
****************************************************************************************************************/
void LSM6DS3TRC_Set_Accelerometer_Bandwidth(uint8_t BW0XL, uint8_t ODR)
{
	uint8_t buf[1] = {0};
	LSM6DS3TRC_ReadCommand(LSM6DS3TRC_CTRL1_XL, buf, 1);
	buf[0] |= BW0XL;
	LSM6DS3TRC_WriteCommand(LSM6DS3TRC_CTRL1_XL, buf, 1);

	LSM6DS3TRC_ReadCommand(LSM6DS3TRC_CTRL8_XL, buf, 1);
	buf[0] |= ODR;
	LSM6DS3TRC_WriteCommand(LSM6DS3TRC_CTRL8_XL, buf, 1);
}

/***************************************************************************************************************
 LSM6DS3TRC Set register 6
****************************************************************************************************************/
void LSM6DS3TRC_Set_Register4(uint8_t reg4)
{
	uint8_t buf[1] = {0};

	LSM6DS3TRC_ReadCommand(LSM6DS3TRC_CTRL4_C, buf, 1);
	buf[0] |= reg4;
	LSM6DS3TRC_WriteCommand(LSM6DS3TRC_CTRL4_C, buf, 1);
}

/***************************************************************************************************************
 LSM6DS3TRC Set register 5
****************************************************************************************************************/
void LSM6DS3TRC_Set_Register5(uint8_t reg5)
{
	uint8_t buf[1] = {0};

	LSM6DS3TRC_ReadCommand(LSM6DS3TRC_CTRL5_C, buf, 1);
	buf[0] |= reg5;
	LSM6DS3TRC_WriteCommand(LSM6DS3TRC_CTRL5_C, buf, 1);
}

/***************************************************************************************************************
 LSM6DS3TRC Set register 6
****************************************************************************************************************/
void LSM6DS3TRC_Set_Register6(uint8_t reg6)
{
	uint8_t buf[1] = {0};
	LSM6DS3TRC_ReadCommand(LSM6DS3TRC_CTRL6_C, buf, 1);
	buf[0] |= reg6;
	LSM6DS3TRC_WriteCommand(LSM6DS3TRC_CTRL6_C, buf, 1);
}

/***************************************************************************************************************
 LSM6DS3TRC Set register 7
****************************************************************************************************************/
void LSM6DS3TRC_Set_Register7(uint8_t reg7)
{
	uint8_t buf[1] = {0};

	LSM6DS3TRC_ReadCommand(LSM6DS3TRC_CTRL7_G, buf, 1);
	buf[0] |= reg7;
	LSM6DS3TRC_WriteCommand(LSM6DS3TRC_CTRL7_G, buf, 1);
}

/***************************************************************************************************************
 LSM6DS3TRC Get Acceleration Value
****************************************************************************************************************/
void LSM6DS3TRC_Get_Acceleration(uint8_t fsxl, float *acc_float)
{
	uint8_t buf[6];
	int16_t acc[3];
	LSM6DS3TRC_ReadCommand(LSM6DS3TRC_OUTX_L_XL, buf, 6);
	acc[0] = buf[1] << 8 | buf[0];
	acc[1] = buf[3] << 8 | buf[2];
	acc[2] = buf[5] << 8 | buf[4];

	switch (fsxl)
	{
	case LSM6DS3TRC_ACC_FSXL_2G:
		acc_float[0] = ((float)acc[0] * 0.061f);
		acc_float[1] = ((float)acc[1] * 0.061f);
		acc_float[2] = ((float)acc[2] * 0.061f);
		break;

	case LSM6DS3TRC_ACC_FSXL_16G:
		acc_float[0] = ((float)acc[0] * 0.488f);
		acc_float[1] = ((float)acc[1] * 0.488f);
		acc_float[2] = ((float)acc[2] * 0.488f);
		break;

	case LSM6DS3TRC_ACC_FSXL_4G:
		acc_float[0] = ((float)acc[0] * 0.122f);
		acc_float[1] = ((float)acc[1] * 0.122f);
		acc_float[2] = ((float)acc[2] * 0.122f);
		break;

	case LSM6DS3TRC_ACC_FSXL_8G:
		acc_float[0] = ((float)acc[0] * 0.244f);
		acc_float[1] = ((float)acc[1] * 0.244f);
		acc_float[2] = ((float)acc[2] * 0.244f);
		break;
	}
}

/***************************************************************************************************************
 LSM6DS3TRC Get Gyroscope Value
****************************************************************************************************************/
void LSM6DS3TRC_Get_Gyroscope(uint8_t fsg, float *gry_float)
{
	uint8_t buf[6];
	int16_t gry[3];
	LSM6DS3TRC_ReadCommand(LSM6DS3TRC_OUTX_L_G, buf, 6);
	gry[0] = buf[1] << 8 | buf[0];
	gry[1] = buf[3] << 8 | buf[2];
	gry[2] = buf[5] << 8 | buf[4];
	switch (fsg)
	{
	case LSM6DS3TRC_GYR_FSG_245:
		gry_float[0] = ((float)gry[0] * 8.750f);
		gry_float[1] = ((float)gry[1] * 8.750f);
		gry_float[2] = ((float)gry[2] * 8.750f);
		break;
	case LSM6DS3TRC_GYR_FSG_500:
		gry_float[0] = ((float)gry[0] * 17.50f);
		gry_float[1] = ((float)gry[1] * 17.50f);
		gry_float[2] = ((float)gry[2] * 17.50f);
		break;
	case LSM6DS3TRC_GYR_FSG_1000:
		gry_float[0] = ((float)gry[0] * 35.00f);
		gry_float[1] = ((float)gry[1] * 35.00f);
		gry_float[2] = ((float)gry[2] * 35.00f);
		break;
	case LSM6DS3TRC_GYR_FSG_2000:
		gry_float[0] = ((float)gry[0] * 70.00f);
		gry_float[1] = ((float)gry[1] * 70.00f);
		gry_float[2] = ((float)gry[2] * 70.00f);
		break;
	}
}

float LSM6DS3TRC_Get_Temperature(void)
{
	uint8_t buf[2];
	int16_t temp;
	LSM6DS3TRC_ReadCommand(LSM6DS3TRC_OUT_TEMP_L, buf, 2);
	temp = buf[1] << 8 | buf[0];
	return (((float)temp / 256.0) + 25.0);
}


// 每 10~20ms 执行一次
// read_sensor();
// filter();
// calc_target();
// limit_circle();
// smooth();
// lcd_draw_eye(pupil_x, pupil_y);

#define R_EYE     100.0f
#define R_PUPIL   20.0f
#define MARGIN    30.0f
#define R_MAX     (R_EYE - R_PUPIL - MARGIN)
#define K         150.0f
#define INVERT_X  -1.0f
#define INVERT_Y  1.0f
#define DEADZONE  1.5f
#define ALPHA     0.2f

float ax0, ay0, az0;
float nx0, ny0, nz0;

void eye_init(void)
{
    // 上电静止校准
    float sum_ax = 0, sum_ay = 0, sum_az = 0;
    for (int i = 0; i < 200; i++) {
        // float ax, ay, az;
		float acc[3] = {0};
        LSM6DS3TRC_Get_Acceleration(LSM6DS3TRC_ACC_FSXL_2G, acc);
		// LSM6DS3TRC_Get_Gyroscope(LSM6DS3TRC_GYR_FSG_245, acc);
        sum_ax += acc[0]; sum_ay += acc[1]; sum_az += acc[2];
        tls_os_time_delay(5);
    }
    ax0 = sum_ax / 200.0f;
    ay0 = sum_ay / 200.0f;
    az0 = sum_az / 200.0f;

    float norm0 = sqrtf(ax0*ax0 + ay0*ay0 + az0*az0);
    nx0 = ax0 / norm0;
    ny0 = ay0 / norm0;
    nz0 = az0 / norm0;
}

void eye_update(void)
{
    float acc[3] = {0};
	LSM6DS3TRC_Get_Acceleration(LSM6DS3TRC_ACC_FSXL_2G, acc);
	// LSM6DS3TRC_Get_Gyroscope(LSM6DS3TRC_GYR_FSG_245, acc);

    // 去零偏 + 低通
    static float ax_f = 0, ay_f = 0, az_f = 0;
    acc[0] -= ax0; acc[1] -= ay0; acc[2] -= az0;
    ax_f = 0.6f * ax_f + 0.4f * acc[0];
    ay_f = 0.6f * ay_f + 0.4f * acc[1];
    az_f = 0.6f * az_f + 0.4f * acc[2];

    // 归一化
    float norm = sqrtf(ax_f*ax_f + ay_f*ay_f + az_f*az_f);
    if (norm < 0.001f) return;
    float nx = ax_f / norm;
    float ny = ay_f / norm;
    float nz = az_f / norm;

    // 倾斜偏差
    float dx = nx - nx0;
    float dy = ny - ny0;
	float dz = nz - nz0;
	// printf("\r\n%2f,%2f,%2f\r\n", dx, dy, dz);
	// printf("\r\n%f,%f,%f\r\n", dx, dy, dz);

    // 映射到屏幕（假设左右倾斜对应 dy，前后点头对应 dx）
    float target_x = dx * K * INVERT_X;
    float target_y = dy * K * INVERT_Y;

    // // 圆形限幅
    // float r = sqrtf(target_x*target_x + target_y*target_y);
    // if (r > R_MAX) {
    //     target_x *= R_MAX / r;
    //     target_y *= R_MAX / r;
    // }

    // // 死区
    // if (fabsf(target_x) < DEADZONE) target_x = 0;
    // if (fabsf(target_y) < DEADZONE) target_y = 0;

	float r = sqrtf(target_x*target_x + target_y*target_y);

	if (r < DEADZONE) {
		// 圆形死区：整体归零，不改变方向
		target_x = 0;
		target_y = 0;
	} else if (r > R_MAX) {
		// 圆形限幅：按比例缩放，保持方向
		target_x *= R_MAX / r;
		target_y *= R_MAX / r;
	}

    // 平滑
    pupil_x += (target_x - pupil_x) * ALPHA;
    pupil_y += (target_y - pupil_y) * ALPHA;

	// printf("\r\n%f,%f\r\n", pupil_x, pupil_y);

    // 绘制
    // lcd_draw_pupil(cx + pupil_x, cy + pupil_y);
	// change_pupil_position((int16_t)pupil_x, (int16_t)pupil_y);
}

float get_x_pos(void) {
	return pupil_x;
}

float get_y_pos(void) {
	return pupil_y;
}


/***************************************************************************************************************
 LSM6DS3TRC Init
****************************************************************************************************************/
bool LSM6DS3TRC_Init(uint8_t mode)
{
	lsm6ds3trc_mode = mode;

	if (LSM6DS3TRC_GetChipID() == false)
		return false;

	//reboot and reset register
	LSM6DS3TRC_Reset();

	//enable Block Data Update
	LSM6DS3TRC_Set_BDU(true);

	//Set Data Rate
	LSM6DS3TRC_Set_Accelerometer_Rate(LSM6DS3TRC_ACC_RATE_52HZ);
	LSM6DS3TRC_Set_Gyroscope_Rate(LSM6DS3TRC_GYR_RATE_12HZ5);

	//Set full-scale selection.
	LSM6DS3TRC_Set_Accelerometer_Fullscale(LSM6DS3TRC_ACC_FSXL_2G);
	LSM6DS3TRC_Set_Gyroscope_Fullscale(LSM6DS3TRC_GYR_FSG_2000);

	//set accelerometer analog chain bandwidth.
	LSM6DS3TRC_Set_Accelerometer_Bandwidth(LSM6DS3TRC_ACC_BW0XL_400HZ, LSM6DS3TRC_ACC_LOW_PASS_ODR_100);

	LSM6DS3TRC_Set_Register7(LSM6DS3TRC_CTRL7_G_HM_MODE_DISABLE | LSM6DS3TRC_CTRL7_G_HPM_260MHZ);
	LSM6DS3TRC_Set_Register6(LSM6DS3TRC_CTRL6_C_FTYPE_1);
	LSM6DS3TRC_Set_Register4(LSM6DS3TRC_CTRL4_LPF1_SELG_ENABLE);

	if (LSM6DS3TRC_GetChipID() == false)
		return false;
	return true;
}

void lsm6ds3tr_c_read_data_polling(void) {
	// IO init.
	wm_i2c_scl_config(WM_IO_PA_01);
	wm_i2c_sda_config(WM_IO_PA_04);
	// IIC init.
	tls_i2c_init(I2C_FREQ);
	wm_i2c_transfer_done_register(i2c_done_cb);
	// Int init.
	// tls_irq_init();
	// chip init.
	if (LSM6DS3TRC_Init(LSM6DS3TRC_MODE_I2C) == false)
		printf("LSM6DS3TRC initialize error.\r\n");
	else
		printf("LSM6DS3TRC initialize register finished.\r\n");

	eye_init();

	while(1) {
		uint8_t status;
		status = LSM6DS3TRC_Get_Status();

		if(status & LSM6DS3TRC_STATUS_ACCELEROMETER) {
			// float acc[3] = {0};
			// LSM6DS3TRC_Get_Acceleration(LSM6DS3TRC_ACC_FSXL_2G, acc);
			// printf("\r\nacc:X:%2f,\tY:%2f,\tZ:%2f\r\n", acc[0], acc[1], acc[2]);
			// printf("\r\n%2f,%2f,%2f\r\n", acc[0], acc[1], acc[2]);
			eye_update();
		}
		if(status & LSM6DS3TRC_STATUS_GYROSCOPE) {
			float gyr[3] = {0};
			// LSM6DS3TRC_Get_Gyroscope(LSM6DS3TRC_GYR_FSG_2000, gyr);
			// eye_update();
			// printf("\r\ngry:X:%4.2f,\tY:%4.2f,\tZ:%4.2f\r\n", gyr[0], gyr[1], gyr[2]);
			// printf("\r\n%4.2f,%4.2f,%4.2f\r\n", gyr[0], gyr[1], gyr[2]);
		}
		if(status & LSM6DS3TRC_STATUS_TEMPERATURE) {
			// printf("\r\ntemp:%2f\r\n", LSM6DS3TRC_Get_Temperature());
		}
		tls_os_time_delay(50);
	}
}

static OS_STK TaskStk[LSM6DS3TRC_TASK_STACK_SIZE];
/* 对外入口 */
int CreateLsm6ds3trcTask(void) {

	// tls_os_queue_create(&http_server_q, DEMO_QUEUE_SIZE);
	// tls_os_queue_create(&dns_q, DEMO_QUEUE_SIZE);
	tls_os_task_create(NULL, NULL,
					lsm6ds3tr_c_read_data_polling,
					NULL,
					(void *)TaskStk,
					LSM6DS3TRC_TASK_STACK_SIZE * sizeof(u32),
					DEMO_LSM6DS3TRC_TASK_PRIO,
					0);
	return WM_SUCCESS;
}

#endif