#include "../src/yolo_acc.h"

#define ACC_INPUT_H 52
#define ACC_INPUT_W 52

int main()
{
	yolo_quad_stream inputStream_a("in_stream_a"), inputStream_b("in_stream_b"),
			         outputStream("out_stream");
	bool flag = false;

	for(int i=0;i<ACC_INPUT_H*ACC_INPUT_W;i++)
	{
		for(int j=0;j<MAX_KERNEL_NUM/4;j++)
		{
			quad_fp_side_channel curr_input_a,curr_input_b;

			curr_input_a.data.sub_data_0 = (fp_data_type)1.;
			curr_input_a.data.sub_data_1 = (fp_data_type)-1.;
			curr_input_a.data.sub_data_2 = (fp_data_type)0.5;
			curr_input_a.data.sub_data_3 = (fp_data_type)-0.5;

			curr_input_a.keep = 1;
			curr_input_a.strb = 1;
			curr_input_a.user = 1;
			curr_input_a.id   = 0;
			curr_input_a.dest = 0;

			curr_input_b.data.sub_data_0 = (fp_data_type)1.;
			curr_input_b.data.sub_data_1 = (fp_data_type)-1.;
			curr_input_b.data.sub_data_2 = (fp_data_type)0.5;
			curr_input_b.data.sub_data_3 = (fp_data_type)-0.5;

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
				 ACC_INPUT_H,ACC_INPUT_W);

	for(int i=0;i<ACC_INPUT_H*ACC_INPUT_W;i++)
	{
		for(int j=0;j<MAX_KERNEL_NUM/4;j++)
		{
			quad_fp_side_channel curr_output;
			outputStream.read(curr_output);

			if(curr_output.last==1)
				printf("last:%d\n",i*MAX_KERNEL_NUM/4+j);

			if((short)(curr_output.data.sub_data_0.range())!=512)
			{
				printf("*(%d,%d)%hd\n",i,j,(short)(curr_output.data.sub_data_0.range()));
				flag = true;
			}
			if((short)(curr_output.data.sub_data_1.range())!=-512)
			{
				printf("**(%d,%d)%hd\n",i,j,(short)(curr_output.data.sub_data_1.range()));
				flag = true;
			}
			if((short)(curr_output.data.sub_data_2.range())!=256)
			{
				printf("***(%d,%d)%hd\n",i,j,(short)(curr_output.data.sub_data_2.range()));
				flag = true;
			}
			if((short)(curr_output.data.sub_data_3.range())!=-256)
			{
				printf("****(%d,%d)%hd\n",i,j,(short)(curr_output.data.sub_data_3.range()));
				flag = true;
			}

		}
	}

    if (flag)
            return 1;
    else
            return 0;

}
