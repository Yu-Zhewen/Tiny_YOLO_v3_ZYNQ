#include "conv_param_config.h"

#ifndef CONV_12_PARAM_H
#define CONV_12_PARAM_H

#define CONV_12_KERNEL_DIM 1
#define CONV_12_PAD 0
#define CONV_12_INPUT_CAHNNEL 256
#define CONV_12_INPUT_WIDTH (26+2*PAD)
#define CONV_12_INPUT_HEIGHT (26+2*PAD)
#define CONV_12_OUTPUT_CHANNEL 255
#define CONV_12_OUTPUT_WIDTH 26
#define CONV_12_OUTPUT_HEIGHT 26

conv_param conv_12_param={.kernel_dim=1,
                          .pad=0,
                          .input_channel=256,
                          .input_width=26,
                          .input_height=26,
                          .output_channel=255,
                          .output_width=26,
                          .output_height=26};

#endif
