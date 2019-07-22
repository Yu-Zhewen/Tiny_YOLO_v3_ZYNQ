#include <stdio.h>
#include "yolo_2_output_pad.h"//"conv11_output_sdk_fp.h"

int main()
{
	FILE *fp = fopen("group_12_output.h","w");

	fprintf(fp,"short layer_output_ref[]={");

	int output_fold_factor = 8;
        int output_size = 26;
	for(int i=0;i<output_fold_factor;i++)
	{
		for(int j=0;j<output_size*output_size;j++)
		{
			for(int k=0;k<32;k++)
			{
				fprintf(fp,"%hd,\n",yolo2_output_sdk_fp_pad[j*output_fold_factor*32+i*32+k]);
			}
		}
		
	}

	fseek(fp,-2,SEEK_CUR);
	fprintf(fp,"};");
	fclose(fp);
	
	return 0;
}


