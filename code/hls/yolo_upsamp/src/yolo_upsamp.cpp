#include "yolo_upsamp.h"

void yolo_upsamp_top(yolo_quad_stream &inStream, yolo_quad_stream &outStream)
{
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL_BUS
#pragma HLS INTERFACE axis register both port=outStream
#pragma HLS INTERFACE axis register both port=inStream

	line_buff_type line_buff_group_0[INPUT_FOLD_CH];
	line_buff_type line_buff_group_1[INPUT_FOLD_CH];
	line_buff_type line_buff_group_2[INPUT_FOLD_CH];
	line_buff_type line_buff_group_3[INPUT_FOLD_CH];

	quad_fp_side_channel curr_input,curr_output;
	for(int row_idx=0;row_idx<INPUT_H;row_idx++)
	{
	for(int row_stride=0;row_stride<STRIDE;row_stride++)
	{
		for(int col_idx=0;col_idx<INPUT_W;col_idx++)
		{
		for(int col_stride=0;col_stride<STRIDE;col_stride++)
		{
			for(int input_ch_idx=0;input_ch_idx<INPUT_FOLD_CH;input_ch_idx++)
			{
#pragma HLS PIPELINE
				if(row_stride == 0&&col_stride==0)
				{

					curr_input = inStream.read();
					line_buff_group_0[input_ch_idx].insert_top(curr_input.data.sub_data_0,col_idx);
					line_buff_group_1[input_ch_idx].insert_top(curr_input.data.sub_data_1,col_idx);
					line_buff_group_2[input_ch_idx].insert_top(curr_input.data.sub_data_2,col_idx);
					line_buff_group_3[input_ch_idx].insert_top(curr_input.data.sub_data_3,col_idx);


					curr_output.data.sub_data_0 = curr_input.data.sub_data_0;
					curr_output.data.sub_data_1 = curr_input.data.sub_data_1;
					curr_output.data.sub_data_2 = curr_input.data.sub_data_2;
					curr_output.data.sub_data_3 = curr_input.data.sub_data_3;

				}
				else
				{
					curr_output.data.sub_data_0 = line_buff_group_0[input_ch_idx].getval(0,col_idx);
					curr_output.data.sub_data_1 = line_buff_group_1[input_ch_idx].getval(0,col_idx);
					curr_output.data.sub_data_2 = line_buff_group_2[input_ch_idx].getval(0,col_idx);
					curr_output.data.sub_data_3 = line_buff_group_3[input_ch_idx].getval(0,col_idx);
				}
					curr_output.keep = curr_input.keep;
					curr_output.strb = curr_input.strb;
					curr_output.user = curr_input.user;
					if(row_idx==INPUT_H-1&&row_stride==STRIDE-1&&col_idx==INPUT_W-1&&col_stride==STRIDE-1&&input_ch_idx==INPUT_FOLD_CH-1)
						curr_output.last = 1;
					else
						curr_output.last = 0;
					curr_output.id = curr_input.id;
					curr_output.dest = curr_input.dest;

					outStream.write(curr_output);

			}
		}
		}
	}
	}

}
