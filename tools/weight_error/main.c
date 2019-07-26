#include <stdio.h>
#include "conv_12_weight_bn.h"
#include "conv_12_weight_bn_fp.h"

int main()
{
	double err_2 = 0;
	double true_2 = 0;
	for(int i=0;i<sizeof(conv_12_weights_bn)/sizeof(float);i++)
	{
		double distance = conv_12_weights_bn_fp[i]/256.0-conv_12_weights_bn[i];
		err_2 += distance *distance;
		true_2 += conv_12_weights_bn[i]*conv_12_weights_bn[i];
	}

	printf("%f,%f,%f\n",err_2,true_2,err_2/true_2);
	
	
	return 0;
}
