#ifndef YOLO_MAX_POOL_H
#define YOLO_MAX_POOL_H

#include "yolo_stream.h"
#include "hls_video.h"

// SCRIPT_START N_max DO NOT EDIT OR DELETE THIS LINE
#define MAX_KERNEL_NUM 32
// SCRIPT_END N_max DO NOT EDIT OR DELETE THIS LINE

#define KERNEL_DIM 2
#define MAX_IN_WIDTH 418
#define MAX_FOLD_CH_BIT (5-2+1)

typedef hls::Window<KERNEL_DIM,KERNEL_DIM,fp_data_type> window_type;
typedef hls::LineBuffer<KERNEL_DIM,MAX_IN_WIDTH,fp_data_type> line_buff_type;

void yolo_max_pool_top(yolo_quad_stream &inStream, yolo_quad_stream &outStream,
		               ap_uint<9> output_h, ap_uint<9> output_w,
					   ap_uint<9> input_h,  ap_uint<9> input_w, ap_uint<MAX_FOLD_CH_BIT> input_fold_ch,
					   ap_uint<2> stride);
void yolo_line_buffer(fp_data_type curr_data, line_buff_type *line_buff, int col_idx);
window_type slide_window(int conv_count, line_buff_type *line_buff);
fp_data_type window_max_pool(window_type window);
void write_output(fp_data_type val_output_0, fp_data_type val_output_1, fp_data_type val_output_2, fp_data_type val_output_3, quad_fp_side_channel curr_input, yolo_quad_stream &out_stream, ap_uint<1> last);
#endif
