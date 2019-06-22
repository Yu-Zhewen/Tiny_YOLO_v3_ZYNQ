#include <stdio.h>
#include <math.h>
#include "../src/yolo_max_pool.h"

int main()
{
	yolo_stream_type inputStream, outputStream;

	FILE *layer_input;
	FILE *layer_output_hls;
	FILE *layer_output_sdk;
	FILE *error_log;

	bool flag = false;

	static float output_data[OUTPUT_WIDTH*OUTPUT_HEIGHT*OUTPUT_CHANNEL];

	layer_input = fopen("layer_input.dat","r");
	layer_output_hls = fopen("layer_output_hls.dat","w");
	layer_output_sdk = fopen("layer_output_sdk.dat","r");
	error_log = fopen("error.log","w");

	for(int pix_idx=0;pix_idx<((INPUT_WIDTH-2*PAD)*(INPUT_HEIGHT-2*PAD)*INPUT_CHANNEL);pix_idx++)
	{
		float_32_side_channel curr_input;
		float input_data;
		fscanf(layer_input,"%f",&input_data);

		curr_input.data = input_data;
		curr_input.keep = 1;
		curr_input.strb = 1;
		curr_input.user = 1;
		curr_input.id   = 0;
		curr_input.dest = 0;

		inputStream << curr_input;
	}

    yolo_max_pool_top(inputStream,outputStream);

	for(int pix_idx=0;pix_idx<((OUTPUT_WIDTH*OUTPUT_HEIGHT)*OUTPUT_CHANNEL);pix_idx++)
	{
		float_32_side_channel curr_output;
		outputStream.read(curr_output);
		output_data[pix_idx] = curr_output.data;
		if(curr_output.last==1)
			printf("%d\n",pix_idx);
	}

	for(int pix_idx=0;pix_idx<((OUTPUT_WIDTH*OUTPUT_HEIGHT)*OUTPUT_CHANNEL);pix_idx++)
	{
		fprintf(layer_output_hls,"%f\n",output_data[pix_idx]);

		float ref_data;
		fscanf(layer_output_sdk,"%f\n",&ref_data);

		if(fabs(output_data[pix_idx]-ref_data)>2e-5)
		{
			flag = true;
			fprintf(error_log,"%d\t%f\t%f\n",pix_idx,ref_data,output_data[pix_idx]);
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
