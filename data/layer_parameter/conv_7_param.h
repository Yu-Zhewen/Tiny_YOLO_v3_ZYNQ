#include "conv_param_config.h"

#ifndef CONV_7_PARAM_H
#define CONV_7_PARAM_H

#define CONV_7_KERNEL_DIM 1
#define CONV_7_PAD 0
#define CONV_7_INPUT_CAHNNEL 1024
#define CONV_7_INPUT_WIDTH (13+2*PAD)
#define CONV_7_INPUT_HEIGHT (13+2*PAD)
#define CONV_7_OUTPUT_CHANNEL 256
#define CONV_7_OUTPUT_WIDTH 13
#define CONV_7_OUTPUT_HEIGHT 13

conv_param conv_7_param={.kernel_dim=1,
                          .pad=0,
                          .input_channel=1024,
                          .input_width=13,
                          .input_height=13,
                          .output_channel=256,
                          .output_width=13,
                          .output_height=13};

#endif
