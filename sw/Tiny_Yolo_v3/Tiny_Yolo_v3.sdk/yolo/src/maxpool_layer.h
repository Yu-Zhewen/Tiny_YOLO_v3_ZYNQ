#ifndef MAXPOOL_LAYER_H
#define MAXPOOL_LAYER_H

//#include "image.h"
#include "darknet.h"
//#include "layer.h"
//image get_maxpool_image(maxpool_layer l);
maxpool_layer make_maxpool_layer(int batch, int h, int w, int c, int size, int stride, int padding);
//void resize_maxpool_layer(maxpool_layer *l, int w, int h);
void forward_maxpool_layer(const maxpool_layer l, network net);
//void backward_maxpool_layer(const maxpool_layer l, network net);

#endif
