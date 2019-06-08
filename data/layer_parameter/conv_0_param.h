#include "conv_param_config.h"

#ifndef CONV_0_PARAM_H
#define CONV_0_PARAM_H

#define CONV_0_KERNEL_DIM 3
#define CONV_0_PAD 1
#define CONV_0_INPUT_CAHNNEL 3
#define CONV_0_INPUT_WIDTH (416+2*PAD)
#define CONV_0_INPUT_HEIGHT (416+2*PAD)
#define CONV_0_OUTPUT_CHANNEL 16
#define CONV_0_OUTPUT_WIDTH 416
#define CONV_0_OUTPUT_HEIGHT 416

conv_param conv_0_param={.kernel_dim=3,
                          .pad=1,
                          .input_channel=3,
                          .input_width=418,
                          .input_height=418,
                          .output_channel=16,
                          .output_width=416,
                          .output_height=416};

#endif
