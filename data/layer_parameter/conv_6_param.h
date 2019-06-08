#include "conv_param_config.h"

#ifndef CONV_6_PARAM_H
#define CONV_6_PARAM_H

#define CONV_6_KERNEL_DIM 3
#define CONV_6_PAD 1
#define CONV_6_INPUT_CAHNNEL 512
#define CONV_6_INPUT_WIDTH (13+2*PAD)
#define CONV_6_INPUT_HEIGHT (13+2*PAD)
#define CONV_6_OUTPUT_CHANNEL 1024
#define CONV_6_OUTPUT_WIDTH 13
#define CONV_6_OUTPUT_HEIGHT 13

conv_param conv_6_param={.kernel_dim=3,
                          .pad=1,
                          .input_channel=512,
                          .input_width=15,
                          .input_height=15,
                          .output_channel=1024,
                          .output_width=13,
                          .output_height=13};

#endif
