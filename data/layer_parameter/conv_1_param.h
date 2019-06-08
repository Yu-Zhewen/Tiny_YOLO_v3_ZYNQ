#include "conv_param_config.h"

#ifndef CONV_1_PARAM_H
#define CONV_1_PARAM_H

#define CONV_1_KERNEL_DIM 3
#define CONV_1_PAD 1
#define CONV_1_INPUT_CAHNNEL 16
#define CONV_1_INPUT_WIDTH (208+2*PAD)
#define CONV_1_INPUT_HEIGHT (208+2*PAD)
#define CONV_1_OUTPUT_CHANNEL 32
#define CONV_1_OUTPUT_WIDTH 208
#define CONV_1_OUTPUT_HEIGHT 208

conv_param conv_1_param={.kernel_dim=3,
                          .pad=1,
                          .input_channel=16,
                          .input_width=210,
                          .input_height=210,
                          .output_channel=32,
                          .output_width=208,
                          .output_height=208};

#endif
