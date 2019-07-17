#ifndef YOLO_ACC_H
#define YOLO_ACC_H

#include "yolo_stream.h"
#include "layer_parameter.h"

void yolo_acc_top(yolo_quad_stream &inStream_a, yolo_quad_stream &inStream_b,
		          yolo_quad_stream &outStream,
				  ap_uint<6> input_h, ap_uint<6> input_w);

#endif
