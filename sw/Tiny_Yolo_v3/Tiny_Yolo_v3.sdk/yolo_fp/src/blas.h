#ifndef BLAS_H
#define BLAS_H
#include "darknet.h"

void fill_cpu(int N, fp_data_type ALPHA, fp_data_type *X, int INCX);
void copy_cpu(int N, fp_data_type *X, int INCX, fp_data_type *Y, int INCY);
void normalize_cpu(float *x, float *mean, float *variance, int batch, int filters, int spatial);
void upsample_cpu(fp_data_type *in, int w, int h, int c, int batch, int stride, int forward,  fp_data_type scale, fp_data_type *out);
void scal_cpu(int N, float ALPHA, float *X, int INCX);

#endif
