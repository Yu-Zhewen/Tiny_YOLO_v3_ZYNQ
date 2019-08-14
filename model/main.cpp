#include "system_model.h"
#include <stdio.h>

int main()
{
    int N_max = 32;
    int P_mem = 2;
    int OITR = 4;
    int OP_lim = 6;

    int P_acc = 4;
    int P_pool = 2;
    int P_upsamp = 4;
    int P_yolo = 4;

    int BRAM_sys = BRAM_estimator(N_max,P_mem,P_acc);
    int DSP_sys = DSP_estimator(N_max,P_mem,OITR,OP_lim,P_acc,P_yolo);

    int II_sys = II_estimator(N_max,P_mem,OITR,OP_lim,P_acc,P_pool,P_upsamp,P_yolo);
    double Latency_network = network_Latency_estimator(II_sys,OITR,N_max,P_pool);

    printf("****YOLO System Model****\n");
    printf("**BRAM estimate:%d\n",BRAM_sys);
    printf("**DSP estimate:%d\n",DSP_sys);
    printf("**II estimate:%d\n",II_sys);
    printf("**Latency estimate: %f (ms)\n",Latency_network);
    printf("*************************\n");
}
