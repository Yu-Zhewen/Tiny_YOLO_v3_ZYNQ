#include <stdio.h>
#include <stdlib.h>
#include "conv_12_weight.h"

int main()
{
	long long bias_int_bit_width[9]={0};
	long long weight_int_bit_width[9]={0};

	printf("conv_12:\n");
	printf("bias:");

	for(int i=0;i<sizeof(conv_12_biases)/sizeof(float);i++)
	{
		int int_part = (int)(conv_12_biases[i]);
		if(abs(int_part)<1)
			bias_int_bit_width[0]++;
		else if(abs(int_part)<2)
			bias_int_bit_width[1]++;
	        else if(abs(int_part)<4)
			bias_int_bit_width[2]++;
		else if(abs(int_part)<8)
			bias_int_bit_width[3]++;
		else if(abs(int_part)<16)
			bias_int_bit_width[4]++;
		else if(abs(int_part)<32)
			bias_int_bit_width[5]++;
		else if(abs(int_part)<64)
			bias_int_bit_width[6]++;
		else if(abs(int_part)<128)
			bias_int_bit_width[7]++;
		else
			bias_int_bit_width[8]++;
		
	}

	for(int i=0;i<9;i++)
	{
		printf("%lld\t",bias_int_bit_width[i]);
	}

	printf("\nweight:");

	for(int i=0;i<sizeof(conv_12_weights)/sizeof(float);i++)
	{
		int int_part = (int)(conv_12_weights[i]);
		if(abs(int_part)<1)
			weight_int_bit_width[0]++;
		else if(abs(int_part)<2)
			weight_int_bit_width[1]++;
	        else if(abs(int_part)<4)
			weight_int_bit_width[2]++;
		else if(abs(int_part)<8)
			weight_int_bit_width[3]++;
		else if(abs(int_part)<16)
			weight_int_bit_width[4]++;
		else if(abs(int_part)<32)
			weight_int_bit_width[5]++;
		else if(abs(int_part)<64)
			weight_int_bit_width[6]++;
		else if(abs(int_part)<128)
			weight_int_bit_width[7]++;
		else
			weight_int_bit_width[8]++;
		
	}

	for(int i=0;i<9;i++)
	{
		printf("%lld\t",weight_int_bit_width[i]);
	}

	printf("\n");
	
	return 0;

}
