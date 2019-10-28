#include "stdio.h"
#include "weight_file_pad.h"

int main()
{
	FILE *fp = fopen("group_13_weight_it16.h","w");

	fprintf(fp,"short kernel_bias_fp_bits_pad[]={");
	for(int i=0;i<sizeof(kernel_bias_fp_bits_pad)/sizeof(short);i++)
	{
		fprintf(fp,"%hd,\n",kernel_bias_fp_bits_pad[i]);
	}
	fseek(fp,-2,SEEK_CUR);
	fprintf(fp,"};\n\n");
	
	//int output_fold_factor = 4;
	int input_fold_factor = 16;
	int output_ch = 256;	
	fprintf(fp,"short kernel_weight_fp_bits_pad[]={");
	for(int i=0;i<input_fold_factor;i++)
	{
		for(int j=0;j<output_ch;j++)
		{
			for(int k=0;k<16*12;k++)
			{
				fprintf(fp,"%hd,\n",kernel_weight_fp_bits_pad[j*12*16*input_fold_factor+12*16*i+k]);
				//printf("%d,%d,%d,%d\n",i,j,k,j*12*32*input_fold_factor+12*32*i+k);
			}		
		}
	}
	fseek(fp,-2,SEEK_CUR);
	fprintf(fp,"};");
	fclose(fp);

	return 0;
}
