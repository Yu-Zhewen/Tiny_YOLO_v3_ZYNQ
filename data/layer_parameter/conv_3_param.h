#include "conv_param_config.h"

#ifndef CONV_3_PARAM_H
#define CONV_3_PARAM_H

#define CONV_3_KERNEL_DIM 3
#define CONV_3_PAD 1
#define CONV_3_INPUT_CAHNNEL 64
#define CONV_3_INPUT_WIDTH (52+2*PAD)
#define CONV_3_INPUT_HEIGHT (52+2*PAD)
#define CONV_3_OUTPUT_CHANNEL 128
#define CONV_3_OUTPUT_WIDTH 52
#define CONV_3_OUTPUT_HEIGHT 52

conv_param conv_3_param={.kernel_dim=3,
                          .pad=1,
                          .input_channel=64,
                          .input_width=54,
                          .input_height=54,
                          .output_channel=128,
                          .output_width=52,
                          .output_height=52};

#endif
