#include "conv_param_config.h"

#ifndef CONV_8_PARAM_H
#define CONV_8_PARAM_H

#define CONV_8_KERNEL_DIM 3
#define CONV_8_PAD 1
#define CONV_8_INPUT_CAHNNEL 256
#define CONV_8_INPUT_WIDTH (13+2*PAD)
#define CONV_8_INPUT_HEIGHT (13+2*PAD)
#define CONV_8_OUTPUT_CHANNEL 512
#define CONV_8_OUTPUT_WIDTH 13
#define CONV_8_OUTPUT_HEIGHT 13

conv_param conv_8_param={.kernel_dim=3,
                          .pad=1,
                          .input_channel=256,
                          .input_width=15,
                          .input_height=15,
                          .output_channel=512,
                          .output_width=13,
                          .output_height=13};

#endif
