#ifndef YOLO_MAX_POOL_H
#define YOLO_MAX_POOL_H

#include "layer_parameter.h"
#include "yolo_stream.h"
#include "hls_video.h"

typedef hls::Window<KERNEL_DIM,KERNEL_DIM,float> window_type;
typedef hls::LineBuffer<KERNEL_DIM,INPUT_WIDTH+POOL_PAD,float> line_buff_type;

void yolo_max_pool_top(yolo_stream_type &inStream, yolo_stream_type &outStream);
void yolo_line_buffer(float curr_data, line_buff_type *line_buff, int col_idx);
window_type slide_window(int conv_count, line_buff_type *line_buff);
float window_max_pool(window_type *window);
void write_output(float val_output, float_32_side_channel curr_input, yolo_stream_type &out_stream, ap_uint<1> last);

#endif
