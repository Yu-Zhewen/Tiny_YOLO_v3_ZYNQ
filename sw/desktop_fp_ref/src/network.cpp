#include "network.h"
//#include <xtime_l.h>
//#include "xparameters.h"
//#include "image.h"
//#include "data.h"

void set_batch_network(network *net, int b)
{
    net->batch = b;
    int i;
    for(i = 0; i < net->n; ++i){
        net->layers[i].batch = b;
    }
}

layer get_network_output_layer(network *net)
{
    int i;
    for(i = net->n - 1; i >= 0; --i){
        if(net->layers[i].type != COST) break;
    }
    return net->layers[i];
}

fp_data_type *network_predict(network *net, fp_data_type *input)
{
    network orig = *net;
    net->input = input;
    net->truth = 0;
    net->train = 0;
    net->delta = 0;
    forward_network(net);
    fp_data_type *out = net->output;
    *net = orig;
    return out;
}

void calc_network_cost(network *netp)
{
    network net = *netp;
    int i;
    float sum = 0;
    int count = 0;
    for(i = 0; i < net.n; ++i){
        if(net.layers[i].cost){
            sum += net.layers[i].cost[0];
            ++count;
        }
    }
    *net.cost = sum/count;
}

void forward_network(network *netp)
{
//	XTime tEnd, tStart;
//	int time_used;

    network net = *netp;
    int i;
    for(i = 0; i < net.n; ++i){
        fprintf(stderr,"Forward Layer%d\n\r",i);
//        XTime_GetTime(&tStart);
        net.index = i;
        layer l = net.layers[i];
//        if(l.delta){
//            fill_cpu(l.outputs * l.batch, 0, l.delta, 1);
//        }
        l.forward(l, net);
        net.input = l.output;
//        if(l.truth) {
//            net.truth = l.output;
//        }
//        XTime_GetTime(&tEnd);
//        time_used = 1.0*((tEnd-tStart))/(COUNTS_PER_SECOND);
//        fprintf(stderr,"Time used:%d(s)\n\r",time_used);
    }
    calc_network_cost(netp);
}



network *make_network(int n)
{
    network *net = (network *)calloc(1, sizeof(network));
    net->n = n;
    net->layers = (layer *)calloc(net->n, sizeof(layer));
    net->seen = (size_t *)calloc(1, sizeof(size_t));
    net->t    = (int *)calloc(1, sizeof(int));
    net->cost = (float *)calloc(1, sizeof(float));
    return net;
}

int num_detections(network *net, float thresh)
{
    int i;
    int s = 0;
    for(i = 0; i < net->n; ++i){
        layer l = net->layers[i];
        if(l.type == YOLO){
            s += yolo_num_detections(l, thresh);
        }
        if(l.type == DETECTION || l.type == REGION){
            s += l.w*l.h*l.n;
        }
    }
    return s;
}

detection *make_network_boxes(network *net, float thresh, int *num)
{
    layer l = net->layers[net->n - 1];
    int i;
    int nboxes = num_detections(net, thresh);
    if(num) *num = nboxes;
    detection *dets = (detection *)calloc(nboxes, sizeof(detection));
    for(i = 0; i < nboxes; ++i){
        dets[i].prob = (float *)calloc(l.classes, sizeof(float));
        if(l.coords > 4){
            dets[i].mask = (float *)calloc(l.coords-4, sizeof(float));
        }
    }
    return dets;
}

void fill_network_boxes(network *net, int w, int h, float thresh, float hier, int *map, int relative, detection *dets)
{
    int j;
    for(j = 0; j < net->n; ++j){
        layer l = net->layers[j];
        if(l.type == YOLO){
            int count = get_yolo_detections(l, w, h, net->w, net->h, thresh, map, relative, dets);
            dets += count;
        }
        //if(l.type == REGION){
        //    get_region_detections(l, w, h, net->w, net->h, thresh, map, hier, relative, dets);
        //    dets += l.w*l.h*l.n;
        //}
        //if(l.type == DETECTION){
        //    get_detection_detections(l, w, h, thresh, dets);
        //    dets += l.w*l.h*l.n;
        //}
    }
}

detection *get_network_boxes(network *net, int w, int h, float thresh, float hier, int *map, int relative, int *num)
{
    detection *dets = make_network_boxes(net, thresh, num);
    fill_network_boxes(net, w, h, thresh, hier, map, relative, dets);
    return dets;
}

void free_detections(detection *dets, int n)
{
    int i;
    for(i = 0; i < n; ++i){
        free(dets[i].prob);
        if(dets[i].mask) free(dets[i].mask);
    }
    free(dets);
}
