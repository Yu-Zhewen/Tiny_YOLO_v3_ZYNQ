#ifndef CONV_PARAM_CONFIG_H
#define CONV_PARAM_CONFIG_H

typedef struct convolution_parameter
{
	int kernel_dim;
	int pad;
	int input_channel;
	int input_width;
	int input_height;
	int output_channel;
	int output_width;
	int output_height;
}conv_param;

#endif
