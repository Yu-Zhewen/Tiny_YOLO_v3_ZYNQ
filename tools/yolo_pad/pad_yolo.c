#include <stdio.h>
#include "yolo2_output_sdk_fp.h"

int main()
{
	FILE *fp;
	fp = fopen("yolo2_output_sdk_fp_pad.h","w");
	


	fprintf(fp,"short yolo2_output_sdk_fp_pad[]={");

	for(int i=0;i<26*26;i++)
	{
		for(int j=0;j<255;j++)
		{
			fprintf(fp,"%hd,\n",yolo2_output_sdk_fp[i*255+j]);
		}
		fprintf(fp,"0,\n");

	}
	fseek(fp,-2,SEEK_CUR);
	fprintf(fp,"};\n");


	return 0;
}
