#ifndef YOLO_CONV_H
#define YOLO_CONV_H

#include "layer_parameter.h"
#include "yolo_stream.h"
#include "hls_video.h"

typedef hls::Window<KERNEL_DIM,KERNEL_DIM,fp_data_type> window_type;
typedef hls::LineBuffer<KERNEL_DIM,INPUT_WIDTH,fp_data_type> line_buff_type;

#define WAIT_TICKS (INPUT_WIDTH*(KERNEL_DIM-1)+KERNEL_DIM)

void yolo_conv_top(yolo_stream_type &inStream, yolo_stream_type &outStream);
void yolo_conv_core(yolo_stream_type &inStream, yolo_stream_type &outStream);
void yolo_line_buffer(fp_data_type curr_data, line_buff_type *line_buff, int col_idx);
window_type slide_window(int conv_count, line_buff_type *line_buff);
void fork_window(window_type kernel_window, window_type window_group[KERNEL_NUM]);
fp_data_type window_macc(window_type *window, fp_weight_type weight[WINDOW_AREA]);
void write_output(fp_data_type val_output,  yolo_inter_stream &out_stream);
void out_stream_merge(yolo_inter_stream out_stream_group[KERNEL_NUM], yolo_stream_type &outStream, int input_ch_idx,double_fp_side_channel curr_input,ap_uint<1> last);

#endif
