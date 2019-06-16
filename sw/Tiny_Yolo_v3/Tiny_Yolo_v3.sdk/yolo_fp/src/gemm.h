#ifndef GEMM_H
#define GEMM_H

#include "darknet.h"


void gemm(int TA, int TB, int M, int N, int K, float ALPHA,
		fp_weight_type *A, int lda,
		fp_data_type *B, int ldb,
        float BETA,
		fp_data_type *C, int ldc);

void gemm_nn(int M, int N, int K, float ALPHA,
		fp_weight_type *A, int lda,
		fp_data_type *B, int ldb,
		fp_data_type *C, int ldc);

void gemm_nt(int M, int N, int K, float ALPHA,
		fp_weight_type *A, int lda,
		fp_data_type *B, int ldb,
		fp_data_type *C, int ldc);
//
//void gemm_tn(int M, int N, int K, float ALPHA,
//        float *A, int lda,
//        float *B, int ldb,
//        float *C, int ldc);
//
//void gemm_tt(int M, int N, int K, float ALPHA,
//        float *A, int lda,
//        float *B, int ldb,
//        float *C, int ldc);

void gemm_cpu(int TA, int TB, int M, int N, int K, float ALPHA,
		fp_weight_type *A, int lda,
		fp_data_type *B, int ldb,
        float BETA,
		fp_data_type *C, int ldc);

#endif
