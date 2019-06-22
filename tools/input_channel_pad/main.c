#include <stdio.h>
#include "layer_input.h"

int main()
{
	FILE *fp;
	fp = fopen("layer_input_pad.h","w");
	fprintf(fp,"#ifndef LAYER_INPUT_H\n");
	fprintf(fp,"#define LAYER_INPUT_H\n\n");

	fprintf(fp,"short layer_input[]={");
	int count=0;
	for(int pix_idx=0;pix_idx<416*416;pix_idx++)
	{
		fprintf(fp,"%hd,\n",layer_input[count++]);
		fprintf(fp,"%hd,\n",layer_input[count++]);
		fprintf(fp,"%hd,\n",layer_input[count++]);

		if(pix_idx == 416*416-1)
			fprintf(fp,"%hd};\n",0);
		else
			fprintf(fp,"%hd,\n",0);
	}

	fprintf(fp,"#endif\n");
	fclose(fp);

	return 0;
}
