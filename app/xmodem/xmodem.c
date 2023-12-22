#include "wm_include.h"
#include "wm_flash.h"
#include "wm_crypto_hard.h"
#include "wm_internal_flash.h"

#if 1
struct
{
	int size;
	int protocol;
	int index;
	int curPackNO;	
	char buff[1024+5];
}xmodeData;

#define XMODEM          0x01
#define XMODEM1K      0x02

#define SOH		0x1
#define STX		0x2
#define EOT		0x4
#define ACK		0x6
#define NAK		0x15
#define CANCEL	0x18

struct
{
	int size;
    int curAddr;
}flashData;





void xmodem_download(void)
{
	// int i;
	int step = 0;

	// char buff[128];
	int recsize;
	// int wrtsize;

	uint32_t crcInt = 0;
	unsigned short crcWord;			
	psCrcContext_t ctx;

    int i;
    int off,retv;

	printf("---> Entry xmodem transmission ...\n");


    //0x81FA000UL
    off = 0x8200000/INSIDE_FLS_SECTOR_SIZE;
    //for(i=0; i<200; i++)
    printf("---> tls_fls_erase start!\n");
    for(i=0; i<414; i++)
    {
        retv=tls_fls_erase(off+i);
        if(retv !=TLS_FLS_STATUS_OK)
        {
            printf("---> tls_fls_erase false in sector=%d,%d\n",i+off,retv);
            break;
        }
    }
    printf("---> tls_fls_erase finish!\n");


    tls_fls_init();	
    //printf("111\n");
	tls_crypto_init();
    // printf("222\n");    




    printf("---> Switching baud rate to 2000000\n");
    printf("---> Wait for data reception ...\n");
    //tls_uart_set_baud_rate(TLS_UART_0, 115200);
	tls_uart_set_baud_rate(TLS_UART_0, 2000000);
	tls_uart_rx_callback_register(TLS_UART_0, NULL, NULL);
    //printf("333\n");




    //tls_gpio_cfg(WM_IO_PB_05, WM_GPIO_DIR_OUTPUT, WM_GPIO_ATTR_PULLHIGH);
    //tls_gpio_write(WM_IO_PB_05,0);	


	xmodeData.size = 0;
	xmodeData.curPackNO = 1;

    flashData.size = 0;
    flashData.curAddr = 0;

	while(1)
	{
        if(step == 1)
        {
            //printf("1111");			
            recsize = tls_uart_read(TLS_UART_0, (u8 *)xmodeData.buff+xmodeData.size, 128); 
            xmodeData.size += recsize;
            if(recsize>0)
            {
                //printf("%d\n",recsize);
                //xmodeData.buff[recsize] = 0;
                //printf("%s",xmodeData.buff);
                step=2;
                flashData.size = 0;
                flashData.curAddr = 0;	

                //tls_gpio_write(WM_IO_PB_05,0);	
            }
        }
        switch(step)
        {
            case 0:
            case 1:	
                if(step == 0)
                {
                    xmodeData.size=0;
                    xmodeData.curPackNO = 1;
                }
                do
                {
                    recsize = tls_uart_read(TLS_UART_0, (u8 *)xmodeData.buff+xmodeData.size, 128);
                    if(recsize == 0)
                    {
                        tls_os_time_delay(1); 
                    }
                    recsize = tls_uart_read(TLS_UART_0, (u8 *)xmodeData.buff+xmodeData.size, 128);
                }while(recsize);

                tls_uart_write(TLS_UART_0, "C", 1);
                tls_os_time_delay(100);
                step = 1;
            break;
            case 2:
                recsize = tls_uart_read(TLS_UART_0, (u8 *)xmodeData.buff+xmodeData.size, 128); 
                xmodeData.size += recsize;
                if(recsize>0)
                {
                    //printf("%d\n",recsize);
                    //buff[recsize] = 0;
                    //printf("%s",buff);
                }
                else
                {
                    //if(xmodeData.size>)
                    {
                            
                    }
                }
                if((xmodeData.size == 1) && (xmodeData.buff[0] == EOT))
                {
                    char respon[1];

                    respon[0] = ACK;
                    tls_uart_write(TLS_UART_0, &respon[0], 1);
                    //printf("4444");
                    step = 0;
                    xmodeData.size=0;

                    //tls_gpio_write(WM_IO_PB_05,1);	
                    tls_os_time_delay(200);
                    // printf("finish,OK\n");
                    break;	
                }
                if(xmodeData.size>3)
                {
                    xmodeData.protocol=xmodeData.buff[0];
                    xmodeData.index = xmodeData.buff[1];
                    if((255-xmodeData.index) != xmodeData.buff[2])
                    {
                        // printf("2222");			
                        step = 0;
                        xmodeData.size=0;
                    
                        break;
                    }
                    if(xmodeData.index != xmodeData.curPackNO)
                    {
                        if(xmodeData.index == xmodeData.curPackNO-1)
                        {
                            
                        }
                        
                        // printf("3333");
                        step = 0;
                        xmodeData.size=0;
                        break;						
                    }
                    if(xmodeData.protocol == XMODEM)
                    {
                        if(xmodeData.size == 128+5)
                        {
                            char respon[1];
                            /* Calculate the current frame's CRC and copy the firmware data to the load_address. */
                            tls_crypto_crc_init(&ctx, 0, CRYPTO_CRC_TYPE_16_CCITT, 0);
                            tls_crypto_crc_update(&ctx, (unsigned char *)&xmodeData.buff[3], 128);
                            tls_crypto_crc_final(&ctx, &crcInt);

                            crcWord = (xmodeData.buff[128+5-2]<<8)+xmodeData.buff[128+5-1];

                            if(crcInt == crcWord)/* Check the current frame's CRC. */
                            {
                                respon[0] = ACK;	
                                xmodeData.curPackNO++;
                                if(xmodeData.curPackNO == 256)
                                {
                                    xmodeData.curPackNO=0;
                                }

                                //u32 time = tls_os_get_time();
                                //tls_spifls_write(flashData.curAddr,  (u8 *)&xmodeData.buff[3], 128);
                                //tls_fls_write(0x200000 + flashData.curAddr,  (u8 *)&xmodeData.buff[3], 128);
                                tls_fls_write_without_erase(0x200000 + flashData.curAddr,  (u8 *)&xmodeData.buff[3], 128);
                                //printf("---> wr %d ms\n", tls_os_get_time() - time);

                                flashData.size += 128;
                                flashData.curAddr += 128; 
                            }
                            else
                            {
                                respon[0] = NAK;
                            }
                            tls_uart_write(TLS_UART_0, &respon[0], 1);
                            xmodeData.size=0;
                        }
                    }
                    else if(xmodeData.protocol == XMODEM1K)
                    {
                        if(xmodeData.size == 1024+5)
                        {
                            char respon[1];
                            /* Calculate the current frame's CRC and copy the firmware data to the load_address. */
                            tls_crypto_crc_init(&ctx, 0, CRYPTO_CRC_TYPE_16_CCITT, 0);
                            tls_crypto_crc_update(&ctx, (unsigned char *)&xmodeData.buff[3], 1024);
                            tls_crypto_crc_final(&ctx, &crcInt);

                            crcWord = (xmodeData.buff[1024+5-2]<<8)+xmodeData.buff[1024+5-1];

                            if(crcInt == crcWord)/* Check the current frame's CRC. */
                            {
                                respon[0] = ACK;	
                                xmodeData.curPackNO++;
                                if(xmodeData.curPackNO == 256)
                                {
                                    xmodeData.curPackNO=0;
                                }

                                //tls_gpio_write(WM_IO_PB_05,0);
                                //u32 time = tls_os_get_time();
                                //tls_spifls_write(flashData.curAddr, (u8 *)&xmodeData.buff[3], 1024);
                                //tls_fls_write(0x200000 + flashData.curAddr, (u8 *)&xmodeData.buff[3], 1024);
                                tls_fls_write_without_erase(0x200000 + flashData.curAddr, (u8 *)&xmodeData.buff[3], 1024);
                                //printf("---> wr2 %d ms\n", tls_os_get_time() - time);
                                //tls_gpio_write(WM_IO_PB_05,1);

                                flashData.size += 1024;
                                flashData.curAddr += 1024;                               
                            }
                            else
                            {
                                respon[0] = NAK;
                            }
                            tls_uart_write(TLS_UART_0, &respon[0], 1);							
                            xmodeData.size=0;
                        }						
                    }
                }
                step =2;
                break;
        }
			// tls_os_time_delay(1);
	}

    //tls_gpio_write(WM_IO_PB_05,1);
}
#endif
