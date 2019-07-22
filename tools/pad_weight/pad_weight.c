#include <stdio.h>
#include "layer_parameter.h"
#include "conv_11_weight_bn_fp.h"

int main()
{
	FILE *fp;
	fp = fopen("weight_file_pad.h","w");
	
	fprintf(fp,"#ifndef WEIGHT_FILE_PAD_H\n");
	fprintf(fp,"#define WEIGHT_FILE_PAD_H\n\n");

	fprintf(fp,"short kernel_bias_fp_bits_pad[]={");
	for(int i=0;i<OUTPUT_CHANNEL;i++)
	{
		if(i==OUTPUT_CHANNEL-1)
			fprintf(fp,"%hd};\n\n",kernel_bias_fp_bits[i]);
		else
			fprintf(fp,"%hd,\n",kernel_bias_fp_bits[i]);
	}

	fprintf(fp,"short kernel_weight_fp_bits_pad[]={");

	for(int i=0;i<OUTPUT_CHANNEL*INPUT_CHANNEL;i++)
	{
		for(int j=0;j<KERNEL_DIM*KERNEL_DIM;j++)
		{
			fprintf(fp,"%hd,\n",kernel_weight_fp_bits[i*KERNEL_DIM*KERNEL_DIM+j]);
		}
		if(i==OUTPUT_CHANNEL*INPUT_CHANNEL-1)
		{
			fprintf(fp,"%hd,\n",0);
			fprintf(fp,"%hd,\n",0);
			fprintf(fp,"%hd};\n\n",0);
		}
		else
		{
			fprintf(fp,"%hd,\n",0);
			fprintf(fp,"%hd,\n",0);
			fprintf(fp,"%hd,\n",0);
		}
	}
	fprintf(fp,"#endif\n");

	return 0;
}
