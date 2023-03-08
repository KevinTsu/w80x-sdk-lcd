#include "lv_port_tick.h"
#include "wm_timer.h"

static void tick_timer_irq(u8 *arg)
{
	lv_tick_inc(LV_TICK_PERIOD_MS);
}

void lv_create_tick(void)
{
	u8 timer_id;
	struct tls_timer_cfg timer_cfg;
	
	timer_cfg.unit = TLS_TIMER_UNIT_MS;
	timer_cfg.timeout = 1;
	timer_cfg.is_repeat = 1;
	timer_cfg.callback = (tls_timer_irq_callback)tick_timer_irq;
	timer_cfg.arg = NULL;
	timer_id = tls_timer_create(&timer_cfg);
	tls_timer_start(timer_id);
	// printf("timer start\n");	
}
