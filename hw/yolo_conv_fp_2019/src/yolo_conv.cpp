#include "yolo_conv.h"
//#include "weight_file.h"

void yolo_conv_top(yolo_stream_type &inStream, yolo_stream_type &outStream)
{
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE axis register both port=outStream
#pragma HLS INTERFACE axis register both port=inStream
	yolo_inter_stream out_stream_group[KERNEL_NUM];
#pragma HLS ARRAY_PARTITION variable=out_stream_group complete dim=1
#pragma HLS STREAM variable=out_stream_group depth=2 dim=1
	line_buff_type line_buff_group_0[(INPUT_CHANNEL+1)/2];
	line_buff_type line_buff_group_1[INPUT_CHANNEL-((INPUT_CHANNEL+1)/2)];
	window_type window_group_0[KERNEL_NUM];
#pragma HLS ARRAY_PARTITION variable=window_group_0 complete dim=1
	window_type window_group_1[KERNEL_NUM];
#pragma HLS ARRAY_PARTITION variable=window_group_1 complete dim=1
//	fp_data_type val_output[KERNEL_NUM];
//#pragma HLS ARRAY_PARTITION variable=val_output complete dim=1
	fp_data_type sub0_val_output[KERNEL_NUM];
#pragma HLS ARRAY_PARTITION variable=sub0_val_output complete dim=1
	fp_data_type sub1_val_output[KERNEL_NUM];
#pragma HLS ARRAY_PARTITION variable=sub1_val_output complete dim=1
	fp_data_type biased_output[KERNEL_NUM];
#pragma HLS ARRAY_PARTITION variable=biased_output complete dim=1
	fp_data_type activated_output[KERNEL_NUM];
#pragma HLS ARRAY_PARTITION variable=activated_output complete dim=1
	double_fp_side_channel curr_input;

	local_weight_type local_mem_group[OUTPUT_CHANNEL][INPUT_CHANNEL];
//#pragma HLS ARRAY_PARTITION variable=local_mem_group complete dim=1
#pragma HLS ARRAY_PARTITION variable=local_mem_group complete dim=3

	fp_weight_type kernel_bias_fp[OUTPUT_CHANNEL];
#pragma HLS ARRAY_PARTITION variable=kernel_bias_fp complete dim=1


	for(int k=0; k<OUTPUT_CHANNEL; k++)
	{
		for(int i=0;i<INPUT_CHANNEL;i++)//divide 2 is safe, as either input ch or output ch is even
		{

			for(int j=0; j<(KERNEL_DIM*KERNEL_DIM+1)/2; j++)
			{
#pragma HLS PIPELINE
				curr_input = inStream.read();
				local_mem_group[k][i].data[2*j] = curr_input.data.sub_data_0;
				if(j!=(KERNEL_DIM*KERNEL_DIM+1)/2-1)
					local_mem_group[k][i].data[2*j+1] = curr_input.data.sub_data_1;
			}

		}
	}

	for(int i=0;i<OUTPUT_CHANNEL/2;i++)//division 2 is not safe here!!!
	{
#pragma HLS PIPELINE
		curr_input = inStream.read();
		kernel_bias_fp[i*2] = curr_input.data.sub_data_0;
		kernel_bias_fp[i*2+1] = curr_input.data.sub_data_1;
	}

	for(int row_idx=0;row_idx<INPUT_HEIGHT+1;row_idx++)
		//extra one row to send rest data
	{
		for(int col_idx=0;col_idx<INPUT_WIDTH;col_idx++)
		{
			for(int input_ch_idx=0;input_ch_idx<(INPUT_CHANNEL+1)/2;input_ch_idx++)
			{
#pragma HLS PIPELINE

				int conv_count;


				if((row_idx>=KERNEL_DIM-1)&&(col_idx>=KERNEL_DIM-1))
				{
					conv_count = col_idx - (KERNEL_DIM-1);
				}
				else
				{
					conv_count = 0;
				}

				if(row_idx != INPUT_HEIGHT)
				{
					if(((row_idx == 0)||
					   (row_idx == REAL_INPUT_HEIGHT-1)||
					   (col_idx == 0)||
					   (col_idx == INPUT_WIDTH-1))&&PAD)
					{
						//padding
						curr_input.data.sub_data_0 = 0;
						curr_input.data.sub_data_1 = 0;
					}
					else
					{
						//stream input
						curr_input = inStream.read();
					}

					//line buffer for every input channel
					yolo_line_buffer(curr_input.data.sub_data_0,&line_buff_group_0[input_ch_idx],col_idx);
					if(!(((INPUT_CHANNEL+1)/2!=(INPUT_CHANNEL)/2)&&(input_ch_idx == (INPUT_CHANNEL+1)/2-1)))
						yolo_line_buffer(curr_input.data.sub_data_1,&line_buff_group_1[input_ch_idx],col_idx);

					//wait for line biffer to fill first conv op
					if((row_idx>KERNEL_DIM-2)&&(col_idx>KERNEL_DIM-2))
					{
						window_type kernel_window_0, kernel_window_1;
						kernel_window_0 = slide_window(conv_count,&line_buff_group_0[input_ch_idx]);
						if(!(((INPUT_CHANNEL+1)/2!=(INPUT_CHANNEL)/2)&&(input_ch_idx == (INPUT_CHANNEL+1)/2-1)))
							kernel_window_1 = slide_window(conv_count,&line_buff_group_1[input_ch_idx]);

						//copy data to allow parallelism
						fork_window(kernel_window_0,window_group_0);
						fork_window(kernel_window_1,window_group_1);

						for(int kernel_idx=0; kernel_idx<KERNEL_NUM; kernel_idx++)
						{

							if(input_ch_idx == 0)
							{
								sub0_val_output[kernel_idx] = 0;
								sub1_val_output[kernel_idx] = 0;
							}
							//core of conv, macc



							sub0_val_output[kernel_idx] += window_macc(&window_group_0[kernel_idx],local_mem_group[kernel_idx][2*input_ch_idx]);

							if(!(((INPUT_CHANNEL+1)/2!=(INPUT_CHANNEL)/2)&&(input_ch_idx == (INPUT_CHANNEL+1)/2-1)))
								sub1_val_output[kernel_idx] += window_macc(&window_group_1[kernel_idx],local_mem_group[kernel_idx][2*input_ch_idx+1]);


							//accumulate for number of input channels
							if(input_ch_idx == (INPUT_CHANNEL+1)/2-1)
							{


								biased_output[kernel_idx] = sub0_val_output[kernel_idx] + sub1_val_output[kernel_idx] + kernel_bias_fp[kernel_idx];

								if(LEAKY&&(biased_output[kernel_idx]<0))
								{
									activated_output[kernel_idx] = biased_output[kernel_idx] * (fp_data_type).1;
								}
								else
								{
									activated_output[kernel_idx] = biased_output[kernel_idx];
								}

								if(!(out_stream_group[kernel_idx].full()))
									//write data to internal FIFO
									write_output(activated_output[kernel_idx],out_stream_group[kernel_idx]);
							}
						}



					}
				}




				//read data from the internal FIFO, and write to the output
//				if(((row_idx>KERNEL_DIM-1)&&(col_idx>KERNEL_DIM-1)&&(row_idx!=INPUT_HEIGHT))||
//				   ((row_idx==KERNEL_DIM-1)&&(col_idx>KERNEL_DIM-1))||
//				   ((row_idx>KERNEL_DIM-1)&&(col_idx==KERNEL_DIM-1)&&(row_idx!=INPUT_HEIGHT))||
//				   ((row_idx==INPUT_HEIGHT)&&(col_idx==0)))


                if(((row_idx>KERNEL_DIM-1)&&(col_idx>=KERNEL_DIM-1))||((row_idx==KERNEL_DIM-1)&&(col_idx>KERNEL_DIM-1)))
				{
                	//printf("%d,%d\n",row_idx,col_idx);
    				ap_uint<1> last;
    				if((row_idx==INPUT_HEIGHT)&&(input_ch_idx==(INPUT_CHANNEL+1)/2-1))
    					last = 1;
    				else
    					last = 0;
					out_stream_merge(out_stream_group,outStream,input_ch_idx,curr_input,last);
				}

			}
		}

	}
}

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

void fork_window(window_type kernel_window, window_type window_group[KERNEL_NUM])
{
	for(int win_row=0; win_row < KERNEL_DIM; win_row++)
	{
		for(int win_col=0; win_col < KERNEL_DIM; win_col++)
		{
			fp_data_type val = kernel_window.getval(win_row,win_col);

			for(int win_idx=0; win_idx < KERNEL_NUM; win_idx++)
			{
				window_group[win_idx].insert(val,win_row,win_col);
			}
		}
	}
}

//fp_data_type window_macc(window_type *window, fp_weight_type weight[WINDOW_AREA])
fp_data_type window_macc(window_type *window, local_weight_type weight)
{
	//ap_fixed<32,16,AP_RND_CONV,AP_SAT> sum = 0;
	fp_data_type sum = 0;
	for(int win_row=0; win_row < KERNEL_DIM; win_row++)
	{
		for(int win_col=0; win_col < KERNEL_DIM; win_col++)
		{
			fp_data_type val_in = window->getval(win_row,win_col);
			//ap_fixed<32,16,AP_RND_CONV,AP_SAT> val_out = val_in * weight[win_row*KERNEL_DIM+win_col];
			//fp_data_type val_out = val_in * weight->data[input_ch_idx*KERNEL_DIM*KERNEL_DIM+win_row*KERNEL_DIM+win_col];
			fp_data_type val_out = val_in * weight.data[win_row*KERNEL_DIM+win_col];
			sum += val_out;
		}
	}
	return (fp_data_type)sum;
}

void write_output(fp_data_type val_output,  yolo_inter_stream &out_stream)
{
	out_stream.write(val_output);
}

void out_stream_merge(yolo_inter_stream out_stream_group[KERNEL_NUM], yolo_stream_type &outStream, int input_ch_idx,double_fp_side_channel curr_input,ap_uint<1> last)
{

	// kind of rotation transmission
	// for every INPUT_CHANNEL inputs, get KERNEL_NUM outputs
	// the transmission is distributed evenly for efficient pipeline
	for(int i=0; i<STREAM_TX_SIZE; i++)
	{
		int kernel_idx = i + input_ch_idx*STREAM_TX_SIZE;
		if(2*kernel_idx<KERNEL_NUM)
			if(!(out_stream_group[2*kernel_idx].empty()))
			{
				double_fp_side_channel curr_output;

				curr_output.data.sub_data_0 = out_stream_group[2*kernel_idx].read();

				if(2*kernel_idx+1<KERNEL_NUM)
				{
					if(!(out_stream_group[2*kernel_idx+1].empty()))
					{
						curr_output.data.sub_data_1 = out_stream_group[2*kernel_idx+1].read();
					}
				}
				else
				{
					curr_output.data.sub_data_1 = 0;
				}

				curr_output.keep = curr_input.keep;
				curr_output.strb = curr_input.strb;
				curr_output.user = curr_input.user;
				if(2*kernel_idx == KERNEL_NUM-1||2*kernel_idx == KERNEL_NUM-2)
					curr_output.last = last;
				else
					curr_output.last = 0;
				curr_output.id = curr_input.id;
				curr_output.dest = curr_input.dest;
				outStream.write(curr_output);
			}
	}

}
