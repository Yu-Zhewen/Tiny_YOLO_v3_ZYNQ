#ifndef YOLO_YOLO_H
#define YOLO_YOLO_H

#include "yolo_stream.h"
#include "hls_exp_apfixed.h"

#define YOLO_FOLD_TOTAL_CHANNEL ((255+3)/4)

// SCRIPT_START N_max DO NOT EDIT OR DELETE THIS LINE
#define MAX_KERNEL_NUM 32
// SCRIPT_END N_max DO NOT EDIT OR DELETE THIS LINE

#define YOLO_INPUT_HEIGHT 13
#define YOLO_INPUT_WIDTH 13
#define MAX_FOLD_CH_BIT (5-2+1)

void yolo_yolo_top(yolo_quad_stream &inStream, yolo_quad_stream &outStream,
		           ap_uint<32> activate_en,
				   ap_uint<5> input_h, ap_uint<5> input_w);
fp_data_type logistic_activate(fp_data_type val_in);

#endif
