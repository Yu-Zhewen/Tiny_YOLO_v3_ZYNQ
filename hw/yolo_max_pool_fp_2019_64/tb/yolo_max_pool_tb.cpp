#include <stdio.h>
#include <math.h>
#include "../src/yolo_max_pool.h"

#define STRIDE 2//1
#define PAD (KERNEL_DIM-1)
#define POOL_PAD 0//1
#define INPUT_CHANNEL 16//512
#define INPUT_WIDTH (416+2*PAD)//13
#define INPUT_HEIGHT (416+2*PAD)
#define OUTPUT_CHANNEL INPUT_CHANNEL
#define OUTPUT_WIDTH ((INPUT_WIDTH-PAD-KERNEL_DIM)/STRIDE+1)
#define OUTPUT_HEIGHT ((INPUT_HEIGHT-PAD-KERNEL_DIM)/STRIDE+1)

int main()
{
	yolo_quad_stream inputStream, outputStream;

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

	for(int pix_idx=0;pix_idx<((INPUT_WIDTH-2*PAD)*(INPUT_HEIGHT-2*PAD)*INPUT_CHANNEL/4);pix_idx++)
	{
		quad_fp_side_channel curr_input;
		short input_data_0,input_data_1,input_data_2,input_data_3;
		fscanf(layer_input,"%hd",&input_data_0);
		fscanf(layer_input,"%hd",&input_data_1);
		fscanf(layer_input,"%hd",&input_data_2);
		fscanf(layer_input,"%hd",&input_data_3);

		fp_data_type *sub0_p = (fp_data_type *)&input_data_0;
		fp_data_type *sub1_p = (fp_data_type *)&input_data_1;
		fp_data_type *sub2_p = (fp_data_type *)&input_data_2;
		fp_data_type *sub3_p = (fp_data_type *)&input_data_3;

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

    yolo_max_pool_top(inputStream,outputStream,
    		          OUTPUT_HEIGHT+POOL_PAD,OUTPUT_WIDTH+POOL_PAD,
					  INPUT_HEIGHT-2*PAD,INPUT_WIDTH-2*PAD,INPUT_CHANNEL/4,
					  STRIDE);

	for(int pix_idx=0;pix_idx<((OUTPUT_WIDTH*OUTPUT_HEIGHT)*OUTPUT_CHANNEL/4);pix_idx++)
	{
		quad_fp_side_channel curr_output;
		outputStream.read(curr_output);
		output_data[4*pix_idx]   = curr_output.data.sub_data_0;
		output_data[4*pix_idx+1] = curr_output.data.sub_data_1;
		output_data[4*pix_idx+2]   = curr_output.data.sub_data_2;
		output_data[4*pix_idx+3] = curr_output.data.sub_data_3;
		if(curr_output.last==1)
			printf("%d\n",pix_idx);
	}

	short *ptr = (short *)&output_data[0];
	for(int pix_idx=0;pix_idx<((OUTPUT_WIDTH*OUTPUT_HEIGHT)*OUTPUT_CHANNEL);pix_idx++)
	{
		fprintf(layer_output_hls,"%hd\n",ptr[pix_idx]);

		short ref_data;
		fscanf(layer_output_sdk,"%hd\n",&ref_data);

		if(abs(ptr[pix_idx]-ref_data)>2)
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
