#include "../src/yolo_yolo.h"

void yolo_yolo_top(yolo_quad_stream &inStream, yolo_quad_stream &outStream,
		           ap_uint<MAX_KERNEL_NUM> activate_en,
				   ap_uint<5> input_h, ap_uint<5> input_w)
{
#pragma HLS INTERFACE s_axilite port=input_w bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=input_h bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=activate_en bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL_BUS
#pragma HLS INTERFACE axis register both port=outStream
#pragma HLS INTERFACE axis register both port=inStream

	for(int row_idx=0;row_idx<input_h;row_idx++)
	{
#pragma HLS LOOP_TRIPCOUNT min=13 max=13 avg=13
		for(int col_idx=0;col_idx<input_w;col_idx++)
		{
#pragma HLS LOOP_TRIPCOUNT min=13 max=13 avg=13
			for(int input_ch_idx=0;input_ch_idx<MAX_KERNEL_NUM/4;input_ch_idx++)
			{
// SCRIPT_START P_yolo DO NOT EDIT OR DELETE THIS LINE
#pragma HLS ALLOCATION instances=logistic_activate limit=1 function
// SCRIPT_END P_yolo DO NOT EDIT OR DELETE THIS LINE
#pragma HLS PIPELINE
				quad_fp_side_channel curr_input;
				quad_fp_side_channel curr_output;

				curr_input = inStream.read();

				if(activate_en.bit(4*input_ch_idx))
					curr_output.data.sub_data_0 = logistic_activate(curr_input.data.sub_data_0);
				else
					curr_output.data.sub_data_0 = curr_input.data.sub_data_0;

				if(activate_en.bit(4*input_ch_idx+1))
					curr_output.data.sub_data_1 = logistic_activate(curr_input.data.sub_data_1);
				else
					curr_output.data.sub_data_1 = curr_input.data.sub_data_1;

				if(activate_en.bit(4*input_ch_idx+2))
					curr_output.data.sub_data_2 = logistic_activate(curr_input.data.sub_data_2);
				else
					curr_output.data.sub_data_2 = curr_input.data.sub_data_2;

				if(activate_en.bit(4*input_ch_idx+3))
					curr_output.data.sub_data_3 = logistic_activate(curr_input.data.sub_data_3);
				else
					curr_output.data.sub_data_3 = curr_input.data.sub_data_3;


				curr_output.keep = curr_input.keep;
				curr_output.strb = curr_input.strb;
				curr_output.user = curr_input.user;

				if((input_ch_idx == MAX_KERNEL_NUM/4-1)
	              &&(col_idx == input_w-1)
				  &&(row_idx == input_h-1))
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


fp_data_type logistic_activate(fp_data_type val_in)
{
	if(-val_in==(fp_data_type)7.625)
		return 0;
	else
		return (fp_data_type)(1.)/((fp_data_type)(1.)+(fp_data_type)exp_reduce::exp((ap_fixed<16,8>)(-val_in)));
}
