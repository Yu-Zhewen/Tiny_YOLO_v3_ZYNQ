#include "gemm.h"
#include "analysis.h"

void gemm(int TA, int TB, int M, int N, int K, float ALPHA,
		fp_weight_type *A, int lda,
		fp_data_type *B, int ldb,
        float BETA,
		fp_data_type *C, int ldc)
{
    gemm_cpu( TA,  TB,  M, N, K, ALPHA,A,lda, B, ldb,BETA,C,ldc);
}

//void gemm_nn(int M, int N, int K, float ALPHA,
//		fp_weight_type *A, int lda,
//		fp_data_type *B, int ldb,
//		fp_data_type *C, int ldc)
//{
//    int i,j,k;
//
//    for(i = 0; i < M; ++i){
//        for(k = 0; k < K; ++k){
//            register fp_type A_PART = A[i*K+k];
//            for(j = 0; j < N; ++j){
//                C[i*N+j] += A_PART*B[k*N+j];
//            }
//        }
//    }
//}

void gemm_nt(int M, int N, int K, float ALPHA,
		fp_weight_type *A, int lda,
		fp_data_type *B, int ldb,
		fp_data_type *C, int ldc)
{
    int i,j,k;
    //#pragma omp parallel for
    for(i = 0; i < M; ++i){
        for(j = 0; j < N; ++j){
            register ap_fixed<32,16,AP_RND_CONV,AP_SAT> sum = 0;
            for(k = 0; k < K; ++k){
                sum += A[i*K+k]*B[j*K + k];

//                if(A[i*K+k]>weight_bn_max)
//                	weight_bn_max = A[i*K+k];
//                if(A[i*K+k]<weight_bn_min)
//                	weight_bn_min = A[i*K+k];
//
//                if(B[j*K + k]>conv_in_max)
//                	conv_in_max = B[j*K + k];
//                if(B[j*K + k]<conv_in_min)
//                	conv_in_min = B[j*K + k];

            }
            C[i*N+j] = sum;
        }
    }
}
//
//void gemm_tn(int M, int N, int K, float ALPHA,
//        float *A, int lda,
//        float *B, int ldb,
//        float *C, int ldc)
//{
//    int i,j,k;
//    //#pragma omp parallel for
//    for(i = 0; i < M; ++i){
//        for(k = 0; k < K; ++k){
//            register float A_PART = ALPHA*A[k*lda+i];
//            for(j = 0; j < N; ++j){
//                C[i*ldc+j] += A_PART*B[k*ldb+j];
//            }
//        }
//    }
//}
//
//void gemm_tt(int M, int N, int K, float ALPHA,
//        float *A, int lda,
//        float *B, int ldb,
//        float *C, int ldc)
//{
//    int i,j,k;
//    //#pragma omp parallel for
//    for(i = 0; i < M; ++i){
//        for(j = 0; j < N; ++j){
//            register float sum = 0;
//            for(k = 0; k < K; ++k){
//                sum += ALPHA*A[i+k*lda]*B[k+j*ldb];
//            }
//            C[i*ldc+j] += sum;
//        }
//    }
//}

void gemm_cpu(int TA, int TB, int M, int N, int K, float ALPHA,
		fp_weight_type *A, int lda,
		fp_data_type *B, int ldb,
        float BETA,
		fp_data_type *C, int ldc)
{
    //printf("cpu: %d %d %d %d %d %f %d %d %f %d\n",TA, TB, M, N, K, ALPHA, lda, ldb, BETA, ldc);
//    int i, j;
//    for(i = 0; i < M; ++i){
//        for(j = 0; j < N; ++j){
//            C[i*ldc + j] *= BETA;
//        }
//    }
//    if(!TA && !TB)
//        gemm_nt(M, N, K, ALPHA,A,lda, B, ldb,C,ldc);
//    else if(TA && !TB)
//        gemm_tn(M, N, K, ALPHA,A,lda, B, ldb,C,ldc);
//    else if(!TA && TB)
        gemm_nt(M, N, K, ALPHA,A,lda, B, ldb,C,ldc);
//    else
//        gemm_tt(M, N, K, ALPHA,A,lda, B, ldb,C,ldc);
}
