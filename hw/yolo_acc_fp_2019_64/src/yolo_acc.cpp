#include "yolo_acc.h"

void yolo_acc_top(yolo_quad_stream &inStream_a, yolo_quad_stream &inStream_b,
		          yolo_quad_stream &outStream,
				  ap_uint<6> input_h, ap_uint<6> input_w)
{
#pragma HLS INTERFACE s_axilite register port=input_w bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=input_h bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL_BUS
#pragma HLS INTERFACE axis register both port=outStream
#pragma HLS INTERFACE axis register both port=inStream_a
#pragma HLS INTERFACE axis register both port=inStream_b

	for(int row_idx=0;row_idx<input_h;row_idx++)
	{
		for(int col_idx=0;col_idx<input_w;col_idx++)
		{
			for(int input_ch_idx=0;input_ch_idx<MAX_KERNEL_NUM/4;input_ch_idx++)
			{
				quad_fp_side_channel curr_input_a,curr_input_b;
				quad_fp_side_channel curr_output;

				curr_input_a = inStream_a.read();
				curr_input_b = inStream_b.read();

				curr_output.data.sub_data_0 = curr_input_a.data.sub_data_0 + curr_input_b.data.sub_data_0;
				curr_output.data.sub_data_1 = curr_input_a.data.sub_data_1 + curr_input_b.data.sub_data_1;
				curr_output.data.sub_data_2 = curr_input_a.data.sub_data_2 + curr_input_b.data.sub_data_2;
				curr_output.data.sub_data_3 = curr_input_a.data.sub_data_3 + curr_input_b.data.sub_data_3;

				curr_output.keep = curr_input_a.keep;
				curr_output.strb = curr_input_a.strb;
				curr_output.user = curr_input_a.user;

				if((input_ch_idx == MAX_KERNEL_NUM/4-1)
	              &&(col_idx == input_w-1)
				  &&(row_idx == input_h-1))
					curr_output.last = 1;
				else
					curr_output.last = 0;

				curr_output.id = curr_input_a.id;
				curr_output.dest = curr_input_a.dest;

				outStream.write(curr_output);

			}
		}
	}

}
