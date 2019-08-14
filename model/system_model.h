#ifndef SYSTEM_MODEL_H
#define SYSTEM_MODEL_H

#define GROUP_NUM 14

int max_2(int a, int b);
int max_3(int a, int b, int c);
int max_5(int a, int b, int c, int d, int e);
int BRAM_estimator(int N_max, int P_mem, int P_acc);
int DSP_estimator(int N_max, int P_mem, int OITR, int OP_lim, int P_acc, int P_yolo);
int II_estimator(int N_max, int P_mem, int OITR, int OP_lim, int P_acc, int P_pool, int P_upsamp, int P_yolo);
double group_Latency_estimator(int II_sys, int f_h, int f_w, int f_ch, int h_ch, int OITR, int N_max, int P_pool, bool conv_en);
double network_Latency_estimator(int II_sys, int OITR, int N_max, int P_pool);

#endif
