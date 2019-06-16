#ifndef NETWORK_H
#define NETWORK_H
#include "darknet.h"

//#include "image.h"
//#include "layer.h"
//#include "data.h"
//#include "tree.h"

void set_batch_network(network *net, int b);
layer get_network_output_layer(network *net);
fp_data_type *network_predict(network *net, fp_data_type *input);
void calc_network_cost(network *netp);
void forward_network(network *netp);
network *make_network(int n);
int num_detections(network *net, float thresh);
detection *make_network_boxes(network *net, float thresh, int *num);
void fill_network_boxes(network *net, int w, int h, float thresh, float hier, int *map, int relative, detection *dets);
detection *get_network_boxes(network *net, int w, int h, float thresh, float hier, int *map, int relative, int *num);
void free_detections(detection *dets, int n);

#endif
