#include "yolo_max_pool.h"
#include "ap_fixed.h"

void yolo_max_pool_top(yolo_quad_stream &inStream, yolo_quad_stream &outStream,
		               ap_uint<9> output_h, ap_uint<9> output_w,
					   ap_uint<9> input_h,  ap_uint<9> input_w, ap_uint<MAX_FOLD_CH_BIT> input_fold_ch,
					   ap_uint<2> stride)
{
#pragma HLS INTERFACE s_axilite port=stride bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=input_fold_ch bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=input_w bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=input_h bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=output_w bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=output_h bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL_BUS
#pragma HLS INTERFACE axis register both port=outStream
#pragma HLS INTERFACE axis register both port=inStream

	line_buff_type line_buff_group_0[MAX_KERNEL_NUM/4];
	line_buff_type line_buff_group_1[MAX_KERNEL_NUM/4];
	line_buff_type line_buff_group_2[MAX_KERNEL_NUM/4];
	line_buff_type line_buff_group_3[MAX_KERNEL_NUM/4];


	quad_fp_side_channel curr_input;

	for(int out_row=0;out_row<output_h;out_row++)
	{
#pragma HLS LOOP_TRIPCOUNT min=208 max=208 avg=208
	for(int row_stride=0;row_stride<stride;row_stride++)
	{
#pragma HLS LOOP_TRIPCOUNT min=2 max=2 avg=2
		for(int out_col=0;out_col<output_w;out_col++)
		{
#pragma HLS LOOP_TRIPCOUNT min=208 max=208 avg=208
		for(int col_stride=0;col_stride<stride;col_stride++)
		{
#pragma HLS LOOP_TRIPCOUNT min=2 max=2 avg=2
			for(int input_ch_idx=0;input_ch_idx<input_fold_ch;input_ch_idx++)
			{
#pragma HLS PIPELINE
#pragma HLS LOOP_TRIPCOUNT min=4 max=4 avg=4

// SCRIPT_START P_pool DO NOT EDIT OR DELETE THIS LINE
#pragma HLS ALLOCATION instances=window_max_pool limit=2 function
// SCRIPT_END P_pool DO NOT EDIT OR DELETE THIS LINE

				int  row_idx = out_row*stride+row_stride;
				int  col_idx = out_col*stride+col_stride;
				int  conv_count;

				if((row_idx>KERNEL_DIM-2)&&(col_idx>KERNEL_DIM-2))
					conv_count = col_idx - (KERNEL_DIM-1);
				else
					conv_count = 0;


				//if((row_idx>=input_h)||(col_idx>=input_w))
				if(row_idx<input_h&&col_idx<input_w)
				{
					//stream input
					curr_input = inStream.read();
				}
				else
				{
					//padding
					curr_input.data.sub_data_0 = -FP_MAX;
					curr_input.data.sub_data_1 = -FP_MAX;
					curr_input.data.sub_data_2 = -FP_MAX;
					curr_input.data.sub_data_3 = -FP_MAX;
				}



				//line buffer for every input channel
				yolo_line_buffer(curr_input.data.sub_data_0,&line_buff_group_0[input_ch_idx],col_idx);
				yolo_line_buffer(curr_input.data.sub_data_1,&line_buff_group_1[input_ch_idx],col_idx);
				yolo_line_buffer(curr_input.data.sub_data_2,&line_buff_group_2[input_ch_idx],col_idx);
				yolo_line_buffer(curr_input.data.sub_data_3,&line_buff_group_3[input_ch_idx],col_idx);

				if((row_idx>KERNEL_DIM-2)&&(col_idx>KERNEL_DIM-2)&&(row_stride==stride-1)&&(col_stride==stride-1))
				{

					window_type window_0;
					window_type window_1;
					window_type window_2;
					window_type window_3;

					fp_data_type val_output_0;
					fp_data_type val_output_1;
					fp_data_type val_output_2;
					fp_data_type val_output_3;

					window_0 = slide_window(conv_count,&line_buff_group_0[input_ch_idx]);
					window_1 = slide_window(conv_count,&line_buff_group_1[input_ch_idx]);
					window_2 = slide_window(conv_count,&line_buff_group_2[input_ch_idx]);
					window_3 = slide_window(conv_count,&line_buff_group_3[input_ch_idx]);

					val_output_0 = window_max_pool(window_0);
					val_output_1 = window_max_pool(window_1);
					val_output_2 = window_max_pool(window_2);
					val_output_3 = window_max_pool(window_3);

					ap_uint<1> last;
					if((out_row==output_h-1)&&
					   (out_col==output_w-1)&&
					   (input_ch_idx==input_fold_ch-1))
					{
						last = 1;
					}
					else
					{
						last = 0;
					}

					write_output(val_output_0,val_output_1,val_output_2,val_output_3,curr_input,outStream,last);
				}


			}
		}

	}

}
}}

void yolo_line_buffer(fp_data_type curr_data, line_buff_type *line_buff, int col_idx)
{

	line_buff->shift_up(col_idx);
	line_buff->insert_top(curr_data,col_idx);

}

window_type slide_window(int conv_count, line_buff_type *line_buff)
{
	window_type kernel_window;

	for(int win_row=0; win_row < KERNEL_DIM; win_row++)
	{
		for(int win_col=0; win_col < KERNEL_DIM; win_col++)
		{
			fp_data_type val = (fp_data_type)line_buff->getval(win_row,win_col+conv_count);
			kernel_window.insert(val,win_row,win_col);
		}
	}

	return kernel_window;
}

fp_data_type window_max_pool(window_type window)
{
	fp_data_type max = -FP_MAX;
	for(int win_row=0; win_row < KERNEL_DIM; win_row++)
	{
		for(int win_col=0; win_col < KERNEL_DIM; win_col++)
		{
			fp_data_type val = window.getval(win_row,win_col);
			if(val>max)
				max = val;
		}
	}
	return max;
}

void write_output(fp_data_type val_output_0, fp_data_type val_output_1, fp_data_type val_output_2, fp_data_type val_output_3, quad_fp_side_channel curr_input, yolo_quad_stream &out_stream, ap_uint<1> last)
{
	quad_fp_side_channel curr_output;

	curr_output.data.sub_data_0 = val_output_0;
	curr_output.data.sub_data_1 = val_output_1;
	curr_output.data.sub_data_2 = val_output_2;
	curr_output.data.sub_data_3 = val_output_3;

	curr_output.keep = curr_input.keep;
	curr_output.strb = curr_input.strb;
	curr_output.user = curr_input.user;
	curr_output.last = last;
	curr_output.id = curr_input.id;
	curr_output.dest = curr_input.dest;

	out_stream.write(curr_output);
}
