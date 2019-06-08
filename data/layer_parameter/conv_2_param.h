#include "conv_param_config.h"

#ifndef CONV_2_PARAM_H
#define CONV_2_PARAM_H

#define CONV_2_KERNEL_DIM 3
#define CONV_2_PAD 1
#define CONV_2_INPUT_CAHNNEL 32
#define CONV_2_INPUT_WIDTH (104+2*PAD)
#define CONV_2_INPUT_HEIGHT (104+2*PAD)
#define CONV_2_OUTPUT_CHANNEL 64
#define CONV_2_OUTPUT_WIDTH 104
#define CONV_2_OUTPUT_HEIGHT 104

conv_param conv_2_param={.kernel_dim=3,
                          .pad=1,
                          .input_channel=32,
                          .input_width=106,
                          .input_height=106,
                          .output_channel=64,
                          .output_width=104,
                          .output_height=104};

#endif
