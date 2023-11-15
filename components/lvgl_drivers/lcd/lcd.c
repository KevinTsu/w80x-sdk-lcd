#include "lcd.h"
#include "wm_gpio_afsel.h"
#include "sdio_spi_driver.h"
#include <string.h>
#include "wm_flash.h"
#include "lcd_task.h"

static void WriteComm(unsigned int i);
static void WriteData(unsigned int i);
static void SendDataSPI(unsigned char dat);

#if   (LCD_TYPE == 0)
#if 1
// ST7789初始化
const uint8_t st7789_init_seq[] = {
    /*  len , delay, cmd, data ... */
        0x01, 0x0A, 0x11,                         // Exit sleep mode
        0x02, 0x00, 0x36, 0x00,                   // Set MADCTL: row then column, refresh is bottom to top ????
        0x02, 0x02, 0x3A, 0x55,                   // Set colour mode to 16 bit

        0x06, 0x02, 0xB2, 0x0B, 0x0B, 0x00, 0x33, 0x33,
        0x02, 0x02, 0xB7, 0x11,
        0x02, 0x02, 0xBB, 0x2F,  
        0x02, 0x02, 0xC0, 0x2C,  
        0x02, 0x02, 0xC2, 0x01,  
        0x02, 0x02, 0xC3, 0x0D, 
        0x02, 0x02, 0xC4, 0x20,                    // VDV, 0x20:0v
        0x02, 0x02, 0xC6, 0x13,                    // 0x13:60Hz   
        0x03, 0x02, 0xD0, 0xA4, 0xA1,
        0x02, 0x02, 0xD6, 0xA1,                    // sleep in后，gate输出为GND

        0x0F, 0x02, 0xE0, 0xF0, 0x04, 0x07, 0x09, 0x07, 0x13, 0x25, 0x33, 0x3C, 0x34, 0x10, 0x10, 0x29, 0x32,
        0x0F, 0x02, 0xE1, 0xF0, 0x05, 0x08, 0x0A, 0x09, 0x05, 0x25, 0x32, 0x3B, 0x3B, 0x17, 0x18, 0x2E, 0x37,

        0x04, 0x02, 0xE4, 0x25, 0x00, 0x00,        //d0 使用240根gate  (N+1)*8 d1 设定gate起点位置 d2 当gate没有用完时，bit4(TMG)设为0
        0x01, 0x02, 0x21,                          // Inversion on, then 10 ms delay (supposedly a hack?)
        0x01, 0x02, 0x29,                          // Main screen turn on, then wait 500 ms

        0x05, 0x00, 0x2A, 0x00, 0x00, 0x00, 0xEF,  // CASET: column addresses from 0 to 240 (f0)
        0x05, 0x00, 0x2B, 0x00, 0x14, 0x01, 0x2B,  // RASET: row addresses from 0 to 240 (f0)
        0                                          // Terminate list
};
#else
// ST7789初始化
const uint8_t st7789_init_seq[] = {
    /*  len , delay, cmd, data ... */
        0x01, 0x14, 0x01,                         // Software reset
        0x01, 0x0A, 0x11,                         // Exit sleep mode
        0x02, 0x02, 0x3A, 0x55,                   // Set colour mode to 16 bit
        0x02, 0x00, 0x36, 0x00,                   // Set MADCTL: row then column, refresh is bottom to top ????
        0x05, 0x00, 0x2A, 0x00, 0x00, 0x00, 0xf0, // CASET: column addresses from 0 to 240 (f0)
        0x05, 0x00, 0x2B, 0x00, 0x00, 0x01, 0x40, // RASET: row addresses from 0 to 240 (f0)
        0x01, 0x02, 0x21,                         // Inversion on, then 10 ms delay (supposedly a hack?)
        0x01, 0x02, 0x13,                         // Normal display on, then 10 ms delay
        0x01, 0x02, 0x29,                         // Main screen turn on, then wait 500 ms
        0                                         // Terminate list
};
#endif
/* ST7789V2-BOE2.83IPS RL028P2123-14A1 */
void st7789_init(void)
{
    tls_os_time_delay(120);       
    WriteComm(0xDF); // Password
    WriteData(0x98);
    WriteData(0x51);
    WriteData(0xE9);

    WriteComm(0xDE);
    WriteData(0x00);

    WriteComm(0xB7);
    WriteData(0x1E); // 1E
    WriteData(0x85); // 81
    WriteData(0x1E); // 1E
    WriteData(0x33); // 2F

    WriteComm(0xC8);
    WriteData(0x3F);
    WriteData(0x2E);
    WriteData(0x25);
    WriteData(0x21);
    WriteData(0x22);
    WriteData(0x25);
    WriteData(0x1F);
    WriteData(0x1E);
    WriteData(0x1C);
    WriteData(0x1B);
    WriteData(0x19);
    WriteData(0x11);
    WriteData(0x0E);
    WriteData(0x0A);
    WriteData(0x06);
    WriteData(0x0E);
    WriteData(0x3F);
    WriteData(0x2E);
    WriteData(0x25);
    WriteData(0x21);
    WriteData(0x22);
    WriteData(0x25);
    WriteData(0x1F);
    WriteData(0x1E);
    WriteData(0x1C);
    WriteData(0x1B);
    WriteData(0x19);
    WriteData(0x11);
    WriteData(0x0E);
    WriteData(0x0A);
    WriteData(0x06);
    WriteData(0x0E);

    WriteComm(0xB9);
    WriteData(0x33);
    WriteData(0x08);
    WriteData(0xCC);

    WriteComm(0xBB);
    WriteData(0x44); // VGH 14.75,VGL-9.6
    WriteData(0x7A);
    WriteData(0x30);
    WriteData(0x40); // 3
    WriteData(0x7C); // 6
    WriteData(0x60);
    WriteData(0x70); // 50
    WriteData(0x70);

    WriteComm(0xBC);
    WriteData(0x38);
    WriteData(0x3C);

    WriteComm(0xC0);
    WriteData(0x31);
    WriteData(0x20);

    WriteComm(0xC1);
    WriteData(0x12);

    //WriteComm(0xC2);
    //WriteData(0x08);

    WriteComm(0xC3);
    WriteData(0x08);
    WriteData(0x00);
    WriteData(0x0A);
    WriteData(0x10);
    WriteData(0x08);
    WriteData(0x54);
    WriteData(0x45);
    WriteData(0x71);
    WriteData(0x2C);

    WriteComm(0xC4);
    WriteData(0x00);
    WriteData(0xA0);
    WriteData(0x79);
    WriteData(0x0E);
    WriteData(0x0A);
    WriteData(0x16);
    WriteData(0x79);
    WriteData(0x0E);
    WriteData(0x0A);
    WriteData(0x16);
    WriteData(0x79);
    WriteData(0x0E);
    WriteData(0x0A);
    WriteData(0x16);
    WriteData(0x82);
    WriteData(0x00);
    WriteData(0x03);


    WriteComm(0xD0);
    WriteData(0x04);
    WriteData(0x0C);
    WriteData(0x6A);
    WriteData(0x0F);
    WriteData(0x00);
    WriteData(0x03);

    WriteComm(0xD7);
    WriteData(0x00);
    WriteData(0x00);

    WriteComm(0xDE);
    WriteData(0x02);

    WriteComm(0xB8);
    WriteData(0x1D);
    WriteData(0xA0);
    WriteData(0x2F);
    WriteData(0x2C);
    WriteData(0x2B);

    WriteComm(0xC1);
    WriteData(0x10);
    WriteData(0x66);
    WriteData(0x66);
    WriteData(0x01);

    WriteComm(0xDE);
    WriteData(0x00);


    WriteComm(0x11);  	// SLPOUT
    tls_os_time_delay(120);


    WriteComm(0xDE);
    WriteData(0x02);

    WriteComm(0xC5);
    WriteData(0x4E);
    WriteData(0x00);
    WriteData(0x00);

    WriteComm(0xCA);
    WriteData(0x30);
    WriteData(0x20);
    WriteData(0xF4);

    WriteComm(0xDE);
    WriteData(0x04);

    WriteComm(0xD3);
    WriteData(0x3C);
    WriteComm(0xDE);
    WriteData(0x00);

#if BSP_LCD_Direction == 0
    WriteComm(0x36);
    WriteData(0x00); 	// 0°
#else
    WriteComm(0x36);
    WriteData(0xB0); 	// 0xB0 1011 0000 90°
#endif

    WriteComm(0x3A);
    WriteData(0x55); 	// rgb 565 bit

    WriteComm(0x29);  	// SLPOUT
}
#elif (LCD_TYPE == 1)
// ST7796S初始化
const uint8_t st7796s_init_seq[] = {
    /*  len , delay, cmd, data ... */
        0x02, 0x00, 0xF0, 0xC3,
        0x02, 0x00, 0xF0, 0x96,
        0x02, 0x00, 0x36, 0x68,
        0x02, 0x00, 0xB0, 0x80,  
        0x03, 0x00, 0xB6, 0x00, 0x02,
        0x05, 0x00, 0xB5, 0x02, 0x03, 0x00, 0x04,
        0x03, 0x00, 0xB1, 0x80, 0x10,
        0x02, 0x00, 0xB4, 0x00,
        0x02, 0x00, 0xB7, 0xC6,
        0x02, 0x00, 0xC5, 0x24,
        0x02, 0x00, 0xE4, 0x31,
        0x09, 0x00, 0xE8, 0x40, 0x8A, 0x00, 0x00, 0x29, 0x19, 0xA5, 0x33,
        0x02, 0x00, 0xC2, 0xA7,
        0x0F, 0x02, 0xE0, 0xF0, 0x09, 0x13, 0x12, 0x12, 0x2B, 0x3C, 0x44, 0x4B, 0x1B, 0x18, 0x17, 0x1D, 0x21,
        0x0F, 0x02, 0xE1, 0xF0, 0x09, 0x13, 0x0C, 0x0D, 0x27, 0x3B, 0x44, 0x4D, 0x0B, 0x17, 0x17, 0x1D, 0x21,

        // 旋转角度
        // (1<<3)|(1<<6)  0°
        // (1<<3)|(1<<5)  90°
        // (1<<3)|(1<<7)  180°
        // (1<<3)|(1<<7)|(1<<6)|(1<<5) 270°
#if BSP_LCD_Direction == 0
        0x02, 0x00, 0x36, 0x48, //0xEC 横向 0x48纵向
#else
        0x02, 0x00, 0x36, 0xEC, //0xEC 横向 0x48纵向
#endif

        0x02, 0x00, 0xF0, 0xC3,
        0x02, 0x00, 0xF0, 0x69,
        0x01, 0x02, 0x13,
        0x01, 0x78, 0x11,
        0x01, 0x02, 0x29,
#if(COLOR_FORMAT==0)
        0x02, 0x00, 0x3A, 0x05,  // 0x05 RGB555 0x66 RGB666
#else
        0x02, 0x00, 0x3A, 0x66,  // 0x05 RGB555 0x66 RGB666
#endif
        0
};
#elif (LCD_TYPE == 2)
// ILI9341初始化
const uint8_t ili9341_init_seq[] = {
    /*  len , delay, cmd, data ... */
        0x01, 0x14, 0x01,                         // Software reset
        0x04, 0x00, 0xCF, 0x00, 0xD9, 0x30,
        0x05, 0x00, 0xED, 0x64, 0x03, 0x12, 0x81,
        0x04, 0x00, 0xE8, 0x85, 0x10, 0x7A,
        0x06, 0x00, 0xCB, 0x39, 0x2C, 0x00, 0x34, 0x02,
        0x02, 0x00, 0xF7, 0x20,
        0x03, 0x00, 0xEA, 0x00, 0x00,
        0x02, 0x00, 0xC0, 0x1B, // Power control  VRH[5:0] 
        0x02, 0x00, 0xC1, 0x12, // Power control  SAP[2:0];BT[3:0] //0x01    
        0x03, 0x00, 0xC5, 0x26, 0x26,   // VCM control 3F 3C
        0x02, 0x00, 0xC7, 0xB0, // VCM control2 

        // 旋转角度
        // (1<<3)|(0<<6)|(0<<7) //BGR==1,MY==0,MX==0,MV==0
        // (1<<3)|(0<<7)|(1<<6)|(1<<5);//BGR==1,MY==1,MX==0,MV==1
        // (1<<3)|(1<<6)|(1<<7)//BGR==1,MY==0,MX==0,MV==0
        // (1<<3)|(1<<7)|(1<<5)//BGR==1,MY==1,MX==0,MV==1
#if BSP_LCD_Direction == 0
        0x02, 0x00, 0x36, 0x08, // (1<<3)|(0<<6)|(0<<7) 旋转角度0
#else
        0x02, 0x00, 0x36, (1<<3)|(1<<7)|(1<<5),
#endif

        0x02, 0x00, 0x3A, 0x55,      
        0x03, 0x00, 0xB1, 0x00, 0x1A,
        0x03, 0x00, 0xB6, 0x0A, 0xA2,
        0x02, 0x00, 0xF2, 0x00,      
        0x02, 0x00, 0x26, 0x01,   
        0x10, 0x00, 0xE0, 0x1F, 0x24, 0x24, 0x0D, 0x12, 0x09, 0x52, 0xB7, 0x3F, 0x0C, 0x15, 0x06, 0x0E, 0x08, 0x00,
        0x10, 0x00, 0xE1, 0x00, 0x1B, 0x1B, 0x02, 0x0E, 0x06, 0x2E, 0x48, 0x3F, 0x03, 0x0A, 0x09, 0x31, 0x37, 0x1F,
        0x05, 0x00, 0x2B, 0x00, 0x00, 0x01, 0x3F,
        0x05, 0x00, 0x2A, 0x00, 0x00, 0x00, 0xEF,
        0x01, 0x02, 0x13,
        0x01, 0x78, 0x11, // Exit sleep mode
        0x01, 0x02, 0x29,
        0
};
#elif (LCD_TYPE == 3)
// ILI9488初始化
const uint8_t ili9488_init_seq[] = {
    /*  len , delay, cmd, data ... */
        0x05, 0x00, 0xF7, 0xA9, 0x51, 0x2C, 0x82,
        0x03, 0x00, 0xC0, 0x11, 0x09,
        0x02, 0x00, 0xC1, 0x41,
        0x04, 0x00, 0xC5, 0x00, 0x0A, 0x80,
        0x03, 0x00, 0xB1, 0xB0, 0x11,
        0x02, 0x00, 0xB4, 0x02,
        0x03, 0x00, 0xB6, 0x02, 0x42,
        0x02, 0x00, 0xB7, 0xC6,
        0x03, 0x00, 0xBE, 0x00, 0x04,
        0x02, 0x00, 0xE9, 0x00,
        0x02, 0x00, 0x36, 0x08, // (1<<3)|(0<<6)|(0<<7) 旋转角度0
        0x02, 0x00, 0x3A, 0x66, // Pixel Formath 18bit
        0x10, 0x00, 0xE0, 0x00, 0x07, 0x10, 0x09, 0x17, 0x0B, 0x41, 0x89, 0x4B, 0x0A, 0x0C, 0x0E, 0x18, 0x1B, 0x0F,
        0x10, 0x00, 0xE1, 0x00, 0x17, 0x1A, 0x04, 0x0E, 0x06, 0x2F, 0x45, 0x43, 0x02, 0x0A, 0x09, 0x32, 0x36, 0x0F,
        0x01, 0x78, 0x11,
        0x01, 0x02, 0x29,
        0
};
// NV3041初始化
#elif (LCD_TYPE == 4)
const uint8_t nv3041n_init_seq[] = {
    /*  len , delay, cmd, data ... */
        0x02, 0x00, 0xFF, 0xA5,
        0x02, 0x00, 0xE7, 0x10,  // TE_output_en
        0x02, 0x00, 0x35, 0x00,  // TE_ interface_en 01
        0x02, 0x00, 0x36, 0xC0,
        0x02, 0x00, 0x3A, 0x01,  // 01---565，00---666
        0x02, 0x00, 0x41, 0x03,  // 01--8bit, 03-16bit
        0x02, 0x00, 0x44, 0x15,  // VBP 21
        0x02, 0x00, 0x45, 0x15,  // VFP 21
        0x02, 0x00, 0x7D, 0x03,  // vdds_trim[2:0]
        0x02, 0x00, 0xC1, 0xBB,  // avdd_clp_en avdd_clp[1:0] avcl_clp_en avcl_clp[1:0]  0xbb	 88		  a2
        0x02, 0x00, 0xC2, 0x05,  // vgl_clp_en vgl_clp[2:0]	
        0x02, 0x00, 0xC3, 0x10,  // vgl_clp_en vgl_clp[2:0]	
        0x02, 0x00, 0xC6, 0x3E,  // avdd_ratio_sel avcl_ratio_sel vgh_ratio_sel[1:0] vgl_ratio_sel[1:0]	35	      
        0x02, 0x00, 0xC7, 0x25,  // mv_clk_sel[1:0] avdd_clk_sel[1:0] avcl_clk_sel[1:0]	   2e
        0x02, 0x00, 0xC8, 0x11,  // VGL_CLK_sel
        0x02, 0x00, 0x7A, 0x5F,  // user_vgsp  4f:0.8V		3f:1.04V	5f
        0x02, 0x00, 0x6F, 0x44,  // user_gvdd  1C:5.61	  5f	 53		   2a	    3a
        0x02, 0x00, 0x78, 0x70,  // user_gvcl  50:-3.22	  75			58	     	66	
        0x02, 0x00, 0xC9, 0x00, 
        0x02, 0x00, 0x67, 0x21, 
        // gate_ed
        0x02, 0x00, 0x51, 0x0A,  // gate_st_o[7:0]       
        0x02, 0x00, 0x52, 0x76,  // gate_ed_o[7:0]     76
        0x02, 0x00, 0x53, 0x0A,  // gate_st_e[7:0]     76
        0x02, 0x00, 0x54, 0x76,  // gate_ed_e[7:0]
        // sorce
        0x02, 0x00, 0x46, 0x0A,  // fsm_hbp_o[5:0]
        0x02, 0x00, 0x47, 0x2A,  // fsm_hfp_o[5:0]
        0x02, 0x00, 0x48, 0x0A,  // fsm_hbp_e[5:0]
        0x02, 0x00, 0x49, 0x1A,  // fsm_hfp_e[5:0]
        0x02, 0x00, 0x56, 0x43,  // src_ld_wd[1:0] src_ld_st[5:0]
        0x02, 0x00, 0x57, 0x42,  // pn_cs_en src_cs_st[5:0]
        0x02, 0x00, 0x58, 0x3C,  // src_cs_p_wd[6:0]
        0x02, 0x00, 0x59, 0x64,  // src_cs_n_wd[6:0]
        0x02, 0x00, 0x5A, 0x41,  // src_pchg_st_o[6:0] 41
        0x02, 0x00, 0x5B, 0x3C,  // src_pchg_wd_o[6:0]
        0x02, 0x00, 0x5C, 0x02,  // src_pchg_st_e[6:0] 02
        0x02, 0x00, 0x5D, 0x3C,  // src_pchg_wd_e[6:0] 3c
        0x02, 0x00, 0x5E, 0x1F,  // src_pol_sw[7:0]
        0x02, 0x00, 0x60, 0x80,  // src_op_st_o[7:0]
        0x02, 0x00, 0x61, 0x3F,  // src_op_st_e[7:0]
        0x02, 0x00, 0x62, 0x21,  // src_op_ed_o[9:8] src_op_ed_e[9:8]
        0x02, 0x00, 0x63, 0x07,  // src_op_ed_o[7:0]
        0x02, 0x00, 0x64, 0xE0,  // src_op_ed_e[7:0]
        0x02, 0x00, 0x65, 0x02,  // chopper
        0x02, 0x00, 0xCA, 0x20,  // avdd_mux_st_o[7:0]
        0x02, 0x00, 0xCB, 0x52,  // avdd_mux_ed_o[7:0]
        0x02, 0x00, 0xCC, 0x10,  // avdd_mux_st_e[7:0]
        0x02, 0x00, 0xCD, 0x42,  // avdd_mux_ed_e[7:0]
        0x02, 0x00, 0xD0, 0x20,  // avcl_mux_st_o[7:0]
        0x02, 0x00, 0xD1, 0x52,  // avcl_mux_ed_o[7:0]
        0x02, 0x00, 0xD2, 0x10,  // avcl_mux_st_e[7:0]
        0x02, 0x00, 0xD3, 0x42,  // avcl_mux_ed_e[7:0]
        0x02, 0x00, 0xD4, 0x0A,  // vgh_mux_st[7:0]
        0x02, 0x00, 0xD5, 0x32,  // vgh_mux_ed[7:0]
        // test mode
        0x02, 0x00, 0xF8, 0x03,
        0x02, 0x00, 0xF9, 0x20,
        // 2-1
        // gammma  weihuan pianguangpian 0913
        0x02, 0x00, 0x80, 0x00,
        0x02, 0x00, 0xA0, 0x00,
        0x02, 0x00, 0x81, 0x05,
        0x02, 0x00, 0xA1, 0x05,

        0x02, 0x00, 0x82, 0x04,
        0x02, 0x00, 0xA2, 0x03,
        0x02, 0x00, 0x86, 0x25,
        0x02, 0x00, 0xA6, 0x1C,

        0x02, 0x00, 0x87, 0x2A,
        0x02, 0x00, 0xA7, 0x2A,
        0x02, 0x00, 0x83, 0x1D,
        0x02, 0x00, 0xA3, 0x1D,

        0x02, 0x00, 0x84, 0x1E,
        0x02, 0x00, 0xA4, 0x1E,

        0x02, 0x00, 0x85, 0x3F,
        0x02, 0x00, 0xA5, 0x3F,

        0x02, 0x00, 0x88, 0x0B,
        0x02, 0x00, 0xA8, 0x0B,

        0x02, 0x00, 0x89, 0x14,
        0x02, 0x00, 0xA9, 0x13,

        0x02, 0x00, 0x8A, 0x1A,
        0x02, 0x00, 0xAA, 0x1A,

        0x02, 0x00, 0x8B, 0x0A,
        0x02, 0x00, 0xAB, 0x0A,

        0x02, 0x00, 0x8C, 0x1C,
        0x02, 0x00, 0xAC, 0x0C,

        0x02, 0x00, 0x8D, 0x1F,
        0x02, 0x00, 0xAD, 0x0B,

        0x02, 0x00, 0x8E, 0x1F,
        0x02, 0x00, 0xAE, 0x0A,

        0x02, 0x00, 0x8F, 0x1F,
        0x02, 0x00, 0xAF, 0x07,

        0x02, 0x00, 0x90, 0x06,
        0x02, 0x00, 0xB0, 0x06,

        0x02, 0x00, 0x91, 0x0D,
        0x02, 0x00, 0xB1, 0x0D,

        0x02, 0x00, 0x92, 0x17,
        0x02, 0x00, 0xB2, 0x17,

        0x02, 0x00, 0xFF, 0x00,


        0x02, 0x74, 0x11, 0x00, // DELAY(120)
        0x02, 0x74, 0x29, 0x00, // DELAY(10)

        // 0x01, 0x74, 0x11,
        // 0x01, 0x00, 0x11,
        // 0x01, 0x64, 0x29,

        // 0x02, 0x74, 0x2C,
        0
};
// (1) pixel 5-6-5 --8bit and serial interface code 
void nv3041_init(void)
{ 
    //---------Start Initial Code ------//  
    WriteComm(0xff); 
    WriteData(0xa5); 
    WriteComm(0xE7); // TE_output_en 
    WriteData(0x10); 
    WriteComm(0x35); // TE_ interface_en 
    WriteData(0x01); // 01 
    WriteComm(0x36); //  
    WriteData(0x00); // c0---旋转180°
    WriteComm(0x3A); //  
    WriteData(0x01); // 01---565，00---666 
    WriteComm(0x40); 
    WriteData(0x00); // 01:IPS/00:TN 
    WriteComm(0x41); 
    WriteData(0x01); // 01--8bit/03--16bit 
    WriteComm(0x44); // VBP 
    WriteData(0x15); // 21 
    WriteComm(0x45); // VFP 
    WriteData(0x15); // 21 
    WriteComm(0x7d); // vdds_trim[2:0] 
    WriteData(0x03); 
 
    WriteComm(0xc1); // avdd_clp_en avdd_clp[1:0] avcl_clp_en avcl_clp[1:0] 
    WriteData(0xbb); // 0xbb 88 a2 
    WriteComm(0xc2); // vgl_clp_en vgl_clp[2:0] 
    WriteData(0x05); 
    WriteComm(0xc3); // vgl_clp_en vgl_clp[2:0] 
    WriteData(0x10); 
    WriteComm(0xc6); // avdd_ratio_sel avcl_ratio_sel vgh_ratio_sel[1:0] vgl_ratio_sel[1:0] 
    WriteData(0x3e); //  35 

    WriteComm(0xc7); // mv_clk_sel[1:0] avdd_clk_sel[1:0] avcl_clk_sel[1:0] 
    WriteData(0x25); // 2e 
    WriteComm(0xc8); // VGL_CLK_sel 
    WriteData(0x11); //  
    WriteComm(0x7a); // user_vgsp 
    WriteData(0x5f); 
    WriteComm(0x6f); // user_gvdd 
    WriteData(0x44); 
    WriteComm(0x78); // user_gvcl 
    WriteData(0x70); 
    WriteComm(0xc9); //  
    WriteData(0x00); 
    WriteComm(0x67); //  
    WriteData(0x21); 
    // gate_ed 
    WriteComm(0x51); // gate_st_o[7:0] 
    WriteData(0x0a); 
    WriteComm(0x52); // gate_ed_o[7:0] 
    WriteData(0x76); // 76 
    WriteComm(0x53); // gate_st_e[7:0] 
    WriteData(0x0a); // 76 
    WriteComm(0x54); // gate_ed_e[7:0] 
    WriteData(0x76); 
    // sorce 
    WriteComm(0x46); // fsm_hbp_o[5:0] 
    WriteData(0x0a); 
    WriteComm(0x47); // fsm_hfp_o[5:0] 
    WriteData(0x2a); 
    WriteComm(0x48); // fsm_hbp_e[5:0] 
    WriteData(0x0a); 
    WriteComm(0x49); // fsm_hfp_e[5:0] 
    WriteData(0x1a); 
    WriteComm(0x56); // src_ld_wd[1:0] src_ld_st[5:0] 
    WriteData(0x43); 
    WriteComm(0x57); // pn_cs_en src_cs_st[5:0] 
    WriteData(0x42); 
    WriteComm(0x58); // src_cs_p_wd[6:0] 
    WriteData(0x3c); 

    WriteComm(0x59); // src_cs_n_wd[6:0] 
    WriteData(0x64); 
    WriteComm(0x5a); // src_pchg_st_o[6:0] 
    WriteData(0x41); // 41 
    WriteComm(0x5b); // src_pchg_wd_o[6:0] 
    WriteData(0x3c); 
    WriteComm(0x5c); // src_pchg_st_e[6:0] 
    WriteData(0x02); // 02 
    WriteComm(0x5d); // src_pchg_wd_e[6:0] 
    WriteData(0x3c); // 3c 
    WriteComm(0x5e); // src_pol_sw[7:0] 
    WriteData(0x1f); 
    WriteComm(0x60); // src_op_st_o[7:0] 
    WriteData(0x80); 
    WriteComm(0x61); // src_op_st_e[7:0] 
    WriteData(0x3f); 
    WriteComm(0x62); // src_op_ed_o[9:8] src_op_ed_e[9:8] 
    WriteData(0x21); 
    WriteComm(0x63); // src_op_ed_o[7:0] 
    WriteData(0x07); 
    WriteComm(0x64); // src_op_ed_e[7:0] 
    WriteData(0xe0); 
    WriteComm(0x65); // chopper 
    WriteData(0x02); 
    WriteComm(0xca); // avdd_mux_st_o[7:0] 
    WriteData(0x20); 
    WriteComm(0xcb); // avdd_mux_ed_o[7:0] 
    WriteData(0x52); // 52 
    WriteComm(0xcc); // avdd_mux_st_e[7:0] 
    WriteData(0x10); 
    WriteComm(0xcD); // avdd_mux_ed_e[7:0] 
    WriteData(0x42); 
    WriteComm(0xD0); // avcl_mux_st_o[7:0] 
    WriteData(0x20); 
    WriteComm(0xD1); // avcl_mux_ed_o[7:0] 
    WriteData(0x52); 
    WriteComm(0xD2); // avcl_mux_st_e[7:0] 
    WriteData(0x10); 

    WriteComm(0xD3); // avcl_mux_ed_e[7:0] 
    WriteData(0x42); 
    WriteComm(0xD4); // vgh_mux_st[7:0] 
    WriteData(0x0a); 
    WriteComm(0xD5); // vgh_mux_ed[7:0] 
    WriteData(0x32); 
    // test mode 
    WriteComm(0xf8); //  
    WriteData(0x03); //  
    WriteComm(0xf9); //  
    WriteData(0x20); 
    // gammma 
    WriteComm(0x80); // gam_vrp0 
    WriteData(0x00); 
    WriteComm(0xA0); // gam_VRN0 
    WriteData(0x00); 
    WriteComm(0x81); // gam_vrp1 
    WriteData(0x05); 
    WriteComm(0xA1); // gam_VRN1 
    WriteData(0x05); 
    WriteComm(0x82); // gam_vrp2 
    WriteData(0x04); 
    WriteComm(0xA2); // gam_VRN2 
    WriteData(0x03); 
    WriteComm(0x86); // gam_prp0 
    WriteData(0x25); // 33 
    WriteComm(0xA6); // gam_PRN0 
    WriteData(0x1c); // 2a 
    WriteComm(0x87); // gam_prp1 
    WriteData(0x2a); // 2d 
    WriteComm(0xA7); // gam_PRN1 
    WriteData(0x2a); // 2d 
    WriteComm(0x83); // gam_vrp3 
    WriteData(0x1d); 
    WriteComm(0xA3); // gam_VRN3 
    WriteData(0x1d); 
    WriteComm(0x84); // gam_vrp4 
    WriteData(0x1e); 
    WriteComm(0xA4); // gam_VRN4 
    WriteData(0x1e); 
    WriteComm(0x85); // gam_vrp5 
    WriteData(0x3f); 
    WriteComm(0xA5); // gam_VRN5 
    WriteData(0x3f); 

    WriteComm(0x88); // gam_pkp0 
    WriteData(0x0b); // 0b 
    WriteComm(0xA8); // gam_PKN0 
    WriteData(0x0b); // 0b 
    WriteComm(0x89); // gam_pkp1 
    WriteData(0x14); // 14 
    WriteComm(0xA9); // gam_PKN1 
    WriteData(0x13); // 14 
    WriteComm(0x8a); // gam_pkp2 
    WriteData(0x1a); // 1a 
    WriteComm(0xAa); // gam_PKN2 
    WriteData(0x1a); // 1a 
    WriteComm(0x8b); // gam_PKP3 
    WriteData(0x0a); 
    WriteComm(0xAb); // gam_PKN3 
    WriteData(0x0a); 
    WriteComm(0x8c); // gam_PKP4 
    WriteData(0x1c); 
    WriteComm(0xAc); // gam_PKN4 
    WriteData(0x0c); 
    WriteComm(0x8d); // gam_PKP5 
    WriteData(0x1f); 
    WriteComm(0xAd); // gam_PKN5 
    WriteData(0x0b); 
    WriteComm(0x8e); // gam_PKP6 
    WriteData(0x1f); // 16 change 
    WriteComm(0xAe); // gam_PKN6 
    WriteData(0x0a); // 13change 
    WriteComm(0x8f); // gam_PKP7 
    WriteData(0x1f); 
    WriteComm(0xAf); // gam_PKN7 
    WriteData(0x07); 
    WriteComm(0x90); // gam_PKP8 
    WriteData(0x06); 
    WriteComm(0xB0); // gam_PKN8 
    WriteData(0x06); 
    WriteComm(0x91); // gam_PKP9 
    WriteData(0x0d); 
    WriteComm(0xB1); // gam_PKN9 
    WriteData(0x0d); 
 
    WriteComm(0x92); // gam_PKP10 
    WriteData(0x17); 
    WriteComm(0xB2); // gam_PKN10 
    WriteData(0x17); 
    WriteComm(0xff); 
    WriteData(0x00); 

    WriteComm(0x11); 
    tls_os_time_delay(120);
    WriteComm(0x29); 
    tls_os_time_delay(20);
} 
#elif (LCD_TYPE == 5)
// ST7796初始化
void st7796_init(void)
{
    WriteComm(0x11); // Sleep Out
    tls_os_time_delay(120);

    WriteComm(0xF0);     
    WriteData(0xC3);   

    WriteComm(0xF0);     
    WriteData(0x96);   

    WriteComm(0x36);     
    WriteData(0x48);   

    WriteComm(0x3A);     
    WriteData(0x55);   

    WriteComm(0xB4);     
    WriteData(0x01);     //Display Inversion Control

    WriteComm(0xB1);     
    WriteData(0x80);   //FRS[D7-D4], DIVA[D1-D0] 81 for 15Hz
    WriteData(0x10);   //RTNA[4:0]

    WriteComm(0xB5);     
    WriteData(0x1F);   //VFP FF for 15Hz
    WriteData(0x39);   //VBP FF for 15Hz
    WriteData(0x00);   
    WriteData(0x20);   //HBP

    WriteComm(0xB6);     
    WriteData(0x8A);   
    WriteData(0x07);   
    WriteData(0x27);   //320 Gates

    WriteComm(0xB7);     
    WriteData(0xC6);   

    WriteComm(0xB9);     
    WriteData(0x02);   
    WriteData(0xE0);   

    WriteComm(0xC0);     
    WriteData(0x80);   
    WriteData(0x05);   

    WriteComm(0xC1);     
    WriteData(0x15);   //15

    WriteComm(0xC2);     
    WriteData(0xA7);   

    WriteComm(0xC5);     
    WriteData(0x10);   

    WriteComm(0xE8);     
    WriteData(0x40);   
    WriteData(0x8A);   
    WriteData(0x00);   
    WriteData(0x00);   
    WriteData(0x29);   
    WriteData(0x19);   
    WriteData(0xAA);   
    WriteData(0x33);   

    WriteComm(0xE0);     
    WriteData(0xF0);   
    WriteData(0x03);   
    WriteData(0x09);   
    WriteData(0x02);   
    WriteData(0x01);   
    WriteData(0x01);   
    WriteData(0x33);   
    WriteData(0x44);   
    WriteData(0x49);   
    WriteData(0x3A);   
    WriteData(0x16);   
    WriteData(0x18);   
    WriteData(0x2F);   
    WriteData(0x34);   

    WriteComm(0xE1);     
    WriteData(0xF0);   
    WriteData(0x0F);   
    WriteData(0x15);   
    WriteData(0x0D);   
    WriteData(0x0D);   
    WriteData(0x28);   
    WriteData(0x32);   
    WriteData(0x33);   
    WriteData(0x49);   
    WriteData(0x03);   
    WriteData(0x0D);   
    WriteData(0x0E);   
    WriteData(0x28);   
    WriteData(0x2F);   

    WriteComm(0xF0);     
    WriteData(0x3C);   

    WriteComm(0xF0);     
    WriteData(0x69);   

    WriteComm(0x35);     
    WriteData(0x00);   

    WriteComm(0x29);     

    WriteComm(0x21);     

    WriteComm(0x2A);     
    WriteData(0x00);   
    WriteData(0x00);   
    WriteData(0x01);   
    WriteData(0x3F);   

    WriteComm(0x2B);     
    WriteData(0x00);   
    WriteData(0x00);   
    WriteData(0x01);   
    WriteData(0x3F);
}
#elif (LCD_TYPE == 6)
// BOE3.92IPS(GV039Z2Q-N80)-ST7796U-2.2Gamma-20211203
void st7796S_init(void)
{
    tls_os_time_delay(120);                //ms

    WriteComm(0xF0);     
    WriteData(0xC3);   

    WriteComm(0xF0);     
    WriteData(0x96);   

    WriteComm(0x36);     
    WriteData(0x48);   

    WriteComm(0x3A);     
    WriteData(0x55);   

    WriteComm(0xB4);     
    WriteData(0x00);   

    WriteComm(0xB6);     
    WriteData(0x8A);   
    WriteData(0x07);   
    WriteData(0x27);   //320 Gates

    WriteComm(0xB7);     
    WriteData(0xC6);   

    WriteComm(0xB9);     
    WriteData(0x02);   
    WriteData(0xE0);   

    WriteComm(0xC0);     
    WriteData(0x80);   
    WriteData(0x06);   

    WriteComm(0xC1);     
    WriteData(0x15);   

    WriteComm(0xC2);     
    WriteData(0xA7);   

    WriteComm(0xC5);     
    WriteData(0x04);   

    WriteComm(0xE8);     
    WriteData(0x40);   
    WriteData(0x8A);   
    WriteData(0x00);   
    WriteData(0x00);   
    WriteData(0x29);   
    WriteData(0x19);   
    WriteData(0xAA);   
    WriteData(0x33);   

    WriteComm(0xE0);     
    WriteData(0xF0);
    WriteData(0x06);
    WriteData(0x0F);
    WriteData(0x05);
    WriteData(0x04);
    WriteData(0x20);
    WriteData(0x37);
    WriteData(0x33);
    WriteData(0x4C);
    WriteData(0x37);
    WriteData(0x13);
    WriteData(0x14);
    WriteData(0x2B);
    WriteData(0x31);  

    WriteComm(0xE1);     
    WriteData(0xF0);
    WriteData(0x11);
    WriteData(0x1B);
    WriteData(0x11);
    WriteData(0x0F);
    WriteData(0x0A);
    WriteData(0x37);
    WriteData(0x43);
    WriteData(0x4C);
    WriteData(0x37);
    WriteData(0x13);
    WriteData(0x13);
    WriteData(0x2C);
    WriteData(0x32);  

    WriteComm(0xF0);     
    WriteData(0x3C);   

    WriteComm(0xF0);     
    WriteData(0x69);   

    WriteComm(0x35);     
    WriteData(0x00);   

    WriteComm(0x11);     

    tls_os_time_delay(120);                //ms

    WriteComm(0x29);     

    WriteComm(0x21);     

    WriteComm(0x2A);     
    WriteData(0x00);   
    WriteData(0x00);   
    WriteData(0x01);   
    WriteData(0x3F);   

    WriteComm(0x2B);     
    WriteData(0x00);   
    WriteData(0x00);   
    WriteData(0x01);   
    WriteData(0x3F);   

    // WriteComm(0x2C);     
}
#elif (LCD_TYPE == 7)
// GC9A01初始化---240*240
const uint8_t gc9a01_init_seq[] = {
    /*  len , delay, cmd, data ... */

    0x01, 0x00, 0xFE,       
    0x01, 0x00, 0xEF,

    0x02, 0x00, 0xEB, 0x14,

    0x02, 0x00, 0x84, 0x40,

    0x02, 0x00, 0x85, 0xFF,

    0x02, 0x00, 0x86, 0xFF,

    0x02, 0x00, 0x87, 0xFF,

    0x02, 0x00, 0x8E, 0xFF,

    0x02, 0x00, 0x8F, 0xFF,

    0x02, 0x00, 0x88, 0x0A,

    0x02, 0x00, 0x89, 0x21,

    0x02, 0x00, 0x8A, 0x00,

    0x02, 0x00, 0x8B, 0x80,

    0x02, 0x00, 0x8C, 0x01,

    0x02, 0x00, 0x8D, 0x01,

    0x03, 0x00, 0xB6, 0x00, 0x20,

    0x02, 0x00, 0x36, 0x48,

    0x02, 0x00, 0x3A, 0x05,

    0x05, 0x00, 0x90, 0x08, 0x08, 0x08, 0x08,

    0x02, 0x00, 0xBD, 0x06,

    0x02, 0x00, 0xBC, 0x00,

    0x04, 0x00, 0xFF, 0x60, 0x01, 0x04,

    0x02, 0x00, 0xC3, 0x13,

    0x02, 0x00, 0xC4, 0x13,

    0x02, 0x00, 0xC9, 0x22,

    0x02, 0x00, 0xBE, 0x11,

    0x03, 0x00, 0xE1, 0x10, 0x0E,

    0x04, 0x00, 0xDF, 0x21, 0x0c, 0x02,

    0x07, 0x00, 0xF0, 0x45, 0x09, 0x08, 0x08, 0x26, 0x2A,

    0x07, 0x00, 0xF1, 0x43, 0x70, 0x72, 0x36, 0x37, 0x6F,

    0x07, 0x00, 0xF2, 0x45, 0x09, 0x08, 0x08, 0x26, 0x2A,

    0x07, 0x00, 0xF3, 0x43, 0x70, 0x72, 0x36, 0x37, 0x6F,

    0x03, 0x00, 0xED, 0x1B, 0x0B,

    0x02, 0x00, 0xAE, 0x77,

    0x02, 0x00, 0xCD, 0x63,


    0x0A, 0x00, 0x70, 0x07, 0x07, 0x04, 0x0E, 0x0F, 0x09, 0x07, 0x08, 0x03,


    0x02, 0x00, 0xE8, 0x34,


    0x0D, 0x00, 0x62, 0x18, 0x0D, 0x71, 0xED, 0x70, 0x70, 0x18, 0x0F, 0x71, 0xEF, 0x70, 0x70,

    0x0D, 0x00, 0x63, 0x18, 0x11, 0x71, 0xF1, 0x70, 0x70, 0x18, 0x13, 0x71, 0xF3, 0x70, 0x70,


    0x08, 0x00, 0x64, 0x28, 0x29, 0xF1, 0x01, 0xF1, 0x00, 0x07,

    0x0B, 0x00, 0x66, 0x3C, 0x00, 0xCD, 0x67, 0x45, 0x45, 0x10, 0x00, 0x00, 0x00,

    0x0B, 0x00, 0x67, 0x00, 0x3C, 0x00, 0x00, 0x00, 0x01, 0x54, 0x10, 0x32, 0x98,

    0x08, 0x00, 0x74, 0x10, 0x85, 0x80, 0x00, 0x00, 0x4E, 0x00,


    0x03, 0x00, 0x98, 0x3e, 0x07,

				
    0x03, 0x00, 0x99, 0x3e, 0x07,//bvee 2x	

    0x02, 0x00, 0x35, 0x00,

    0x01, 0x78, 0x21,
	//--------end gamma setting--------------//

    0x01, 0x78, 0x11,

    0x01, 0x78, 0x29,

    0x01, 0x00, 0x2C,


    0
};
#endif

/************************** io模拟spi ****************************/
void  SendDataSPI(unsigned char dat)
{  
//    printf("---> %s\r\n",__func__);
   unsigned char i;
   
   for(i=0; i<8; i++)			
   {  
      if( (dat&0x80)!=0 ) tls_bitband_write(HR_GPIOA_DATA, LCD_MOSI, 1);
        else tls_bitband_write(HR_GPIOA_DATA, LCD_MOSI, 0);

      dat <<= 1;

	  tls_bitband_write(HR_GPIOA_DATA, LCD_SCL, 0);
      tls_bitband_write(HR_GPIOA_DATA, LCD_SCL, 1);			
   }
}

void WriteComm(unsigned int i)
{

    tls_bitband_write(HR_GPIOA_DATA, LCD_CS, 0);
	tls_bitband_write(HR_GPIOA_DATA, LCD_DC, 0);

	SendDataSPI(i);

	tls_bitband_write(HR_GPIOA_DATA, LCD_CS, 1);

}

void WriteData(unsigned int i)
{
    // printf("---> %s\r\n",__func__);
    tls_bitband_write(HR_GPIOA_DATA, LCD_CS, 0);
	tls_bitband_write(HR_GPIOA_DATA, LCD_DC, 1);

	SendDataSPI(i);

	tls_bitband_write(HR_GPIOA_DATA, LCD_CS, 1);
}

//---------Reset LCD Driver -------// 
void lcd_reset_pin()
{
    tls_gpio_write(LCD_RST, 1);
    tls_os_time_delay(20);
    tls_gpio_write(LCD_RST, 0);
    tls_os_time_delay(200);
    tls_gpio_write(LCD_RST, 1);
    tls_os_time_delay(120);
}

void lcd_gpio_init()
{
    tls_gpio_cfg(LCD_LED, WM_GPIO_DIR_OUTPUT, WM_GPIO_ATTR_FLOATING);
    tls_gpio_cfg(LCD_CS,  WM_GPIO_DIR_OUTPUT, WM_GPIO_ATTR_FLOATING);
    tls_gpio_cfg(LCD_DC,  WM_GPIO_DIR_OUTPUT, WM_GPIO_ATTR_FLOATING);
	tls_gpio_cfg(LCD_RST, WM_GPIO_DIR_OUTPUT, WM_GPIO_ATTR_PULLHIGH);
    tls_gpio_cfg(LCD_SCL,  WM_GPIO_DIR_OUTPUT, WM_GPIO_ATTR_FLOATING);
	tls_gpio_cfg(LCD_MOSI, WM_GPIO_DIR_OUTPUT, WM_GPIO_ATTR_PULLHIGH);

    tls_gpio_write(LCD_LED, 0);
    tls_gpio_write(LCD_CS, 1);
    tls_gpio_write(LCD_DC, 1);
    // tls_gpio_cfg(WM_IO_PA_07, WM_GPIO_DIR_OUTPUT, WM_GPIO_ATTR_PULLHIGH);
    // tls_gpio_write(WM_IO_PA_07, 1);
#if 0

    for(u8 i = WM_IO_PA_08; i <= WM_IO_PA_13; i++)
    {
        tls_gpio_cfg(i, WM_GPIO_DIR_OUTPUT, WM_GPIO_ATTR_PULLHIGH);
    }
    bool val = 0;
    while(1)
    {
        for(u8 i = WM_IO_PA_08; i <= WM_IO_PA_13; i++)
        {
            printf("%d\n", i);
            tls_gpio_write(i, val);
        }
        val = !val;
    }
#endif
}

#if (CHIP_TYPE == 0 && CHIP_TYPE == 2)
void lcd_back_on()
{
    tls_bitband_write(HR_GPIOA_DATA, LCD_LED, 1);
}

void lcd_back_off(void)
{
    tls_bitband_write(HR_GPIOA_DATA, LCD_LED, 0);
}

void lcd_set_dc_cs(bool dc, bool cs) 
{
    tls_bitband_write(HR_GPIOA_DATA, LCD_DC, dc);
    tls_bitband_write(HR_GPIOA_DATA, LCD_CS, cs);
}
#elif (CHIP_TYPE == 1)
void lcd_back_on()
{
    tls_bitband_write(HR_GPIOB_DATA, LCD_LED - 16, 1);
}

void lcd_back_off(void)
{
    tls_bitband_write(HR_GPIOB_DATA, LCD_LED - 16, 0);
}

void lcd_set_dc_cs(bool dc, bool cs) 
{
    tls_bitband_write(HR_GPIOB_DATA, LCD_DC - 16, dc);
    tls_bitband_write(HR_GPIOB_DATA, LCD_CS - 16, cs);
}
#else
void lcd_back_on()
{
	tls_gpio_write(LCD_LED, 1);
}

void lcd_back_off(void)
{
	tls_gpio_write(LCD_LED, 0);
}

void lcd_set_dc_cs(bool dc, bool cs) 
{
    tls_gpio_write(LCD_DC, dc);
    tls_gpio_write(LCD_CS, cs);
}
#endif

void lcd_wait_idle()
{

}

void lcd_write_cmd(const uint8_t cmd) 
{
    lcd_wait_idle();
    lcd_set_dc_cs(0, 0);

    sdio_spi_put(cmd);

    lcd_wait_idle();
    lcd_set_dc_cs(1, 1);
}

void lcd_write_data(const uint8_t data) 
{
    lcd_wait_idle();
    lcd_set_dc_cs(1, 0);
    
    sdio_spi_put(data);

    lcd_wait_idle();
    lcd_set_dc_cs(1, 1);
}

void lcd_write_cmd_data(const uint8_t *cmd, size_t count) 
{
    lcd_wait_idle();
    lcd_set_dc_cs(0, 0);
    sdio_spi_put(*cmd++);
    if (count >= 2) {
        lcd_wait_idle();
        lcd_set_dc_cs(1, 0);
        for (size_t i = 0; i < count - 1; ++i)
            sdio_spi_put( *cmd++);
    }
    lcd_wait_idle();
    lcd_set_dc_cs(1, 1);
}

void lcd_write_ram_preare()
{
    uint8_t cmd = 0x2c; // RAMWR
    lcd_write_cmd_data( &cmd, 1);
    lcd_set_dc_cs(1, 0);
}

void spi_lcd_init_cmd(const uint8_t *cmd)
{
    while (*cmd) 
    {
        lcd_write_cmd_data(cmd + 2, *cmd);
        u16 delay = *(cmd + 1);
        tls_os_time_delay(delay);
        cmd += *cmd + 2;
    }
}

void bsp_lcd_init() 
{
    lcd_gpio_init();
    lcd_reset_pin();
#if   (LCD_TYPE == 0)
    #if (0)  // gpio 模拟 spi
        st7789_init();
        init_sdio_spi_mode();
    #else
        init_sdio_spi_mode();
        spi_lcd_init_cmd(st7789_init_seq);
    #endif
    printf("---> LCD TYPE [%d] ST7789\n", LCD_TYPE);
#elif (LCD_TYPE == 1)
    init_sdio_spi_mode();
    spi_lcd_init_cmd(st7796s_init_seq);
    printf("---> LCD TYPE [%d] ST7796S\n", LCD_TYPE);
#elif (LCD_TYPE == 2)
    init_sdio_spi_mode();
    spi_lcd_init_cmd(ili9341_init_seq);
    printf("---> LCD TYPE [%d] ILI9341\n", LCD_TYPE);
#elif (LCD_TYPE == 3)
    init_sdio_spi_mode();
    spi_lcd_init_cmd(ili9488_init_seq);
    printf("---> LCD TYPE [%d] ILI9488\n", LCD_TYPE);
#elif (LCD_TYPE == 4)
    #if (1)  // gpio 模拟 spi
        nv3041_init();
        init_sdio_spi_mode();
    #else
        init_sdio_spi_mode();
        spi_lcd_init_cmd(nv3041n_init_seq);
    #endif
    printf("---> LCD TYPE [%d] NV3401\n", LCD_TYPE);
#elif (LCD_TYPE == 5)
    // gpio 模拟 spi
    st7796_init();
    init_sdio_spi_mode();
    printf("---> LCD TYPE [%d] ST7796\n", LCD_TYPE);
#elif (LCD_TYPE == 6)
    st7796S_init();
    init_sdio_spi_mode();
    printf("---> LCD TYPE [%d] ST7796S\n", LCD_TYPE);
#elif (LCD_TYPE == 7)
    init_sdio_spi_mode();
    spi_lcd_init_cmd(gc9a01_init_seq);
    printf("---> LCD TYPE [%d] GC9A01\n", LCD_TYPE);
#else
    printf("---> lcd driver module not beed installed!\n");
    return;
#endif
    lcd_back_on();

#if (USE_LCD_TASK == 1 && LCD_ASYNC_SEND == 1)
    lcd_task_create();
#endif
}

void lcd_set_windows(u16 x_start, u16 y_start, u16 x_end, u16 y_end)
{	
    // printf("---> x:%d y:%d x: %d y: %d\n", x_start, y_start, x_end, y_end);
	lcd_write_cmd(0x2A);	
	lcd_write_data(x_start>>8);
	lcd_write_data(0x00FF&x_start);		
	lcd_write_data(x_end>>8);
	lcd_write_data(0x00FF&x_end);

	lcd_write_cmd(0x2B);	
	lcd_write_data(y_start>>8);
	lcd_write_data(0x00FF&y_start);		
	lcd_write_data(y_end>>8);
	lcd_write_data(0x00FF&y_end);

	lcd_write_ram_preare();	//开始写入GRAM	
}   

void lcd_clear(u16 Color)
{
    u32 width  = BSP_LCD_X_PIXELS;
    u32 height = BSP_LCD_Y_PIXELS;
    u32 block  = 4;

#if(COLOR_FORMAT == 0) // RGB565
    u32 block_size = width*height*2/block;
    u8* buf = tls_mem_alloc(block_size);
    if(buf == NULL){
        printf("mem err\n");
    }

    for(u32 i = 0; i < block_size; i++){
        if(i%2==0) buf[i] = Color>>8;
        if(i%2==1) buf[i] = Color;
    }

#else
    u32 block_size = width*height*3/block;
    u8* buf = tls_mem_alloc(block_size);
    if(buf == NULL){
        printf("mem err\n");
    }

    for(u32 i = 0; i < block_size; i++){
        if(i%3==0) buf[i] = (Color>>8)&0xF8;
        if(i%3==1) buf[i] = (Color>>3)&0xFC;
        if(i%3==2) buf[i] = (Color<<3);
    }
#endif

    for(u8 i = 0; i < block; i++){
#if LCD_ASYNC_SEND
        wait_sdio_spi_dma_ready();
        lcd_set_windows(0, height/block*i, width-1, height/block*(i+1)-1);
        write_sdio_spi_dma_async((u32 *)buf, block_size);
#else
        lcd_set_windows(0, height/block*i, width-1, height/block*(i+1)-1);
        write_sdio_spi_dma((u32 *)buf, block_size);
#endif
        // tls_os_time_delay(HZ/1);
    }
    wait_sdio_spi_dma_ready();
    tls_mem_free(buf);
}

void lcd_full_picture(u16 image_width, u16 image_height, u8 *image_buf)
{
    if(image_width > BSP_LCD_X_PIXELS)
    {
        image_width = BSP_LCD_X_PIXELS;
    }

    if(image_height > BSP_LCD_Y_PIXELS)
    {
        image_height = BSP_LCD_Y_PIXELS;
    }
    
    u32 time = tls_os_get_time();
    u32 width  = image_width;
    u32 height = image_height;
    u32 block  = 4;
    
    u8 *img = image_buf;
#if(COLOR_FORMAT == 0) // RGB565
    u32 block_size = width*height*2/block;
#else
    u32 block_size = width*height*3/block;
#endif
    u8* buf = tls_mem_alloc(block_size);
    if(buf == NULL){
        printf("mem err\n");
    }

    for(u8 i = 0; i < block; i++){
        memcpy(buf, &img[i*block_size], block_size);
#if LCD_ASYNC_SEND
        wait_sdio_spi_dma_ready();
        lcd_set_windows(0, height/block*i, width-1, height/block*(i+1)-1);
        write_sdio_spi_dma_async((u32 *)buf, block_size);
#else
        lcd_set_windows(0, height/block*i, width-1, height/block*(i+1)-1);
        write_sdio_spi_dma((u32 *)buf, block_size);
#endif
        // tls_os_time_delay(HZ/1);
    }
    wait_sdio_spi_dma_ready();
    tls_mem_free(buf);
    printf("---> use %d ms\n", tls_os_get_time() - time);
}

void lcd_full_picture_from_spiflash(u16 image_width, u16 image_height, u32 offset)
{
    if(image_width > BSP_LCD_X_PIXELS)
    {
        image_width = BSP_LCD_X_PIXELS;
    }

    if(image_height > BSP_LCD_Y_PIXELS)
    {
        image_height = BSP_LCD_Y_PIXELS;
    }
    u32 time = tls_os_get_time();
    u32 width  = image_width;
    u32 height = image_height;
    u32 block  = 8;
    
#if(COLOR_FORMAT == 0) // RGB565
    u32 block_size = width*height*2/block;
#else
    u32 block_size = width*height*3/block;
#endif
    u8* buf = tls_mem_alloc(block_size);
    if(buf == NULL){
        printf("mem err\n");
    }

    for(u8 i = 0; i < block; i++){
        tls_spifls_read(i*block_size + offset, buf, block_size);
        // memcpy(buf, &img[i*block_size], block_size);

#if LCD_ASYNC_SEND
        wait_sdio_spi_dma_ready();
        lcd_set_windows(0, height/block*i, width-1, height/block*(i+1)-1);
        write_sdio_spi_dma_async((u32 *)buf, block_size);
#else
        lcd_set_windows(0, height/block*i, width-1, height/block*(i+1)-1);
        write_sdio_spi_dma((u32 *)buf, block_size);
#endif
        // tls_os_time_delay(HZ/1);
    }
    wait_sdio_spi_dma_ready();
    tls_mem_free(buf);
    printf("---> use %d ms\n", tls_os_get_time() - time);
    
}

void lcd_show_picture(u8 *data)
{
    u32 time = tls_os_get_time();
    u32 width  = 320;
    u32 height = 480;
    u32 block  = 8;
    
    u8 *img = data;
#if(COLOR_FORMAT == 0) // RGB565
    u32 block_size = width*height*2/block;
#else
    u32 block_size = width*height*3/block;
#endif
    u8* buf = tls_mem_alloc(block_size);
    if(buf == NULL){
        printf("mem err\n");
    }

    for(u8 i = 0; i < block; i++){
        memcpy(buf, &img[i*block_size], block_size);
#if LCD_ASYNC_SEND
        wait_sdio_spi_dma_ready();
        lcd_set_windows(0, height/block*i, width-1, height/block*(i+1)-1);
        write_sdio_spi_dma_async((u32 *)buf, block_size);
#else
        lcd_set_windows(0, height/block*i, width-1, height/block*(i+1)-1);
        write_sdio_spi_dma((u32 *)buf, block_size);
#endif
        // tls_os_time_delay(HZ/1);
    }
    wait_sdio_spi_dma_ready();
    tls_mem_free(buf);
    printf("---> use %d ms\n", tls_os_get_time() - time);
    
}

void bsp_lcd_draw_rect_wait(void)
{
    wait_sdio_spi_dma_ready();
}

void bsp_lcd_draw_rect(unsigned short x, unsigned short y, unsigned short width, unsigned short height, unsigned char *data)
{
#if (USE_LCD_TASK == 0)
    lcd_set_windows(x, y, x + width - 1, y + height - 1);
#endif

#if 0
    printf("x: %d y:%d, width %d height %d\n", x, y, width, height);
    u32 len = width * height * 2;
    for(u32 i = 0; i < len; i++)
    {
        lcd_write_data(data[i]);
    }
    return;
#endif

#if(COLOR_FORMAT == 0) // RGB565

    #if LCD_ASYNC_SEND
        #if USE_LCD_TASK
	    lcd_dma_queue_write(x, y, x + width - 1, y + height - 1, (u32 *)data, width * height * 2);
        #else
        write_sdio_spi_dma_async((u32 *)data, width * height * 2);
        #endif
    #else
        write_sdio_spi_dma((u32 *)data, width * height * 2);
    #endif

#else                  // RGB666

    u16 *p = (u16 *)data;
    u8 *buf = tls_mem_alloc((width * height * 3));

    for(u32 i = 0; i < width * height * 3; i++)
    {
        if(i%3==0) 
            buf[i] = (*p>>8)&0xF8;
        if(i%3==1) 
            buf[i] = (*p>>3)&0xFC;
        if(i%3==2){
            buf[i] = (*p<<3);
            p++;
        }
    }

    #if LCD_ASYNC_SEND
	write_sdio_spi_dma_async((u32 *)buf, width * height * 3);
    #else
    write_sdio_spi_dma((u32 *)buf, width * height * 3);
    #endif
    tls_mem_free(buf);

#endif
}

