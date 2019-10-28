#include <stdio.h>
#include "yolo2_output_sdk_fp_pad.h"//"yolo_2_output_pad.h"//"conv11_output_sdk_fp.h"

int main()
{
	FILE *fp = fopen("layer_output_sdk.h","w");

	fprintf(fp,"short layer_output_sdk[]={");

	int output_fold_factor = 16;
        int output_size = 26;
	for(int i=0;i<output_fold_factor;i++)
	{
		for(int j=0;j<output_size*output_size;j++)
		{
			for(int k=0;k<16;k++)
			{
				fprintf(fp,"%hd,\n",yolo2_output_sdk_fp_pad[j*output_fold_factor*16+i*16+k]);
			}
		}
		
	}

	fseek(fp,-2,SEEK_CUR);
	fprintf(fp,"};");
	fclose(fp);
	
	return 0;
}


