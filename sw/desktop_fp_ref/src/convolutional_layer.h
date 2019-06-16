#ifndef CONVOLUTIONAL_LAYER_H
#define CONVOLUTIONAL_LAYER_H

#include "darknet.h"
//#include "layer.h"

void scale_bias(float *output, float *scales, int batch, int n, int size);
void add_bias(fp_data_type *output, fp_weight_type *biases, int batch, int n, int size);
convolutional_layer make_convolutional_layer(int batch, int h, int w, int c, int n, int groups, int size, int stride, int padding, ACTIVATION activation, int batch_normalize, int binary, int xnor, int adam);
void forward_convolutional_layer(convolutional_layer l, network net);
int convolutional_out_height(convolutional_layer l);
int convolutional_out_width(convolutional_layer l);

#endif
