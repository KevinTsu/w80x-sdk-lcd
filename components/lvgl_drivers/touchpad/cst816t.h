#ifndef __cst816t__h
#define __cst816t__h



#if 1
#define cst816t_debug(format, ...) printf("[ cst816t]- ",format,##__VA_ARGS__);
#else
#define cst816t_debug(format, ...) ;
#endif

#define TP_DRIVER_ADDR      0X15
#define TP_DRIVER_WRITE     TP_DRIVER_ADDR<<1 //0X2A
#define TP_DRIVER_READ      (TP_DRIVER_ADDR<<1)+1 //0X2B

u8 cst816t_init(void);
uint8_t cst816t_chipId(void);
int cst816t_read_pos(uint8_t *touch_points_num, uint16_t *x, uint16_t *y);


#endif
