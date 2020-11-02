#include "yolo_conv.h"
//#include "weight_file.h"

void yolo_conv_top(yolo_quad_stream &inStream, yolo_quad_stream &outStream,
		           ap_uint<MAX_CH_BIT> output_ch, ap_uint<MAX_CH_BIT> input_ch, ap_uint<MAX_FOLD_CH_BIT> fold_output_ch, ap_uint<MAX_FOLD_CH_BIT> fold_input_ch, //ap_uint<3> kernel_dim,
		           ap_uint<9> input_h, ap_uint<9> input_w, ap_uint<9> real_input_h,
				   ap_uint<3> fold_win_area)
{
#pragma HLS INTERFACE s_axilite port=fold_input_ch bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=fold_output_ch bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=input_ch bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=output_ch bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=fold_win_area bundle=CTRL_BUS
//#pragma HLS INTERFACE s_axilite port=kernel_dim bundle=CTRL_BUS
//#pragma HLS INTERFACE s_axilite port=leaky bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=real_input_h bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=input_w bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=input_h bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL_BUS
#pragma HLS INTERFACE axis register both port=outStream
#pragma HLS INTERFACE axis register both port=inStream

	yolo_inter_stream out_stream_group[MAX_KERNEL_NUM];
#pragma HLS ARRAY_PARTITION variable=out_stream_group complete dim=1
#pragma HLS STREAM variable=out_stream_group depth=2 dim=1

	line_buff_type line_buff_group_0[MAX_KERNEL_NUM/4];
	line_buff_type line_buff_group_1[MAX_KERNEL_NUM/4];
	line_buff_type line_buff_group_2[MAX_KERNEL_NUM/4];
	line_buff_type line_buff_group_3[MAX_KERNEL_NUM/4];

	fp_mid_type val_output[MAX_KERNEL_NUM];
#pragma HLS ARRAY_PARTITION variable=val_output complete dim=1

	quad_fp_side_channel curr_input;

	local_weight_type local_mem_group[MAX_KERNEL_NUM][MAX_INPUT_CH];
// SCRIPT_START P_mem DO NOT EDIT OR DELETE THIS LINE
#pragma HLS ARRAY_PARTITION variable=local_mem_group block factor=8 dim=1
// SCRIPT_END P_mem DO NOT EDIT OR DELETE THIS LINE
#pragma HLS ARRAY_PARTITION variable=local_mem_group complete dim=3

//	fp_weight_type kernel_bias_fp[MAX_KERNEL_NUM];
//#pragma HLS ARRAY_PARTITION variable=kernel_bias_fp block factor=4 dim=1



	for(int k=0; k<output_ch; k++)
	{
#pragma HLS LOOP_TRIPCOUNT min=16 max=16
		for(int i=0;i<input_ch;i++)
		{
#pragma HLS LOOP_TRIPCOUNT min=3 max=3
			for(int j=0; j<fold_win_area; j++)
			{
#pragma HLS PIPELINE
#pragma HLS LOOP_TRIPCOUNT min=3 max=3
				curr_input = inStream.read();
				local_mem_group[k][i].data[4*j] = curr_input.data.sub_data_0;
				if(j!=(MAX_KERNEL_DIM*MAX_KERNEL_DIM+3)/4-1)
				{
					local_mem_group[k][i].data[4*j+1] = curr_input.data.sub_data_1;
					local_mem_group[k][i].data[4*j+2] = curr_input.data.sub_data_2;
					local_mem_group[k][i].data[4*j+3] = curr_input.data.sub_data_3;
				}
			}

		}
	}


//	for(int i=0;i<fold_output_ch;i++)//division 2 is not safe here!!!
//	{
//#pragma HLS LOOP_TRIPCOUNT min=4 max=4
//#pragma HLS PIPELINE
//		curr_input = inStream.read();
//		kernel_bias_fp[4*i] = curr_input.data.sub_data_0;
//		kernel_bias_fp[4*i+1] = curr_input.data.sub_data_1;
//		kernel_bias_fp[4*i+2] = curr_input.data.sub_data_2;
//		kernel_bias_fp[4*i+3] = curr_input.data.sub_data_3;
//	}

	for(int row_idx=0;row_idx<input_h+1;row_idx++)
		//extra one row to send rest data
	{
#pragma HLS LOOP_TRIPCOUNT min=419 max=419
		for(int col_idx=0;col_idx<input_w;col_idx++)
		{
#pragma HLS LOOP_TRIPCOUNT min=418 max=418
			for(int input_ch_idx=0;input_ch_idx<fold_input_ch;input_ch_idx++)
			{
#pragma HLS PIPELINE
#pragma HLS LOOP_TRIPCOUNT min=1 max=1

				int conv_row_count=0,conv_col_count=0;


				if((row_idx>MAX_KERNEL_DIM-2)&&(col_idx>MAX_KERNEL_DIM-2))
				{
					conv_row_count = row_idx - (MAX_KERNEL_DIM-1);
					conv_col_count = col_idx - (MAX_KERNEL_DIM-1);
				}
				else
				{
					conv_row_count = 0;
					conv_col_count = 0;
				}


				if(row_idx != input_h)
				{
					if(((row_idx == 0)||
					   (row_idx == real_input_h-1)||
					   (col_idx == 0)||
					   (col_idx == input_w-1)))
					{
						//padding
						curr_input.data.sub_data_0 = 0;
						curr_input.data.sub_data_1 = 0;
						curr_input.data.sub_data_2 = 0;
						curr_input.data.sub_data_3 = 0;
					}
					else
					{
						//stream input
						curr_input = inStream.read();
					}


					yolo_line_buffer(curr_input.data.sub_data_0,&line_buff_group_0[input_ch_idx],col_idx);
					yolo_line_buffer(curr_input.data.sub_data_1,&line_buff_group_1[input_ch_idx],col_idx);
					yolo_line_buffer(curr_input.data.sub_data_2,&line_buff_group_2[input_ch_idx],col_idx);
					yolo_line_buffer(curr_input.data.sub_data_3,&line_buff_group_3[input_ch_idx],col_idx);

					//wait for line biffer to fill first conv op
					if((row_idx>MAX_KERNEL_DIM-2)&&(col_idx>MAX_KERNEL_DIM-2))
					{
						window_type kernel_window_0, kernel_window_1, kernel_window_2, kernel_window_3;

						kernel_window_0 = slide_window(conv_col_count,&line_buff_group_0[input_ch_idx]);
						kernel_window_1 = slide_window(conv_col_count,&line_buff_group_1[input_ch_idx]);
						kernel_window_2 = slide_window(conv_col_count,&line_buff_group_2[input_ch_idx]);
						kernel_window_3 = slide_window(conv_col_count,&line_buff_group_3[input_ch_idx]);
						//copy data to allow parallelism


						for(int kernel_idx=0; kernel_idx<MAX_KERNEL_NUM; kernel_idx++)
						{

							fp_mid_type sub0_val_output;
							fp_mid_type sub1_val_output;
							fp_mid_type sub2_val_output;
							fp_mid_type sub3_val_output;

							//core of conv, macc
							sub0_val_output = window_macc(kernel_window_0,local_mem_group[kernel_idx][4*input_ch_idx]);
							sub1_val_output = window_macc(kernel_window_1,local_mem_group[kernel_idx][4*input_ch_idx+1]);
							sub2_val_output = window_macc(kernel_window_2,local_mem_group[kernel_idx][4*input_ch_idx+2]);
							if(input_ch==3)
							{
								sub3_val_output = 0;
							}
							else
							{
								sub3_val_output = window_macc(kernel_window_3,local_mem_group[kernel_idx][4*input_ch_idx+3]);
							}
							val_output[kernel_idx]=post_process(sub0_val_output,sub1_val_output,sub2_val_output,sub3_val_output,
																input_ch_idx,val_output[kernel_idx]);

							//accumulate for number of input channels
							if(input_ch_idx == fold_input_ch-1)
							{
								if(kernel_idx<output_ch)
								{
									ap_fixed<16,8,AP_RND_CONV,AP_SAT> output_rec = val_output[kernel_idx];
								if(!(out_stream_group[kernel_idx].full()))
									//write data to internal FIFO
									write_output(output_rec,out_stream_group[kernel_idx]);
								}
							}
						}


					}
				}




				//read data from the internal FIFO, and write to the output
				if(!((conv_row_count == 0)&&(conv_col_count ==0)))
				{
                	//printf("%d,%d\n",row_idx,col_idx);
    				ap_uint<1> last;
    				if((row_idx==input_h)&&(input_ch_idx==fold_input_ch-1))
    					last = 1;
    				else
    					last = 0;
					out_stream_merge(out_stream_group,outStream,input_ch_idx,curr_input,last,output_ch,fold_output_ch);
				}

			}
		}

	}

}

fp_mid_type post_process(fp_mid_type sub0_val_output,fp_mid_type sub1_val_output,fp_mid_type sub2_val_output,fp_mid_type sub3_val_output,
						  int input_ch_idx,fp_mid_type val_output)
{
	//fp_data_type biased_output=0,activated_output=0;
	if(input_ch_idx==0)
	{
		val_output=0;
	}

	val_output += sub0_val_output;
	val_output += sub1_val_output;
	val_output += sub2_val_output;
	val_output += sub3_val_output;



//	if(acc_flag)
//	{
//		biased_output = val_output + bias;
//		if(leaky&&biased_output<0)
//		{
//			activated_output = biased_output * (fp_data_type).1;
//		}
//		else
//		{
//			activated_output = biased_output;
//		}
//
//		return activated_output;
//	}
//	else
//	{
		return val_output;
//	}
}

void yolo_line_buffer(fp_data_type curr_data, line_buff_type *line_buff, int col_idx)
{

	line_buff->shift_up(col_idx);
	line_buff->insert_top(curr_data,col_idx);

}

window_type slide_window(int conv_count, line_buff_type *line_buff)
{
	window_type kernel_window;

	for(int win_row=0; win_row < 3; win_row++)
	{
		for(int win_col=0; win_col < 3; win_col++)
		{
			fp_data_type val = (fp_data_type)line_buff->getval(win_row,win_col+conv_count);
			kernel_window.insert(val,win_row,win_col);
		}
	}

	return kernel_window;
}

fp_mid_type window_macc(window_type window, local_weight_type weight)
{

	fp_mid_type sum = 0;
	for(int win_row=0; win_row < 3; win_row++)
	{
		for(int win_col=0; win_col < 3; win_col++)
		{
			fp_data_type val_in = window.getval(win_row,win_col);
			sum += val_in * weight.data[win_row*3+win_col];
		}
	}
	return sum;
}

void write_output(fp_data_type val_output,  yolo_inter_stream &out_stream)
{
	out_stream.write(val_output);
}

void out_stream_merge(yolo_inter_stream out_stream_group[MAX_KERNEL_NUM], yolo_quad_stream &outStream, int input_ch_idx,quad_fp_side_channel curr_input,ap_uint<1> last,int output_ch,int fold_output_ch )
{

	// kind of rotation transmission
	// for every INPUT_CHANNEL inputs, get KERNEL_NUM outputs
	// the transmission is distributed evenly for efficient pipeline
	for(int i=0; i<STREAM_TX_SIZE; i++)
	{
		int kernel_idx = i + input_ch_idx*STREAM_TX_SIZE;
		if(4*kernel_idx<MAX_KERNEL_NUM)
			if(!(out_stream_group[4*kernel_idx].empty()))
			{
				quad_fp_side_channel curr_output;

				curr_output.data.sub_data_0 = out_stream_group[4*kernel_idx].read();
				curr_output.data.sub_data_1 = out_stream_group[4*kernel_idx+1].read();
				curr_output.data.sub_data_2 = out_stream_group[4*kernel_idx+2].read();


				if(!(out_stream_group[4*kernel_idx+3].empty()))
				{
					curr_output.data.sub_data_3 = out_stream_group[4*kernel_idx+3].read();
				}
				else
				{
					curr_output.data.sub_data_3 = 0;
				}

				curr_output.keep = curr_input.keep;
				curr_output.strb = curr_input.strb;
				curr_output.user = curr_input.user;

				if(kernel_idx == fold_output_ch-1)
					curr_output.last = last;
				else
					curr_output.last = 0;

				curr_output.id = curr_input.id;
				curr_output.dest = curr_input.dest;
				outStream.write(curr_output);

			}
	}

}
