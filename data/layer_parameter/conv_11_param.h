#include "conv_param_config.h"

#ifndef CONV_11_PARAM_H
#define CONV_11_PARAM_H

#define CONV_11_KERNEL_DIM 3
#define CONV_11_PAD 1
#define CONV_11_INPUT_CAHNNEL 384
#define CONV_11_INPUT_WIDTH (26+2*PAD)
#define CONV_11_INPUT_HEIGHT (26+2*PAD)
#define CONV_11_OUTPUT_CHANNEL 256
#define CONV_11_OUTPUT_WIDTH 26
#define CONV_11_OUTPUT_HEIGHT 26

conv_param conv_11_param={.kernel_dim=3,
                          .pad=1,
                          .input_channel=384,
                          .input_width=28,
                          .input_height=28,
                          .output_channel=256,
                          .output_width=26,
                          .output_height=26};

#endif
