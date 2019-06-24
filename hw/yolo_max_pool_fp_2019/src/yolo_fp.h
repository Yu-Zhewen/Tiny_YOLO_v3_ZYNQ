#ifndef YOLO_FP_H
#define YOLO_FP_H

#include <ap_fixed.h>

typedef ap_fixed<16,8,AP_RND_CONV,AP_SAT> fp_data_type;
typedef ap_fixed<16,8,AP_RND_CONV,AP_SAT> fp_weight_type;
#define FP_MAX 128;
#define FP_MIN -128;

#endif
