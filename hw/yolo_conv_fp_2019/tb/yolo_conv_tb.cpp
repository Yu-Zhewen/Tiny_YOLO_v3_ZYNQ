#include <stdio.h>
#include <math.h>
#include "../src/yolo_conv.h"
//#include "../src/weight_file.h"

int main()
{
	yolo_stream_type inputStream, outputStream;

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

	int input_height_max = (INPUT_HEIGHT == REAL_INPUT_HEIGHT) ? INPUT_HEIGHT-2*PAD : INPUT_HEIGHT-PAD;

	for(int row_idx=0;row_idx<input_height_max;row_idx++)
	{
		for(int col_idx=0;col_idx<INPUT_WIDTH-2*PAD;col_idx++)
		{
			for(int input_ch_idx=0;input_ch_idx<(INPUT_CHANNEL+1)/2;input_ch_idx++)
			{
				double_fp_side_channel curr_input;

				short input_data_sub0;
				short input_data_sub1;

				fscanf(layer_input,"%hd",&input_data_sub0);
				if(2*input_ch_idx+1<INPUT_CHANNEL)
					fscanf(layer_input,"%hd",&input_data_sub1);
				else
					input_data_sub1 = 0;

				fp_data_type *sub0_p = (fp_data_type *)&input_data_sub0;
				fp_data_type *sub1_p = (fp_data_type *)&input_data_sub1;

				curr_input.data.sub_data_0 = *sub0_p;
				curr_input.data.sub_data_1 = *sub1_p;
				curr_input.keep = 1;
				curr_input.strb = 1;
				curr_input.user = 1;
				curr_input.id   = 0;
				curr_input.dest = 0;

				inputStream << curr_input;
			}
		}
	}

    yolo_conv_top(inputStream,outputStream);

	for(int pix_idx=0;pix_idx<((OUTPUT_WIDTH*OUTPUT_HEIGHT)*((OUTPUT_CHANNEL+1)/2));pix_idx++)
	{
		double_fp_side_channel curr_output;
		outputStream.read(curr_output);
		output_data[2*pix_idx] = curr_output.data.sub_data_0;
		if(2*pix_idx+1<OUTPUT_WIDTH*OUTPUT_HEIGHT*OUTPUT_CHANNEL)
			output_data[2*pix_idx+1] = curr_output.data.sub_data_1;
		if(curr_output.last==1)
			printf("%d\n",pix_idx);
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
