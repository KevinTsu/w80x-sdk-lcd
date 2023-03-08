#include "encoder.h"

static int32_t encoder_diff;
static bool encoder_btn_state;
static u8 last_val = 255;





bool get_encoder_btn_state()
{
    return encoder_btn_state;
}

int32_t get_encoder_diff()
{
    return encoder_diff;
}

void set_encoder_diff(int32_t val)
{
    encoder_diff = val;
}

static void btn_isr_callback(void *context)
{
	u16 ret;
	ret = tls_get_gpio_irq_status(ENCODER_S);
	if(ret)
	{
		tls_clr_gpio_irq_status(ENCODER_S);
		encoder_btn_state = tls_gpio_read(ENCODER_S);
        // printf("---> btn: %d\n", encoder_btn_state);
	}
}

static void encoder_isr_callback(void *context)
{
    // printf("--->:%d %s\r\n", __LINE__, __func__);
    s8 flag_a = tls_get_gpio_irq_status(ENCODER_A);
    s8 flag_b = tls_get_gpio_irq_status(ENCODER_B);
    bool a = 0;
    bool b = 0;
    u8 val = 0;

    if(flag_a || flag_b)
    {
        if(flag_a) {
            tls_clr_gpio_irq_status(ENCODER_A);
        }
        if(flag_b) {
            tls_clr_gpio_irq_status(ENCODER_B);
        }

        a = tls_gpio_read(ENCODER_A);
        b = tls_gpio_read(ENCODER_B);

        val = (a<<1)+b;
        // printf("---> %d\n",val);
        if(last_val == 0)
        {
            if(val == 1){
                encoder_diff++;
                // printf("111111111111\n");
            }
            if(val == 2){
                encoder_diff--;
                // printf("222222222222\n");
            }
        }
        last_val = val;
    }
}

void bsp_encoder_init()
{
    tls_gpio_cfg(ENCODER_A, WM_GPIO_DIR_INPUT, WM_GPIO_ATTR_FLOATING);
	tls_gpio_isr_register(ENCODER_A, encoder_isr_callback, NULL);
	tls_gpio_irq_enable(ENCODER_A, WM_GPIO_IRQ_TRIG_DOUBLE_EDGE);

    tls_gpio_cfg(ENCODER_B, WM_GPIO_DIR_INPUT, WM_GPIO_ATTR_FLOATING);
	tls_gpio_isr_register(ENCODER_B, encoder_isr_callback, NULL);
	tls_gpio_irq_enable(ENCODER_B, WM_GPIO_IRQ_TRIG_DOUBLE_EDGE);

    tls_gpio_cfg(ENCODER_S, WM_GPIO_DIR_INPUT, WM_GPIO_ATTR_FLOATING);
	tls_gpio_isr_register(ENCODER_S, btn_isr_callback, NULL);
	tls_gpio_irq_enable(ENCODER_S, WM_GPIO_IRQ_TRIG_DOUBLE_EDGE);
}
