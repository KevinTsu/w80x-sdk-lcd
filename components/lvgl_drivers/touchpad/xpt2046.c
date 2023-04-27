#include "xpt2046.h"
#include "touchpad.h"

#if(USE_TOUCHPAD == 1 && (TOUCHPAD_TYPE == 0 || TOUCHPAD_TYPE == 1))

extern void delay_us();

#define CMD_RDX 0X90
#define CMD_RDY 0XD0


void xpt2046_gpio_init(void)
{
    // printf("---> %s\r\n",__func__);
    tls_gpio_cfg(TCLK, WM_GPIO_DIR_OUTPUT, WM_GPIO_ATTR_PULLHIGH);
    tls_gpio_cfg(TCS,  WM_GPIO_DIR_OUTPUT, WM_GPIO_ATTR_PULLHIGH);
    tls_gpio_cfg(TDIN, WM_GPIO_DIR_OUTPUT, WM_GPIO_ATTR_PULLHIGH);

    tls_gpio_cfg(TDOU, WM_GPIO_DIR_INPUT,  WM_GPIO_ATTR_PULLHIGH);

    tls_gpio_cfg(TIRQ, WM_GPIO_DIR_INPUT,  WM_GPIO_ATTR_PULLHIGH);
	// tls_gpio_isr_register(TIRQ, tp_gpio_isr_handler, NULL);
	// tls_gpio_irq_enable(TIRQ, WM_GPIO_IRQ_TRIG_DOUBLE_EDGE);
}

static void tp_send_cmd(uint8_t dat){
    for(uint8_t i=0;i<8;i++){
        if(dat & 0x80){
            tls_gpio_write(TDIN, 1);
        }else{
            tls_gpio_write(TDIN, 0);
        }
        dat <<= 1;
        tls_gpio_write(TCLK, 0);
        tls_gpio_write(TCLK, 1);
    }
}
//============================================================================
// 获取坐标、坐标处理
//============================================================================
static uint16_t _tp_read_coord(uint8_t reg){
    uint16_t tmp = 0;

    tls_gpio_write(TCLK, 0);
	tls_gpio_write(TDIN, 0);
	tls_gpio_write(TCS, 0);
    tp_send_cmd(reg);
    delay_us(6);   //busy
    tls_gpio_write(TCLK, 0);
	delay_us(1);
	tls_gpio_write(TCLK, 1);// 给1个时钟，清除BUSY
	tls_gpio_write(TCLK, 0);
    for(uint8_t i=0;i<16;i++){
        tmp <<= 1;
        tls_gpio_write(TCLK, 0);	// 下降沿有效
		tls_gpio_write(TCLK, 1);	
		if(tls_gpio_read(TDOU)){
            tmp++;
        }
    }
    tmp >>= 4;
    tls_gpio_write(TCS, 1);
    return tmp;
}

/*
 * 输入：寄存器
 * 输出：坐标值 / 0：错误值
 */
#define LOST_CNT    1   //丢弃值
#define BUFF_SIZE   10
static uint16_t tp_read_value(uint8_t xy_reg){
    uint16_t tmp = 0;
    uint16_t buff[BUFF_SIZE] = {0};
    uint32_t sum = 0;
    uint8_t errCnt = 0;

    for(uint8_t i=0;i<BUFF_SIZE;){
        tmp = _tp_read_coord(xy_reg);
        if((0xFFF != tmp) && (0 != tmp)){
            // 过滤掉错误的值
            buff[i] = tmp;
            i++;
        }else{
            // 防止阻塞
            errCnt++;
        }
        if(errCnt > 100){
            return 0;
        }
    }

    //升序排序
    for(uint8_t i=0;i<BUFF_SIZE-1;i++){
        for(uint8_t j=i+1;j<BUFF_SIZE;j++){
            if(buff[i] > buff[j]){
                tmp = buff[i];
                buff[i] = buff[j];
                buff[j] = tmp;
            }
        }
    }

    //掐头去尾 —— 去掉一个最高值和最低值
    for(uint8_t i=LOST_CNT;i<BUFF_SIZE-LOST_CNT;i++){
        sum += buff[i];
    }
    tmp = sum/(BUFF_SIZE-2*LOST_CNT);
    return tmp;
}
/*
 * 输入：x/y 坐标地址
 * 输出：true:获取正确坐标 / false：获取坐标失败
 */
bool xpt2046_read_coord(uint16_t *x, uint16_t *y)
{

    uint16_t xTmp = tp_read_value(CMD_RDX);
    uint16_t yTmp = tp_read_value(CMD_RDY);
    *x = xTmp;
    *y = yTmp;
    // printf("---> %d, %d\n",xTmp,yTmp);
    if(0 == xTmp*yTmp){
        return false;
    }
    return true;
}

#endif








