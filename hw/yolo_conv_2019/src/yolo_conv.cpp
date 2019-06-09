#include "yolo_conv.h"
#include "weight_file.h"

void yolo_conv_top(yolo_stream_type &inStream, yolo_stream_type &outStream)
{
#pragma HLS ARRAY_PARTITION variable=kernel_weight block factor=16 dim=1
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE axis register both port=outStream
#pragma HLS INTERFACE axis register both port=inStream
	yolo_inter_stream out_stream_group[KERNEL_NUM];
#pragma HLS ARRAY_PARTITION variable=out_stream_group complete dim=1
#pragma HLS STREAM variable=out_stream_group depth=2 dim=1
	line_buff_type line_buff_group[INPUT_CHANNEL];
	window_type window_group[KERNEL_NUM];
#pragma HLS ARRAY_PARTITION variable=window_group complete dim=1
	float val_output[KERNEL_NUM];
#pragma HLS ARRAY_PARTITION variable=val_output complete dim=1
	float biased_output[KERNEL_NUM];
#pragma HLS ARRAY_PARTITION variable=biased_output complete dim=1
	float activated_output[KERNEL_NUM];
#pragma HLS ARRAY_PARTITION variable=activated_output complete dim=1
	float_32_side_channel curr_input;

	for(int row_idx=0;row_idx<INPUT_HEIGHT+1;row_idx++)
		//extra one row to send rest data
	{
		for(int col_idx=0;col_idx<INPUT_WIDTH;col_idx++)
		{
			for(int input_ch_idx=0;input_ch_idx<INPUT_CHANNEL;input_ch_idx++)
			{
#pragma HLS PIPELINE

				int conv_count;

				if((row_idx>=KERNEL_DIM-1)&&(col_idx>=KERNEL_DIM-1))
					conv_count = col_idx - (KERNEL_DIM-1);
				else
					conv_count = 0;

				if(row_idx != INPUT_HEIGHT)
				{
				//stream input
				curr_input = inStream.read();

				//line buffer for every input channel
				yolo_line_buffer(curr_input.data,&line_buff_group[input_ch_idx],col_idx);

				//wait for line biffer to fill first conv op
				if((row_idx>=KERNEL_DIM-1)&&(col_idx>=KERNEL_DIM-1))
				{
					window_type kernel_window;
					kernel_window = slide_window(conv_count,&line_buff_group[input_ch_idx]);
					//copy data to allow parallelism
					fork_window(kernel_window,window_group);

					for(int kernel_idx=0; kernel_idx<KERNEL_NUM; kernel_idx++)
					{
						if(input_ch_idx == 0)
							val_output[kernel_idx] = 0;
						//core of conv, macc
						val_output[kernel_idx] += window_macc(&window_group[kernel_idx],&kernel_weight[kernel_idx*KERNEL_AREA+input_ch_idx*KERNEL_DIM*KERNEL_DIM]);

						//accumulate for number of input channels
						if(input_ch_idx == INPUT_CHANNEL-1)
						{
							biased_output[kernel_idx] = val_output[kernel_idx] + kernel_bias[kernel_idx];

							if(LEAKY&&(biased_output[kernel_idx]<0))
							{
								activated_output[kernel_idx] = biased_output[kernel_idx] * .1;
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
				if(((row_idx>KERNEL_DIM-1)&&(col_idx>KERNEL_DIM-1))||
				   ((row_idx==KERNEL_DIM-1)&&(col_idx>KERNEL_DIM-1))||
				   ((row_idx>KERNEL_DIM-1)&&(col_idx==KERNEL_DIM-1))||
				   ((row_idx==INPUT_HEIGHT)&&(col_idx==0)))
				{
					ap_uint<1> last;
					if((row_idx==INPUT_HEIGHT)&&(col_idx==0)&&(input_ch_idx==INPUT_CHANNEL-1))
						last = 1;
					else
						last = 0;
					out_stream_merge(out_stream_group,outStream,input_ch_idx,curr_input,last);
				}

			}
		}

	}


//	for(int kernel_idx=0; kernel_idx<KERNEL_NUM; kernel_idx++)
//	{
//		float_32_side_channel curr_output;
//
//		curr_output.data = out_stream_group[kernel_idx].read();
//		curr_output.keep = curr_input.keep;
//		curr_output.strb = curr_input.strb;
//		curr_output.user = curr_input.user;
//		if(kernel_idx == KERNEL_NUM-1)
//			curr_output.last = 1;
//		else
//			curr_output.last = 0;
//		curr_output.id = curr_input.id;
//		curr_output.dest = curr_input.dest;
//		outStream.write(curr_output);
//	}

}

void yolo_line_buffer(float curr_data, line_buff_type *line_buff, int col_idx)
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
			float val = (float)line_buff->getval(win_row,win_col+conv_count);
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
			float val = kernel_window.getval(win_row,win_col);

			for(int win_idx=0; win_idx < KERNEL_NUM; win_idx++)
			{
				window_group[win_idx].insert(val,win_row,win_col);
			}
		}
	}
}

float window_macc(window_type *window, float weight[WINDOW_AREA])
{
	float sum = 0;
	for(int win_row=0; win_row < KERNEL_DIM; win_row++)
	{
		for(int win_col=0; win_col < KERNEL_DIM; win_col++)
		{
			float val = window->getval(win_row,win_col);
			val *= weight[win_row*KERNEL_DIM+win_col];
			sum += val;
		}
	}
	return sum;
}

void write_output(float val_output,  yolo_inter_stream &out_stream)
{
	out_stream.write(val_output);
}

void out_stream_merge(yolo_inter_stream out_stream_group[KERNEL_NUM], yolo_stream_type &outStream, int input_ch_idx,float_32_side_channel curr_input,ap_uint<1> last)
{

	// kind of rotation transmission
	// for every INPUT_CHANNEL inputs, get KERNEL_NUM outputs
	// the transmission is distributed evenly for efficient pipeline
	for(int i=0; i<STREAM_TX_SIZE; i++)
	{
		int kernel_idx = i + input_ch_idx*STREAM_TX_SIZE;
		if(kernel_idx<KERNEL_NUM)
			if(!(out_stream_group[kernel_idx].empty()))
			{
				float_32_side_channel curr_output;

				curr_output.data = out_stream_group[kernel_idx].read();
				curr_output.keep = curr_input.keep;
				curr_output.strb = curr_input.strb;
				curr_output.user = curr_input.user;
				if(kernel_idx == KERNEL_NUM-1)
					curr_output.last = last;
				else
					curr_output.last = 0;
				curr_output.id = curr_input.id;
				curr_output.dest = curr_input.dest;
				outStream.write(curr_output);
			}

	}

}
