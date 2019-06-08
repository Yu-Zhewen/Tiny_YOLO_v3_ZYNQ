#include "conv_param_config.h"

#ifndef CONV_10_PARAM_H
#define CONV_10_PARAM_H

#define CONV_10_KERNEL_DIM 1
#define CONV_10_PAD 0
#define CONV_10_INPUT_CAHNNEL 256
#define CONV_10_INPUT_WIDTH (13+2*PAD)
#define CONV_10_INPUT_HEIGHT (13+2*PAD)
#define CONV_10_OUTPUT_CHANNEL 128
#define CONV_10_OUTPUT_WIDTH 13
#define CONV_10_OUTPUT_HEIGHT 13

conv_param conv_10_param={.kernel_dim=1,
                          .pad=0,
                          .input_channel=256,
                          .input_width=13,
                          .input_height=13,
                          .output_channel=128,
                          .output_width=13,
                          .output_height=13};

#endif
