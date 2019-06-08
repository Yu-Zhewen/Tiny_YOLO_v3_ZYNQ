#include "conv_param_config.h"

#ifndef CONV_9_PARAM_H
#define CONV_9_PARAM_H

#define CONV_9_KERNEL_DIM 1
#define CONV_9_PAD 0
#define CONV_9_INPUT_CAHNNEL 512
#define CONV_9_INPUT_WIDTH (13+2*PAD)
#define CONV_9_INPUT_HEIGHT (13+2*PAD)
#define CONV_9_OUTPUT_CHANNEL 255
#define CONV_9_OUTPUT_WIDTH 13
#define CONV_9_OUTPUT_HEIGHT 13

conv_param conv_9_param={.kernel_dim=1,
                          .pad=0,
                          .input_channel=512,
                          .input_width=13,
                          .input_height=13,
                          .output_channel=255,
                          .output_width=13,
                          .output_height=13};

#endif
