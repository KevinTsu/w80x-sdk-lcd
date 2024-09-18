#ifndef __LIBJPEG_H__
#define __LIBJPEG_H__

#include <stdint.h>


/**
 * @brief           This function is used to convert YUV422 to JPEG
 *
 * @param      	    data    		The address of the YUV422 image
 *					image_width		The width of the YUV422 image
 *					image_height	The height of the YUV433 image
 *					dest			The address of the JPEG image
 *					dest_buf_len	The size of the available space in the destination buffer
 *					quality			compression ratio 0~ 100
 *
 * @retval          timer's	current  value
 *
 * @note            none
 */

int yuv422_to_jpeg(unsigned char *data, int image_width, int image_height, uint8_t *dest, uint32_t dest_buf_len, int quality);

typedef void *decom_cb(uint8_t *buf, uint32_t len);
/**
 * @brief           This function is used to decompress JPEG file.
 *
 * @param      	    src    			The address of the JPEG file. When using infile, the value is passed as NULL.
 *					src_len			The size of the JPEG file. When src is NULL, the value is passed as 0.
 *					infile			The file path of the JPEG file. When using src, the value is passed as NULL.
 *					once_len		How many lines of decompressed data are output each time in the callback function.
 *					cb				Output decompression data callback function.
 *
 * @retval          0
 *
 * @note            none
 */

typedef void *decom_cb(uint8_t *buf, uint32_t len);

int jpeg_to_rgb(uint8_t *src, uint32_t src_len, char * infile, uint32_t once_len, decom_cb cb);

int jpeg_to_rgb565(char * input, char * output);

#endif

