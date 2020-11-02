#include "../src/yolo_yolo.h"

int main()
{
	yolo_quad_stream inputStream("in_stream"), outputStream("out_stream");

	FILE *layer_input;
	FILE *layer_output_hls;
	FILE *layer_output_sdk;
	FILE *error_log;

	FILE *layer_input_reduce;
	FILE *layer_output_sdk_reduce;

	bool flag = false;

	static fp_data_type output_data[YOLO_INPUT_HEIGHT*YOLO_INPUT_WIDTH*MAX_KERNEL_NUM];
	static short ref_data[YOLO_INPUT_HEIGHT*YOLO_INPUT_WIDTH*MAX_KERNEL_NUM];
	static short input_data[YOLO_INPUT_HEIGHT*YOLO_INPUT_WIDTH*MAX_KERNEL_NUM];
	layer_input = fopen("layer_input.dat","r");
	layer_output_hls = fopen("layer_output_hls.dat","w");
	layer_output_sdk = fopen("layer_output_sdk.dat","r");

	layer_input_reduce = fopen("layer_input_reduce.dat","w");
	layer_output_sdk_reduce = fopen("layer_output_sdk_reduce.dat","w");
	error_log = fopen("error.log","w");


	for(int row_idx=0;row_idx<YOLO_INPUT_HEIGHT;row_idx++)
	{
		for(int col_idx=0;col_idx<YOLO_INPUT_WIDTH;col_idx++)
		{
			for(int input_ch_idx=0;input_ch_idx<YOLO_FOLD_TOTAL_CHANNEL;input_ch_idx++)
			{
				short input_data_sub0;
				short input_data_sub1;
				short input_data_sub2;
				short input_data_sub3;

				fscanf(layer_input,"%hd",&input_data_sub0);
				fscanf(layer_input,"%hd",&input_data_sub1);
				fscanf(layer_input,"%hd",&input_data_sub2);
				if(input_ch_idx!=YOLO_FOLD_TOTAL_CHANNEL-1)
				{
					fscanf(layer_input,"%hd",&input_data_sub3);
				}

				if(input_ch_idx<MAX_KERNEL_NUM/4)
				{
					quad_fp_side_channel curr_input;

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

					input_data[row_idx*YOLO_INPUT_WIDTH*MAX_KERNEL_NUM+col_idx*MAX_KERNEL_NUM+4*input_ch_idx]   = input_data_sub0;
					input_data[row_idx*YOLO_INPUT_WIDTH*MAX_KERNEL_NUM+col_idx*MAX_KERNEL_NUM+4*input_ch_idx+1] = input_data_sub1;
					input_data[row_idx*YOLO_INPUT_WIDTH*MAX_KERNEL_NUM+col_idx*MAX_KERNEL_NUM+4*input_ch_idx+2] = input_data_sub2;
					input_data[row_idx*YOLO_INPUT_WIDTH*MAX_KERNEL_NUM+col_idx*MAX_KERNEL_NUM+4*input_ch_idx+3] = input_data_sub3;
					fprintf(layer_input_reduce,"%hd\n",input_data_sub0);
					fprintf(layer_input_reduce,"%hd\n",input_data_sub1);
					fprintf(layer_input_reduce,"%hd\n",input_data_sub2);
					fprintf(layer_input_reduce,"%hd\n",input_data_sub3);
					inputStream << curr_input;
				}

			}
		}
	}
	ap_uint<32> activate_en=0xfffffff3;


    yolo_yolo_top(inputStream,outputStream,activate_en,13,13);

	for(int pix_idx=0;pix_idx<(YOLO_INPUT_HEIGHT*YOLO_INPUT_WIDTH*MAX_KERNEL_NUM/4);pix_idx++)
	{
		quad_fp_side_channel curr_output;
		outputStream.read(curr_output);

		output_data[4*pix_idx]   = curr_output.data.sub_data_0;
		output_data[4*pix_idx+1] = curr_output.data.sub_data_1;
		output_data[4*pix_idx+2] = curr_output.data.sub_data_2;
		output_data[4*pix_idx+3] = curr_output.data.sub_data_3;

		if(curr_output.last==1)
			printf("last:%d\n",pix_idx);
	}

	short *ptr = (short *)&output_data[0];

	for(int row_idx=0;row_idx<YOLO_INPUT_HEIGHT;row_idx++)
	{
		for(int col_idx=0;col_idx<YOLO_INPUT_WIDTH;col_idx++)
		{
			for(int output_ch_idx=0;output_ch_idx<YOLO_FOLD_TOTAL_CHANNEL;output_ch_idx++)
			{
				short output_data_sub0;
				short output_data_sub1;
				short output_data_sub2;
				short output_data_sub3;

				fscanf(layer_output_sdk,"%hd",&output_data_sub0);
				fscanf(layer_output_sdk,"%hd",&output_data_sub1);
				fscanf(layer_output_sdk,"%hd",&output_data_sub2);
				if(output_ch_idx!=YOLO_FOLD_TOTAL_CHANNEL-1)
				{
					fscanf(layer_output_sdk,"%hd",&output_data_sub3);
				}

				if(output_ch_idx<MAX_KERNEL_NUM/4)
				{
					ref_data[row_idx*YOLO_INPUT_WIDTH*MAX_KERNEL_NUM+col_idx*MAX_KERNEL_NUM+4*output_ch_idx]   = output_data_sub0;
					ref_data[row_idx*YOLO_INPUT_WIDTH*MAX_KERNEL_NUM+col_idx*MAX_KERNEL_NUM+4*output_ch_idx+1] = output_data_sub1;
					ref_data[row_idx*YOLO_INPUT_WIDTH*MAX_KERNEL_NUM+col_idx*MAX_KERNEL_NUM+4*output_ch_idx+2] = output_data_sub2;
					ref_data[row_idx*YOLO_INPUT_WIDTH*MAX_KERNEL_NUM+col_idx*MAX_KERNEL_NUM+4*output_ch_idx+3] = output_data_sub3;

					fprintf(layer_output_sdk_reduce,"%hd\n",output_data_sub0);
					fprintf(layer_output_sdk_reduce,"%hd\n",output_data_sub1);
					fprintf(layer_output_sdk_reduce,"%hd\n",output_data_sub2);
					fprintf(layer_output_sdk_reduce,"%hd\n",output_data_sub3);
			    }


			}
		}
	}

	for(int pix_idx=0;pix_idx<YOLO_INPUT_HEIGHT*YOLO_INPUT_WIDTH*MAX_KERNEL_NUM;pix_idx++)
	{

		fprintf(layer_output_hls,"%hd\n",ptr[pix_idx]);

		if(abs(ptr[pix_idx]-ref_data[pix_idx])>16)
		{
			flag = true;
			fprintf(error_log,"%d\t%hd\t%hd\t%hd\n",pix_idx,input_data[pix_idx],ref_data[pix_idx],ptr[pix_idx]);
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
