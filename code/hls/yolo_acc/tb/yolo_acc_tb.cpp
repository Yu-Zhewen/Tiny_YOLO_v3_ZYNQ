#include "../src/yolo_acc.h"
#include "weight_file.h"
#define ACC_INPUT_H 416
#define ACC_INPUT_W 416
#define ACC_INPUT_FOLD_CH 4
#define BIAS_EN 1
#define LEAKY 1

int main()
{
	yolo_quad_stream inputStream_a("in_stream_a"), inputStream_b("in_stream_b"),
			         outputStream("out_stream");
	bool flag = false;
	FILE *layer_input;
	FILE *layer_output_hls;
	FILE *layer_output_sdk;
	FILE *error_log;
	static fp_data_type output_data[ACC_INPUT_H*ACC_INPUT_H*ACC_INPUT_FOLD_CH*4];

	layer_input = fopen("layer_input.dat","r");
	layer_output_hls = fopen("layer_output_hls.dat","w");
	layer_output_sdk = fopen("layer_output_sdk.dat","r");
	error_log = fopen("error.log","w");

	for(int i=0;i<ACC_INPUT_FOLD_CH;i++)
	{
		quad_fp_side_channel curr_input;


		fp_data_type *bias_p = (fp_data_type *)&kernel_bias_fp_bits[0];
		curr_input.data.sub_data_0 = bias_p[4*i];
		curr_input.data.sub_data_1 = bias_p[4*i+1];
		curr_input.data.sub_data_2 = bias_p[4*i+2];
		curr_input.data.sub_data_3 = bias_p[4*i+3];

		curr_input.keep = 1;
		curr_input.strb = 1;
		curr_input.user = 1;
		curr_input.id   = 0;
		curr_input.dest = 0;

		inputStream_b << curr_input;
	}



	for(int i=0;i<ACC_INPUT_H*ACC_INPUT_W;i++)
	{
		for(int j=0;j<ACC_INPUT_FOLD_CH;j++)
		{
			quad_fp_side_channel curr_input_a,curr_input_b;

			short input_data_sub0;
			short input_data_sub1;
			short input_data_sub2;
			short input_data_sub3;

			fscanf(layer_input,"%hd",&input_data_sub0);
			fscanf(layer_input,"%hd",&input_data_sub1);
			fscanf(layer_input,"%hd",&input_data_sub2);
			fscanf(layer_input,"%hd",&input_data_sub3);

			fp_data_type *sub0_p = (fp_data_type *)&input_data_sub0;
			fp_data_type *sub1_p = (fp_data_type *)&input_data_sub1;
			fp_data_type *sub2_p = (fp_data_type *)&input_data_sub2;
			fp_data_type *sub3_p = (fp_data_type *)&input_data_sub3;

			curr_input_a.data.sub_data_0 = *sub0_p;
			curr_input_a.data.sub_data_1 = *sub1_p;
			curr_input_a.data.sub_data_2 = *sub2_p;
			curr_input_a.data.sub_data_3 = *sub3_p;

			curr_input_a.keep = 1;
			curr_input_a.strb = 1;
			curr_input_a.user = 1;
			curr_input_a.id   = 0;
			curr_input_a.dest = 0;

			curr_input_b.data.sub_data_0 = 0;
			curr_input_b.data.sub_data_1 = 0;
			curr_input_b.data.sub_data_2 = 0;
			curr_input_b.data.sub_data_3 = 0;

			curr_input_b.keep = 1;
			curr_input_b.strb = 1;
			curr_input_b.user = 1;
			curr_input_b.id   = 0;
			curr_input_b.dest = 0;

			inputStream_a << curr_input_a;
			inputStream_b << curr_input_b;
		}
	}

    yolo_acc_top(inputStream_a,inputStream_b,
    		     outputStream,
				 ACC_INPUT_H,ACC_INPUT_W,
				 ACC_INPUT_FOLD_CH,
				 1,1);

	for(int pix_idx=0;pix_idx<ACC_INPUT_H*ACC_INPUT_W;pix_idx++)
	{

		for(int ch_idx=0;ch_idx<ACC_INPUT_FOLD_CH;ch_idx++)
		{
			quad_fp_side_channel curr_output;
			outputStream.read(curr_output);

				output_data[4*(pix_idx*ACC_INPUT_FOLD_CH+ch_idx)] = curr_output.data.sub_data_0;
				output_data[4*(pix_idx*ACC_INPUT_FOLD_CH+ch_idx)+1] = curr_output.data.sub_data_1;
				output_data[4*(pix_idx*ACC_INPUT_FOLD_CH+ch_idx)+2] = curr_output.data.sub_data_2;
				output_data[4*(pix_idx*ACC_INPUT_FOLD_CH+ch_idx)+3] = curr_output.data.sub_data_3;

			if(curr_output.last==1)
				printf("%d\n",pix_idx*ACC_INPUT_FOLD_CH+ch_idx);
		}
	}

	short *ptr = (short *)&output_data[0];
	for(int pix_idx=0;pix_idx<ACC_INPUT_H*ACC_INPUT_W*ACC_INPUT_FOLD_CH;pix_idx++)
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


    if (flag)
            return 1;
    else
            return 0;

}
