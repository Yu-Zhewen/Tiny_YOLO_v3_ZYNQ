#ifndef IM2COL_H
#define IM2COL_H
#include "darknet.h"


fp_data_type im2col_get_pixel(fp_data_type *im, int height, int width, int channels,
                        int row, int col, int channel, int pad);
void im2col_cpu(fp_data_type* data_im,
     int channels,  int height,  int width,
     int ksize,  int stride, int pad, fp_data_type* data_col);
#endif
