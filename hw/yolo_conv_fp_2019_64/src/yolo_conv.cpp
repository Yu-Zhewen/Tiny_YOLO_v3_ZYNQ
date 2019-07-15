#include "yolo_conv.h"
//#include "weight_file.h"

void yolo_conv_top(yolo_quad_stream &inStream, yolo_quad_stream &outStream,
		           ap_uint<MAX_CH_BIT> output_ch, ap_uint<MAX_CH_BIT> input_ch, ap_uint<MAX_FOLD_CH_BIT> fold_output_ch, ap_uint<MAX_FOLD_CH_BIT> fold_input_ch, ap_uint<3> kernel_dim,
		           ap_uint<9> input_h, ap_uint<9> input_w, ap_uint<9> real_input_h,
		           ap_uint<1> leaky,
				   ap_uint<3> fold_win_area)
{
#pragma HLS INTERFACE s_axilite port=fold_input_ch bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=fold_output_ch bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=input_ch bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=output_ch bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=fold_win_area bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=kernel_dim bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=leaky bundle=CTRL_BUS
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

	fp_data_type val_output[MAX_KERNEL_NUM];
#pragma HLS ARRAY_PARTITION variable=val_output complete dim=1
	fp_data_type sub0_val_output[MAX_KERNEL_NUM];
#pragma HLS ARRAY_PARTITION variable=sub0_val_output complete dim=1
	fp_data_type sub1_val_output[MAX_KERNEL_NUM];
#pragma HLS ARRAY_PARTITION variable=sub1_val_output complete dim=1
	fp_data_type sub2_val_output[MAX_KERNEL_NUM];
#pragma HLS ARRAY_PARTITION variable=sub2_val_output complete dim=1
	fp_data_type sub3_val_output[MAX_KERNEL_NUM];
#pragma HLS ARRAY_PARTITION variable=sub3_val_output complete dim=1

	quad_fp_side_channel curr_input;

	local_weight_type local_mem_group[MAX_KERNEL_NUM][MAX_INPUT_CH];
#pragma HLS ARRAY_PARTITION variable=local_mem_group block factor=4 dim=1
#pragma HLS ARRAY_PARTITION variable=local_mem_group complete dim=3

	fp_weight_type kernel_bias_fp[MAX_KERNEL_NUM];
#pragma HLS ARRAY_PARTITION variable=kernel_bias_fp block factor=4 dim=1



	for(ap_uint<MAX_CH_BIT> k=0; k<output_ch; k++)
	{
#pragma HLS LOOP_TRIPCOUNT min=16 max=16
		for(ap_uint<MAX_CH_BIT> i=0;i<input_ch;i++)
		{
#pragma HLS LOOP_TRIPCOUNT min=3 max=3
			for(ap_uint<3> j=0; j<fold_win_area; j++)
			{
#pragma HLS PIPELINE
#pragma HLS LOOP_TRIPCOUNT min=3 max=3
				curr_input = inStream.read();
				local_mem_group[k][i].data[4*j] = curr_input.data.sub_data_0;
				if(j!=(kernel_dim*kernel_dim+3)/4-1)
				{
					local_mem_group[k][i].data[4*j+1] = curr_input.data.sub_data_1;
					local_mem_group[k][i].data[4*j+2] = curr_input.data.sub_data_2;
					local_mem_group[k][i].data[4*j+3] = curr_input.data.sub_data_3;
				}
			}

		}
	}


	for(ap_uint<MAX_FOLD_CH_BIT> i=0;i<fold_output_ch;i++)//division 2 is not safe here!!!
	{
#pragma HLS LOOP_TRIPCOUNT min=4 max=4
#pragma HLS PIPELINE
		curr_input = inStream.read();
		kernel_bias_fp[4*i] = curr_input.data.sub_data_0;
		kernel_bias_fp[4*i+1] = curr_input.data.sub_data_1;
		kernel_bias_fp[4*i+2] = curr_input.data.sub_data_2;
		kernel_bias_fp[4*i+3] = curr_input.data.sub_data_3;
	}

	for(ap_uint<9> row_idx=0;row_idx<input_h+1;row_idx++)
		//extra one row to send rest data
	{
#pragma HLS LOOP_TRIPCOUNT min=419 max=419
		for(ap_uint<9> col_idx=0;col_idx<input_w;col_idx++)
		{
#pragma HLS LOOP_TRIPCOUNT min=418 max=418
			for(ap_uint<MAX_FOLD_CH_BIT> input_ch_idx=0;input_ch_idx<fold_input_ch;input_ch_idx++)
			{
#pragma HLS PIPELINE
#pragma HLS LOOP_TRIPCOUNT min=1 max=1

				ap_uint<9> conv_row_count=0,conv_col_count=0;


				if((row_idx>kernel_dim-2)&&(col_idx>kernel_dim-2))
				{
					conv_row_count = row_idx - (kernel_dim-1);
					conv_col_count = col_idx - (kernel_dim-1);
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
					if((row_idx>kernel_dim-2)&&(col_idx>kernel_dim-2))
					{
						window_type kernel_window_0, kernel_window_1, kernel_window_2, kernel_window_3;

						kernel_window_0 = slide_window(conv_col_count,&line_buff_group_0[input_ch_idx],kernel_dim);
						kernel_window_1 = slide_window(conv_col_count,&line_buff_group_1[input_ch_idx],kernel_dim);
						kernel_window_2 = slide_window(conv_col_count,&line_buff_group_2[input_ch_idx],kernel_dim);
						kernel_window_3 = slide_window(conv_col_count,&line_buff_group_3[input_ch_idx],kernel_dim);
						//copy data to allow parallelism


						for(ap_uint<MAX_CH_BIT> kernel_idx=0; kernel_idx<MAX_KERNEL_NUM; kernel_idx++)
						{

							//core of conv, macc
							sub0_val_output[kernel_idx] = window_macc(kernel_window_0,local_mem_group[kernel_idx][4*input_ch_idx],kernel_dim);
							sub1_val_output[kernel_idx] = window_macc(kernel_window_1,local_mem_group[kernel_idx][4*input_ch_idx+1],kernel_dim);
							sub2_val_output[kernel_idx] = window_macc(kernel_window_2,local_mem_group[kernel_idx][4*input_ch_idx+2],kernel_dim);
							if(input_ch==3)
							{
								sub3_val_output[kernel_idx] = 0;
							}
							else
							{
								sub3_val_output[kernel_idx] = window_macc(kernel_window_3,local_mem_group[kernel_idx][4*input_ch_idx+3],kernel_dim);
							}
							val_output[kernel_idx]=post_process(sub0_val_output[kernel_idx],sub1_val_output[kernel_idx],sub2_val_output[kernel_idx],sub3_val_output[kernel_idx],
					   										 input_ch_idx == fold_input_ch-1,leaky,
															 kernel_bias_fp[kernel_idx],input_ch_idx,val_output[kernel_idx]);

							//accumulate for number of input channels
							if(input_ch_idx == fold_input_ch-1)
							{
								if(kernel_idx<output_ch)
								{

								if(!(out_stream_group[kernel_idx].full()))
									//write data to internal FIFO
									write_output(val_output[kernel_idx],out_stream_group[kernel_idx]);
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

fp_data_type post_process(fp_data_type sub0_val_output,fp_data_type sub1_val_output,fp_data_type sub2_val_output,fp_data_type sub3_val_output,
		          bool acc_flag,ap_uint<1> leaky,
				  fp_weight_type bias,ap_uint<MAX_FOLD_CH_BIT> input_ch_idx,fp_data_type val_output)
{
	fp_data_type biased_output=0,activated_output=0;
	if(input_ch_idx==0)
	{
		val_output=0;
	}

	val_output += sub0_val_output;
	val_output += sub1_val_output;
	val_output += sub2_val_output;
	val_output += sub3_val_output;



	if(acc_flag)
	{
		biased_output = val_output + bias;
		if(leaky&&biased_output<0)
		{
			activated_output = biased_output * (fp_data_type).1;
		}
		else
		{
			activated_output = biased_output;
		}

		return activated_output;
	}
	else
	{
		return val_output;
	}
}

void yolo_line_buffer(fp_data_type curr_data, line_buff_type *line_buff, ap_uint<9> col_idx)
{

	line_buff->shift_up(col_idx);
	line_buff->insert_top(curr_data,col_idx);

}

window_type slide_window(ap_uint<9> conv_count, line_buff_type *line_buff, ap_uint<3> kernel_dim)
{
	window_type kernel_window;

	for(ap_uint<3> win_row=0; win_row < 3; win_row++)
	{
		for(ap_uint<3> win_col=0; win_col < 3; win_col++)
		{
			fp_data_type val = (fp_data_type)line_buff->getval(win_row,win_col+conv_count);
			kernel_window.insert(val,win_row,win_col);
		}
	}

	return kernel_window;
}

fp_data_type window_macc(window_type window, local_weight_type weight, ap_uint<3> kernel_dim)
{

	ap_fixed<32,16,AP_RND_CONV,AP_SAT> sum = 0;
	for(ap_uint<3> win_row=0; win_row < 3; win_row++)
	{
		for(ap_uint<3> win_col=0; win_col < 3; win_col++)
		{
			fp_data_type val_in = window.getval(win_row,win_col);
			sum += val_in * weight.data[win_row*3+win_col];
		}
	}
	return (fp_data_type)sum;
}

void write_output(fp_data_type val_output,  yolo_inter_stream &out_stream)
{
	out_stream.write(val_output);
}

void out_stream_merge(yolo_inter_stream out_stream_group[MAX_KERNEL_NUM], yolo_quad_stream &outStream, ap_uint<MAX_FOLD_CH_BIT> input_ch_idx,quad_fp_side_channel curr_input,ap_uint<1> last,ap_uint<MAX_CH_BIT> output_ch,ap_uint<MAX_FOLD_CH_BIT> fold_output_ch )
{

	// kind of rotation transmission
	// for every INPUT_CHANNEL inputs, get KERNEL_NUM outputs
	// the transmission is distributed evenly for efficient pipeline
	for(ap_uint<MAX_FOLD_CH_BIT> i=0; i<STREAM_TX_SIZE; i++)
	{
		ap_uint<MAX_FOLD_CH_BIT> kernel_idx = i + input_ch_idx*STREAM_TX_SIZE;
		if(4*kernel_idx<MAX_KERNEL_NUM)
			if(!(out_stream_group[4*kernel_idx].empty()))
			{
				quad_fp_side_channel curr_output;

				curr_output.data.sub_data_0 = out_stream_group[4*kernel_idx].read();


				//if(!(out_stream_group[4*kernel_idx+1].empty()))
				//{
					curr_output.data.sub_data_1 = out_stream_group[4*kernel_idx+1].read();
				//}

				//else
				//{
				//	curr_output.data.sub_data_1 = 0;
				//}


				//if(!(out_stream_group[4*kernel_idx+2].empty()))
				//{
					curr_output.data.sub_data_2 = out_stream_group[4*kernel_idx+2].read();
				//}

				//else
				//{
				//	curr_output.data.sub_data_2 = 0;
				//}


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
				//if(4*kernel_idx == output_ch-1||4*kernel_idx+1 == output_ch-1||4*kernel_idx+2 == output_ch-1||4*kernel_idx+3 == output_ch-1)
					curr_output.last = last;
				else
					curr_output.last = 0;
				curr_output.id = curr_input.id;
				curr_output.dest = curr_input.dest;
				outStream.write(curr_output);

			}
	}

}
