#include "maxpool_layer.h"


maxpool_layer make_maxpool_layer(int batch, int h, int w, int c, int size, int stride, int padding)
{
    maxpool_layer l={};
    l.type = MAXPOOL;
    l.batch = batch;
    l.h = h;
    l.w = w;
    l.c = c;
    l.pad = padding;
    l.out_w = (w + padding - size)/stride + 1;
    l.out_h = (h + padding - size)/stride + 1;
    l.out_c = c;
    l.outputs = l.out_h * l.out_w * l.out_c;
    l.inputs = h*w*c;
    l.size = size;
    l.stride = stride;
    int output_size = l.out_h * l.out_w * l.out_c * batch;
    l.indexes = (int *)calloc(output_size, sizeof(int));
    l.output =  (fp_data_type *)calloc(output_size, sizeof(fp_data_type));
    l.delta =   (float *)calloc(output_size, sizeof(float));
    l.forward = forward_maxpool_layer;
    //l.backward = backward_maxpool_layer;

    fprintf(stderr, "max          %d x %d / %d  %4d x%4d x%4d   ->  %4d x%4d x%4d\n", size, size, stride, w, h, c, l.out_w, l.out_h, l.out_c);
    return l;
}

void forward_maxpool_layer(const maxpool_layer l, network net)
{
    int b,i,j,k,m,n;
    int w_offset = -l.pad/2;
    int h_offset = -l.pad/2;

    int h = l.out_h;
    int w = l.out_w;
    int c = l.c;

    for(b = 0; b < l.batch; ++b){
        for(k = 0; k < c; ++k){
            for(i = 0; i < h; ++i){
                for(j = 0; j < w; ++j){
                    int out_index = j + w*(i + h*(k + c*b));
                    fp_data_type max = -FP_MAX;
                    int max_i = -1;
                    for(n = 0; n < l.size; ++n){
                        for(m = 0; m < l.size; ++m){
                            int cur_h = h_offset + i*l.stride + n;
                            int cur_w = w_offset + j*l.stride + m;
                            int index = cur_w + l.w*(cur_h + l.h*(k + b*l.c));
                            int valid = (cur_h >= 0 && cur_h < l.h &&
                                         cur_w >= 0 && cur_w < l.w);
                            fp_data_type val = (valid != 0) ? net.input[index] : (fp_data_type)-FP_MAX;
                            max_i = (val > max) ? index : max_i;
                            max   = (val > max) ? val   : max;
                        }
                    }
                    l.output[out_index] = max;
                    l.indexes[out_index] = max_i;
                }
            }
        }
    }

//    FILE *LayerInput=fopen("layer_input.dat","w");
    FILE *LayerOutput=fopen("max_output_fp_sdk.dat","w");
//
//
//    for(int i=0;i<l.h*l.w;i++)
//   	{
//    	for(int j=0;j<l.c;j++)
//    	{
//    		fprintf(LayerInput,"%f\n",net.input[i+j*l.h*l.w]);
//    	}
//    }
//
    for(int i=0;i<l.out_h*l.out_w;i++)
   	{
    	for(int j=0;j<l.c;j++)
    	{
    		fprintf(LayerOutput,"%f\n",l.output[i+j*l.out_h*l.out_w].to_float());
    	}
    }
//
//    fclose(LayerInput);
    fclose(LayerOutput);

}
