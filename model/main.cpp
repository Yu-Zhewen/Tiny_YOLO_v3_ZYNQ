#include "system_model.h"
#include <stdio.h>

// int main()
// {
//     int N_max = 16;
//     int P_mem = 2;
//     int OITR = 4;
//     int OP_lim = 6;
//
//     int P_acc = 1;
//     int P_pool = 2;
//     int P_upsamp = 1;
//     int P_yolo = 1;
//
//     int BRAM_sys = BRAM_estimator(N_max,P_mem,P_acc);
//     int DSP_sys = DSP_estimator(N_max,P_mem,OITR,OP_lim,P_acc,P_yolo);
//
//     int II_sys = II_estimator(N_max,P_mem,OITR,OP_lim,P_acc,P_pool,P_upsamp,P_yolo);
//     double Latency_network = network_Latency_estimator(II_sys,OITR,N_max,P_pool);
//
//     printf("****YOLO System Model****\n");
//     printf("**BRAM estimate:%d\n",BRAM_sys);
//     printf("**DSP estimate:%d\n",DSP_sys);
//     printf("**II estimate:%d\n",II_sys);
//     printf("**Latency estimate: %f (ms)\n",Latency_network);
//     printf("*************************\n");
// }

int main()
{
    int N_max_range[32];

    for(int i=0;i<32;i++)
    {
        N_max_range[i] = (i+1)*4;
    }

    int OITR_range[] = {1,2,3,4};
    int OP_lim = 6;

    int P_acc_range[] = {1,2,4};
    int P_pool_range[] = {1,2};
    int P_upsamp_range[] = {1,2,4};
    int P_yolo_range[] = {1,2,4};

    FILE *fp = fopen("DSE.log","w");

    for(int i=0;i<sizeof(N_max_range)/sizeof(int);i++)
    {
        int N_max = N_max_range[i];
        for(int P_mem=1;P_mem<=N_max/2;P_mem++)
        {
            if(N_max % P_mem != 0)
                continue;
            for(int j=0;j<sizeof(OITR_range)/sizeof(int);j++)
            {
                int OITR = OITR_range[j];
                for(int k=0;k<sizeof(P_acc_range)/sizeof(int);k++)
                {
                    int P_acc = P_acc_range[k];
                    for(int l=0;l<sizeof(P_pool_range)/sizeof(int);l++)
                    {
                        int P_pool = P_pool_range[l];
                        for(int m=0;m<sizeof(P_upsamp_range)/sizeof(int);m++)
                        {
                            int P_upsamp = P_upsamp_range[m];
                            for(int n=0;n<sizeof(P_yolo_range)/sizeof(int);n++)
                            {
                                int P_yolo = P_yolo_range[n];
                                int BRAM_sys = BRAM_estimator(N_max,P_mem,P_acc);
                                int DSP_sys = DSP_estimator(N_max,P_mem,OITR,OP_lim,P_acc,P_yolo);

                                int II_sys = II_estimator(N_max,P_mem,OITR,OP_lim,P_acc,P_pool,P_upsamp,P_yolo);
                                double Latency_network = network_Latency_estimator(II_sys,OITR,N_max,P_pool);

                                fprintf(fp,"%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%f\n",
                                            N_max,OITR,P_acc,P_pool,P_upsamp,P_yolo,BRAM_sys,DSP_sys,Latency_network);
                            }
                        }
                    }
                }
            }
        }
    }

    fclose(fp);
}
