#include <stdio.h>
#include <math.h>
#include "../src/yolo_conv.h"
#include "weight_file.h"

#define KERNEL_DIM 3
#define PAD 1
#define INPUT_CHANNEL 3
#define INPUT_WIDTH (416+2*PAD)
#define INPUT_HEIGHT (3+2*PAD)
#define REAL_INPUT_HEIGHT (416+2*PAD)
#define OUTPUT_CHANNEL 16
#define OUTPUT_WIDTH 416
#define OUTPUT_HEIGHT 3

#define LEAKY 1

#define WINDOW_AREA KERNEL_DIM*KERNEL_DIM
#define KERNEL_AREA WINDOW_AREA*INPUT_CHANNEL

int main()
{
	yolo_quad_stream inputStream("in_stream"), outputStream("out_stream");

	FILE *layer_input;
	FILE *layer_output_hls;
	FILE *layer_output_sdk;
	FILE *error_log;

	bool flag = false;

	static fp_data_type output_data[OUTPUT_WIDTH*OUTPUT_HEIGHT*OUTPUT_CHANNEL];

	layer_input = fopen("layer_input.dat","r");
	layer_output_hls = fopen("layer_output_hls.dat","w");
	layer_output_sdk = fopen("layer_output_sdk.dat","r");
	error_log = fopen("error.log","w");

	int k = 0;

	for(int m=0;m<OUTPUT_CHANNEL;m++)
	{
	for(int i=0;i<INPUT_CHANNEL;i++)
	{
		for(int j=0;j<(KERNEL_DIM*KERNEL_DIM+3)/4;j++)
		{
			quad_fp_side_channel curr_input;


				fp_data_type *weight_p = (fp_data_type *)&kernel_weight_fp_bits[0];
				curr_input.data.sub_data_0 = weight_p[k++];

				if(j==(KERNEL_DIM*KERNEL_DIM+3)/4-1)
				{
					curr_input.data.sub_data_1 = 0;
					curr_input.data.sub_data_2 = 0;
					curr_input.data.sub_data_3 = 0;
				}
				else
				{
					curr_input.data.sub_data_1 = weight_p[k++];
					curr_input.data.sub_data_2 = weight_p[k++];
					curr_input.data.sub_data_3 = weight_p[k++];
				}

			curr_input.keep = 1;
			curr_input.strb = 1;
			curr_input.user = 1;
			curr_input.id   = 0;
			curr_input.dest = 0;

			inputStream << curr_input;
		}
	}
	}


	int input_height_max = (INPUT_HEIGHT == REAL_INPUT_HEIGHT) ? INPUT_HEIGHT-2*PAD : INPUT_HEIGHT-PAD;

	for(int row_idx=0;row_idx<input_height_max;row_idx++)
	{
		for(int col_idx=0;col_idx<INPUT_WIDTH-2*PAD;col_idx++)
		{
			for(int input_ch_idx=0;input_ch_idx<(INPUT_CHANNEL+3)/4;input_ch_idx++)
			{
				quad_fp_side_channel curr_input;

				short input_data_sub0;
				short input_data_sub1;
				short input_data_sub2;
				short input_data_sub3;



					fscanf(layer_input,"%hd",&input_data_sub0);
					fscanf(layer_input,"%hd",&input_data_sub1);
					fscanf(layer_input,"%hd",&input_data_sub2);
					if(!(((INPUT_CHANNEL+3)/4!=(INPUT_CHANNEL)/4)&&(input_ch_idx == (INPUT_CHANNEL+3)/4-1)))
						fscanf(layer_input,"%hd",&input_data_sub3);
					else
						input_data_sub3 = 0;

					fp_data_type *sub0_p = (fp_data_type *)&input_data_sub0;
					fp_data_type *sub1_p = (fp_data_type *)&input_data_sub1;
					fp_data_type *sub2_p = (fp_data_type *)&input_data_sub2;
					fp_data_type *sub3_p = (fp_data_type *)&input_data_sub3;

					curr_input.data.sub_data_0 = *sub0_p;
					curr_input.data.sub_data_1 = *sub1_p;
					curr_input.data.sub_data_2 = *sub2_p;
					curr_input.data.sub_data_3 = *sub3_p;

				curr_input.keep = 1;
				curr_input.strb = 1;
				curr_input.user = 1;
				curr_input.id   = 0;
				curr_input.dest = 0;

				inputStream << curr_input;
			}
		}
	}


    yolo_conv_top(inputStream,outputStream,
    		      OUTPUT_CHANNEL,INPUT_CHANNEL,(OUTPUT_CHANNEL+3)/4,(INPUT_CHANNEL+3)/4,//KERNEL_DIM,
				  INPUT_HEIGHT,INPUT_WIDTH,REAL_INPUT_HEIGHT,
				  (KERNEL_DIM*KERNEL_DIM+3)/4);

	for(int pix_idx=0;pix_idx<(OUTPUT_WIDTH*OUTPUT_HEIGHT);pix_idx++)
	{

		for(int ch_idx=0;ch_idx<(OUTPUT_CHANNEL)/4;ch_idx++)
		{
			quad_fp_side_channel curr_output;
			outputStream.read(curr_output);

				output_data[4*(pix_idx*(OUTPUT_CHANNEL)/4+ch_idx)] = curr_output.data.sub_data_0;
				output_data[4*(pix_idx*(OUTPUT_CHANNEL)/4+ch_idx)+1] = curr_output.data.sub_data_1;
				output_data[4*(pix_idx*(OUTPUT_CHANNEL)/4+ch_idx)+2] = curr_output.data.sub_data_2;
				output_data[4*(pix_idx*(OUTPUT_CHANNEL)/4+ch_idx)+3] = curr_output.data.sub_data_3;

			if(curr_output.last==1)
				printf("%d\n",pix_idx*(OUTPUT_CHANNEL)/4+ch_idx);
		}
	}

	short *ptr = (short *)&output_data[0];
	for(int pix_idx=0;pix_idx<OUTPUT_WIDTH*OUTPUT_HEIGHT*OUTPUT_CHANNEL;pix_idx++)
	{

		fprintf(layer_output_hls,"%hd\n",ptr[pix_idx]);
		short ref_data;
		fscanf(layer_output_sdk,"%hd\n",&ref_data);

		if(abs(ptr[pix_idx]-ref_data)>64)
		{
			flag = true;
			fprintf(error_log,"%d\t%hd\t%hd\n",pix_idx,ref_data,ptr[pix_idx]);
		}
	}

	fclose(layer_input);
	fclose(layer_output_hls);
	fclose(layer_output_sdk);
	fclose(error_log);

    if (flag)
            return 1;
    else
            return 0;


}
