#include "system_model.h"
#include <stdio.h>
#include <limits>

#define DEFAULT_MAX_DSP (220) // zynq7020
#define DEFAULT_MAX_BRAM_18k (280) // zynq7020
#define DEFAULT_MAX_ULTILISATION (0.9)  // usually won't use 100% resources

struct hls_config
{
    int N_max;
    int P_mem;
    int P_acc;
    int P_pool;
    int P_upsamp;
    int P_yolo;

    int BRAM_usage;
    int DSP_usage;
    double latency;

    void set(int n_max, int p_mem, int p_acc, int p_pool, int p_upsamp, int p_yolo, int bram, int dsp, double time)
    {
        N_max = n_max;
        P_mem = p_mem;
        P_acc = p_acc;
        P_pool = p_pool;
        P_upsamp = p_upsamp;
        P_yolo = p_yolo;

        BRAM_usage = bram;
        DSP_usage = dsp;
        latency = time;
    }

    void reset()
    {
        set(0, 0, 0, 0, 0, 0, std::numeric_limits<int>::max(), std::numeric_limits<int>::max(), std::numeric_limits<double>::max());
    }

    void print(FILE *fp)
    {
        fprintf(fp, "%d,%d,%d,%d,%d,%d,%d,%d,%f\n",
                                            N_max,P_mem,P_acc,P_pool,P_upsamp,P_yolo,BRAM_usage,DSP_usage,latency);
    }
};

int main()
{

    struct hls_config optimal_config;
    optimal_config.reset();

    int N_max_range[32];

    for(int i=0;i<32;i++)
    {
        N_max_range[i] = (i+1)*4;
    }

    int OITR_range[] = {1,2,3,4};
    int OP_lim = 6;

    int P_acc_range[] = {2,4};
    int P_pool_range[] = {1,2};
    int P_upsamp_range[] = {4};
    int P_yolo_range[] = {1,2,4};

    FILE *fp = fopen("dse_log.csv","w");

    fprintf(fp,"N_max,P_mem,OITR,P_acc,P_pool,P_upsamp,P_yolo,BRAM_sys,DSP_sys,Latency_network\n"); // head

    for(int i=0;i<sizeof(N_max_range)/sizeof(int);i++)
    {
        int N_max = N_max_range[i];

        if (!(N_max > 0 && !(N_max & (N_max - 1))))
        {
            continue;
        }

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

                                if ((Latency_network < optimal_config.latency && BRAM_sys <= DEFAULT_MAX_BRAM_18k * DEFAULT_MAX_ULTILISATION && DSP_sys <= DEFAULT_MAX_DSP * DEFAULT_MAX_ULTILISATION)
                                   || (Latency_network == optimal_config.latency && BRAM_sys < optimal_config.BRAM_usage && DSP_sys < optimal_config.DSP_usage))
                                {
                                    optimal_config.set(N_max, P_mem, P_acc, P_pool, P_upsamp, P_yolo, BRAM_sys, DSP_sys, Latency_network);
                                    
                                }           
                                fprintf(fp,"%d,%d,%d,%d,%d,%d,%d,%d,%d,%f\n",
                                            N_max,P_mem,OITR,P_acc,P_pool,P_upsamp,P_yolo,BRAM_sys,DSP_sys,Latency_network);
                            }
                        }
                    }
                }
            }
        }
    }

    fclose(fp); 


    fp = fopen("opt.conf","w");
    optimal_config.print(fp);

    fclose(fp);
}

