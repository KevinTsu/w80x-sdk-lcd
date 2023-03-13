#include "touchpad.h"
#include "lcd.h"
extern void delay_us();
static OS_STK TouchPadTaskStk[TOUCH_TASK_STACK_SIZE];
coord_TypeDef g_Coord;
//===========================================================================
// 静态函数声明
static void tp_gpio_init(void);
bool TP_Update_Coord(void);
static void tp_send_cmd(uint8_t dat);
static u16 _tp_read_coord(uint8_t reg);
void touchpad_task_create(void);


static void tp_gpio_init(void)
{
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
static bool tp_read_coord(uint16_t *x, uint16_t *y)
{
    uint16_t xTmp = tp_read_value(CMD_RDX);
    uint16_t yTmp = tp_read_value(CMD_RDY);
    *x = xTmp;
    *y = yTmp;
    if(0 == xTmp*yTmp){
        return false;
    }
    return true;
}
//============================================================================
// TouchPad 外部接口
//============================================================================
bool bsp_touchpad_is_pressed()
{
    return g_Coord.isPressed;
}

void bsp_touchpad_get_xy(int16_t *x, int16_t *y)
{
    (*x) = g_Coord.xCoord;
    (*y) = g_Coord.yCoord;
}

void bsp_touchpad_init(void)
{
    // memset(&g_Coord, 0, sizeof(coord_TypeDef));
    if(true){
        //未校准，使用默认校准系数
#if (LCD_TYPE == 1)
        g_Coord.xOffset = 200;  //x轴偏移200
        g_Coord.yOffset = 280;  //y轴偏移280
        g_Coord.xRate = 7.71;   //x轴比例系数7.71
        g_Coord.yRate = 10.94;  //y轴比例系数10.94
#else
        g_Coord.xOffset = 400;  //x轴偏移200
        g_Coord.yOffset = 280;  //y轴偏移280
        g_Coord.xRate = 11;     //x轴比例系数7.71
        g_Coord.yRate = 15.21;  //y轴比例系数10.94
#endif
    }else
    {
        //已校准，从flash中读取校准系数

    }
    tp_gpio_init();
    touchpad_task_create();
}




uint32_t TP_test(void)
{
    while (1)
    {
        TP_Update_Coord();
        printf("---> x:%d y:%d\n", g_Coord.xCoord, g_Coord.yCoord);
        tls_os_time_delay(HZ/10);
    }
}

bool TP_Update_Coord(void)
{
    bool sta = true;
    uint16_t x = 0;
    uint16_t y = 0;

    sta = tp_read_coord(&x, &y);
    if(true == sta){
        g_Coord.xCoord = (int16_t)((x - g_Coord.xOffset)/g_Coord.xRate);
        g_Coord.yCoord = (int16_t)((y - g_Coord.yOffset)/g_Coord.yRate);
        g_Coord.xIndev = x;
        g_Coord.yIndex = y;
    }
    return sta;
}


static void touchpad_task_start(void *data)
{
    while(1)
    {

        if(tls_gpio_read(TIRQ) == 0)
        {
            g_Coord.isPressed = 1;
            TP_Update_Coord();
        }
        else
        {
            g_Coord.isPressed = 0;
        }
        // printf("---> x:%d y:%d\n", g_Coord.xCoord, g_Coord.yCoord);
        tls_os_time_delay(HZ/100);
    }
}


void touchpad_task_create(void)
{
    tls_os_task_create(NULL, 
                      "touch",
                       touchpad_task_start,
                       NULL,
                       (void *)TouchPadTaskStk,          /* task's stack start address */
                       TOUCH_TASK_STACK_SIZE, /* task's stack size, unit:byte */
                       TOUCH_TASK_PRORITY,
                       0);

}
