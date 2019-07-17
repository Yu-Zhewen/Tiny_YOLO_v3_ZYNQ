#ifndef YOLO_YOLO_H
#define YOLO_YOLO_H

#include "yolo_stream.h"
#include "hls_exp_apfixed.h"
#include "layer_parameter.h"

void yolo_yolo_top(yolo_quad_stream &inStream, yolo_quad_stream &outStream,
		           ap_uint<32> activate_en,
				   ap_uint<5> input_h, ap_uint<5> input_w);
fp_data_type logistic_activate(fp_data_type val_in);

#endif
