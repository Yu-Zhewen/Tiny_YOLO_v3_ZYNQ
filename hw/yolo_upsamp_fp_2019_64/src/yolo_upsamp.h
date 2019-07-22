#ifndef YOLO_UPSAMP_H
#define YOLO_UPSAMP_H

#include "yolo_stream.h"
#include "hls_video.h"

#define INPUT_H 13
#define INPUT_W 13
#define INPUT_FOLD_CH 8
#define STRIDE 2

typedef hls::LineBuffer<1,INPUT_W,fp_data_type> line_buff_type;
void yolo_upsamp_top(yolo_quad_stream &inStream, yolo_quad_stream &outStream);

#endif
