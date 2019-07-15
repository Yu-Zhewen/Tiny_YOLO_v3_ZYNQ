#ifndef YOLO_CONV_H
#define YOLO_CONV_H

#include "layer_parameter.h"
#include "yolo_stream.h"
#include "hls_video.h"

typedef hls::Window<3,3,fp_data_type> window_type;
typedef hls::LineBuffer<3,MAX_LINE_BUFF_WIDTH,fp_data_type> line_buff_type;
typedef struct local_weight_type
{
	fp_weight_type data[3*3];
}local_weight_type;

void yolo_conv_top(yolo_quad_stream &inStream, yolo_quad_stream &outStream,
		           ap_uint<MAX_CH_BIT> output_ch, ap_uint<MAX_CH_BIT> input_ch, ap_uint<MAX_FOLD_CH_BIT> fold_output_ch, ap_uint<MAX_FOLD_CH_BIT> fold_input_ch, ap_uint<3> kernel_dim,
		           ap_uint<9> input_h, ap_uint<9> input_w, ap_uint<9> real_input_h,
		           ap_uint<1> leaky,
				   ap_uint<3> fold_win_area);
fp_data_type post_process(fp_data_type sub0_val_output,fp_data_type sub1_val_output,fp_data_type sub2_val_output,fp_data_type sub3_val_output,
		          bool acc_flag,ap_uint<1> leaky,
				  fp_weight_type bias,ap_uint<MAX_FOLD_CH_BIT> input_ch_idx,fp_data_type val_output);
void yolo_line_buffer(fp_data_type curr_data, line_buff_type *line_buff, ap_uint<9> col_idx);
window_type slide_window(ap_uint<9> conv_count, line_buff_type *line_buff, ap_uint<3> kernel_dim);
fp_data_type window_macc(window_type window, local_weight_type weight, ap_uint<3> kernel_dim);
void write_output(fp_data_type val_output,  yolo_inter_stream &out_stream);
void out_stream_merge(yolo_inter_stream out_stream_group[MAX_KERNEL_NUM], yolo_quad_stream &outStream, ap_uint<MAX_FOLD_CH_BIT> input_ch_idx,quad_fp_side_channel curr_input,ap_uint<1> last,ap_uint<MAX_CH_BIT> output_ch,ap_uint<MAX_FOLD_CH_BIT> fold_output_ch );

#endif
