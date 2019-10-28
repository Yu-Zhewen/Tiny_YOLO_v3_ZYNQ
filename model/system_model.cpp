#include "system_model.h"
#include <stdio.h>
#include <math.h>
#include <assert.h>


int max_2(int a, int b)
{
    if(a>b)
        return a;
    else
        return b;
}

int max_3(int a, int b, int c)
{
    return max_2(max_2(a,b),c);
}

int max_5(int a, int b, int c, int d, int e)
{
    return max_3(max_3(a,b,c),d,e);
}

int BRAM_estimator(int N_max, int P_mem, int P_acc)
{
    assert(N_max % 4 == 0);
    assert(P_mem >= 1 && P_mem <= N_max && N_max%P_mem==0);
    assert(P_acc == 1  || P_acc == 2 || P_acc ==4);

    int BRAM_sys, BRAM_conv, BRAM_acc, BRAM_pool, BRAM_upsamp, BRAM_dma;

    BRAM_conv = (int)(ceil(N_max/8.0)) * 12 + (int)(ceil((N_max*N_max)/(1024.0*P_mem))) * P_mem * 9;
    BRAM_acc = (int)(ceil(P_acc/2.0));
    BRAM_pool = (int)(ceil(N_max/8.0)) * 8;
    BRAM_upsamp = 4;
    BRAM_dma = 18 + 9;

    BRAM_sys = BRAM_conv + BRAM_acc + BRAM_pool + BRAM_upsamp + BRAM_dma;

    return BRAM_sys;
}

int DSP_estimator(int N_max, int P_mem, int OITR, int OP_lim, int P_acc, int P_yolo)
{
    assert(N_max % 4 == 0);
    assert(P_mem >= 1 && P_mem <= N_max && N_max%P_mem==0);
    assert(OITR > 0);
    assert(OP_lim == 6);
    assert(P_acc == 1  || P_acc == 2 || P_acc ==4);
    assert(P_yolo == 1  || P_yolo == 2 || P_yolo ==4);

    int DSP_sys, DSP_conv, DSP_acc, DSP_pool, DSP_upsamp, DSP_yolo;

    int II_conv = max_3(2*N_max/P_mem, OITR+2, OP_lim);

    DSP_conv = (int)(ceil(4.0*N_max/II_conv)) * 9 + 3;
    DSP_acc = P_acc + 1;
    DSP_pool = 2;
    DSP_upsamp = 2;
    DSP_yolo = 6*P_yolo + 1;

    DSP_sys = DSP_conv + DSP_acc + DSP_pool + DSP_upsamp + DSP_yolo;

    return DSP_sys;
}

int II_estimator(int N_max, int P_mem, int OITR, int OP_lim, int P_acc, int P_pool, int P_upsamp, int P_yolo)
{
    assert(N_max % 4 == 0);
    assert(P_mem >= 1 && P_mem <= N_max && N_max%P_mem==0);
    assert(OITR > 0);
    assert(OP_lim == 6);
    assert(P_acc == 1  || P_acc == 2 || P_acc ==4);
    assert(P_pool == 1  || P_pool == 2);
    assert(P_upsamp == 1  || P_upsamp == 2 || P_upsamp ==4);
    assert(P_yolo == 1  || P_yolo == 2 || P_yolo ==4);

    int II_conv = max_3(2*N_max/P_mem, OITR+2, OP_lim);
    int II_acc = 4/P_acc;
    int II_pool = 4/P_pool;
    int II_upsamp = 4/P_upsamp;
    int II_yolo = 4/P_yolo;

    int II_sys = max_5(II_conv,II_acc,II_pool,II_upsamp,II_yolo);

    return II_sys;
}

double group_Latency_estimator(int II_sys, int f_h, int f_w, int f_ch, int h_h, int h_w, int h_ch, int OITR, int N_max, int P_pool, bool conv_en)
{
    assert(OITR > 0);
    assert(N_max % 4 == 0);
    assert(P_pool == 1  || P_pool == 2);

    f_ch = ((f_ch+3)/4)*4;
    h_ch = ((h_ch+3)/4)*4;
    int II_pool = 4/P_pool;

    while(1.0*h_ch/f_ch > OITR)
    {
        f_ch += 4;
    }

    int F_in = (int)(ceil(1.0*f_ch/N_max));
    int F_out = (int)(ceil(1.0*h_ch/N_max));




    int Latency_layer_group;

    if(conv_en)
    {
        int Latency_hw_exe = (f_h+3)*(f_w+2)*(f_ch/4)*II_sys;
        Latency_layer_group = Latency_hw_exe * F_out;

    }
    else
    {
        int Latency_hw_exe = (f_h)*(f_w)*(h_ch/4)*II_pool;
        Latency_layer_group = Latency_hw_exe;
    }

    double time_ms = Latency_layer_group * 10.0 / 1000000;

    if(F_in > 1)
    {
        //assert(f_ch%N_max == 0);
        f_ch = N_max;
    }

    if(F_out > 1)
    {
        //assert(h_ch%N_max == 0);
        h_ch = N_max;
    }


    int in_size = f_h * f_w * f_ch;
    int acc_size = f_h * f_w * h_ch;
    int out_size = h_h * h_w * h_ch;

    int sw_Latency = 0;

    if(conv_en)
    {
        sw_Latency += 12 * f_ch * h_ch * F_in * F_out;
        sw_Latency += h_ch * F_out;
        sw_Latency += (in_size+3*acc_size) * (F_in-1) * (F_out);
        sw_Latency += (in_size+acc_size+2*out_size) * F_out;
    }
    else
    {
        sw_Latency += (in_size+2*out_size) * F_out;
    }

    time_ms += sw_Latency/pow(10,6)*1.8;

    if(conv_en)
    {
        time_ms += 9e-3 * F_in * F_out;
    }
    else
    {
        time_ms += 9e-3 * F_out;
    }

    return time_ms;

}

//return ms
double network_Latency_estimator(int II_sys, int OITR, int N_max, int P_pool)
{
    assert(P_pool == 1  || P_pool == 2);

    int f_h[GROUP_NUM] = {416,208,104,52,26,26,13,13,13,13,13,13,26,26};
    int f_w[GROUP_NUM] = {416,208,104,52,26,26,13,13,13,13,13,13,26,26};

    int h_h[GROUP_NUM] = {208,104,52,26,26,13,13,13,13,13,13,26,26,26};
    int h_w[GROUP_NUM] = {208,104,52,26,26,13,13,13,13,13,13,26,26,26};

    int f_ch[GROUP_NUM] = {3,16,32,64,128,128,256,512,1024,256,512,256,384,256};
    int h_ch[GROUP_NUM] = {16,32,64,128,256,256,512,1024,256,512,255,128,256,255};

    bool conv_en[GROUP_NUM] = {1,1,1,1,1,0,1,1,1,1,1,1,1,1};

    double Latency_network = 0;
    for(int i=0;i<GROUP_NUM;i++)
    {
        Latency_network += group_Latency_estimator(II_sys,f_h[i],f_w[i],f_ch[i],h_h[i],h_w[i],h_ch[i],OITR,N_max,P_pool,conv_en[i]);
    }

    return Latency_network;
}
