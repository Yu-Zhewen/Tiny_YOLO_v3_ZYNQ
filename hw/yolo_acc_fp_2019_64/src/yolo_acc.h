#ifndef YOLO_ACC_H
#define YOLO_ACC_H

#include "yolo_stream.h"
#include "layer_parameter.h"

void yolo_acc_top(yolo_quad_stream &inStream_a, yolo_quad_stream &inStream_b,
		          yolo_quad_stream &outStream,
				  ap_uint<9> input_h, ap_uint<9> input_w,
				  ap_uint<MAX_FOLD_CH_BIT> fold_input_ch,
				  ap_uint<1> leaky, ap_uint<1> bias_en);
fp_data_type post_process_unit(fp_data_type data_in, fp_weight_type bias, ap_uint<1> bias_en, ap_uint<1> leaky);

#endif
