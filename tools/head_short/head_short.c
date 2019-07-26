#include <stdio.h>
#include "conv_1_weight_bn.h"


int main() {

	FILE *fp;
	fp = fopen("conv_1_weight_bn_short.h","w");

	fprintf(fp,"#ifndef CONV_1_WEIGHT_BN_SHORT_H\n");
	fprintf(fp,"#define CONV_1_WEIGHT_BN_SHORT_H\n\n");

	fprintf(fp,"short conv_1_biases_bn_short[]={");
	for(int i=0;i<sizeof(conv_1_biases_bn)/sizeof(float);i++)
	{
		short a = conv_1_biases_bn[i]*256;

		if(i!=sizeof(conv_1_biases_bn)/sizeof(float)-1)
			fprintf(fp,"%d,\n",a);
		else
			fprintf(fp,"%d};\n\n",a);
	}

	fprintf(fp,"short conv_1_weights_bn_short[]={");
	for(int i=0;i<sizeof(conv_1_weights_bn)/sizeof(float);i++)
	{
		short a = conv_1_weights_bn[i]*256;
	
		if(i!=sizeof(conv_1_weights_bn)/sizeof(float)-1)
			fprintf(fp,"%d,\n",a);
		else
			fprintf(fp,"%d};\n\n",a);
	}
	fprintf(fp,"#endif\n");
	fclose(fp);



//	fp_type *fp_p = (fp_type *)data_fp;
//
//	for(int j=0;j<16;j++)
//	{
//		float b = fp_p[j].to_float();
//		printf("%d:%d,%f\n",j,data_fp[j],b);
//	}



	return 0;
}
