#include "convolutional_layer.h"
#include "stdlib.h"
#include "float.h"
#include "analysis.h"
void scale_bias(float *output, float *scales, int batch, int n, int size)
{
    int i,j,b;
    for(b = 0; b < batch; ++b){
        for(i = 0; i < n; ++i){
            for(j = 0; j < size; ++j){
                output[(b*n + i)*size + j] *= scales[i];
            }
        }
    }
}

static size_t get_workspace_size(layer l){
    return (size_t)l.out_h*l.out_w*l.size*l.size*l.c/l.groups*sizeof(fp_data_type);
}

void add_bias(fp_data_type *output, fp_weight_type *biases, int batch, int n, int size)
{
    int i,j,b;
    for(b = 0; b < batch; ++b){
        for(i = 0; i < n; ++i){
            for(j = 0; j < size; ++j){
                output[(b*n + i)*size + j] += biases[i];

//                if(biases[i]>bias_bn_max)
//                	bias_bn_max = biases[i];
//                if(biases[i]<bias_bn_min)
//                	bias_bn_min = biases[i];
//
//                if(output[(b*n + i)*size + j]>conv_out_max)
//                	conv_out_max = output[(b*n + i)*size + j];
//                if(output[(b*n + i)*size + j]<conv_out_min)
//                	conv_out_min = output[(b*n + i)*size + j];
            }
        }
    }
}


convolutional_layer make_convolutional_layer(int batch, int h, int w, int c, int n, int groups, int size, int stride, int padding, ACTIVATION activation, int batch_normalize, int binary, int xnor, int adam)
{
    convolutional_layer l = {};
    l.type = CONVOLUTIONAL;

    l.groups = groups;
    l.h = h;
    l.w = w;
    l.c = c;
    l.n = n;
    l.binary = binary;
    l.xnor = xnor;
    l.batch = batch;
    l.stride = stride;
    l.size = size;
    l.pad = padding;
    l.batch_normalize = batch_normalize;

    l.weights = (fp_weight_type *)calloc(c/groups*n*size*size, sizeof(fp_weight_type));
    l.weight_updates = (float *)calloc(c/groups*n*size*size, sizeof(float));

    l.biases = (fp_weight_type *)calloc(n, sizeof(fp_weight_type));
    l.bias_updates = (float *)calloc(n, sizeof(float));

    l.nweights = c/groups*n*size*size;
    l.nbiases = n;

    // float scale = 1./sqrt(size*size*c);
    //float scale = sqrt(2./(size*size*c/l.groups));
    //printf("convscale %f\n", scale);
    //scale = .02;
    //for(i = 0; i < c*n*size*size; ++i) l.weights[i] = scale*rand_uniform(-1, 1);
    int out_w = convolutional_out_width(l);
    int out_h = convolutional_out_height(l);
    l.out_h = out_h;
    l.out_w = out_w;
    l.out_c = n;
    l.outputs = l.out_h * l.out_w * l.out_c;
    l.inputs = l.w * l.h * l.c;

    l.output = (fp_data_type *)calloc(l.batch*l.outputs, sizeof(fp_data_type));
    l.delta  = (float *)calloc(l.batch*l.outputs, sizeof(float));

    l.forward = forward_convolutional_layer;
    //l.backward = backward_convolutional_layer;
    //l.update = update_convolutional_layer;
    //if(binary){
    //    l.binary_weights = calloc(l.nweights, sizeof(float));
    //   l.cweights = calloc(l.nweights, sizeof(char));
    //    l.scales = calloc(n, sizeof(float));
    //}
    //if(xnor){
    //    l.binary_weights = calloc(l.nweights, sizeof(float));
    //    l.binary_input = calloc(l.inputs*l.batch, sizeof(float));
    //}

//    if(batch_normalize){
//        l.scales = (float *)calloc(n, sizeof(float));
//        l.scale_updates = (float *)calloc(n, sizeof(float));
//        for(i = 0; i < n; ++i){
//            l.scales[i] = 1;
//        }
//
//        l.mean = (float *)calloc(n, sizeof(float));
//        l.variance = (float *)calloc(n, sizeof(float));
//
//        l.mean_delta = (float *)calloc(n, sizeof(float));
//        l.variance_delta = (float *)calloc(n, sizeof(float));
//
//        l.rolling_mean = (float *)calloc(n, sizeof(float));
//        l.rolling_variance = (float *)calloc(n, sizeof(float));
//        l.x = (float *)calloc(l.batch*l.outputs, sizeof(float));
//        l.x_norm = (float *)calloc(l.batch*l.outputs, sizeof(float));
//    }
    //if(adam){
    //    l.m = calloc(l.nweights, sizeof(float));
    //    l.v = calloc(l.nweights, sizeof(float));
    //    l.bias_m = calloc(n, sizeof(float));
    //    l.scale_m = calloc(n, sizeof(float));
    //    l.bias_v = calloc(n, sizeof(float));
    //    l.scale_v = calloc(n, sizeof(float));
    //}

    l.workspace_size = get_workspace_size(l);
    l.activation = activation;

    fprintf(stderr, "conv  %5d %2d x%2d /%2d  %4d x%4d x%4d   ->  %4d x%4d x%4d  %5.3f BFLOPs\n", n, size, size, stride, w, h, c, l.out_w, l.out_h, l.out_c, (2.0 * l.n * l.size*l.size*l.c/l.groups * l.out_h*l.out_w)/1000000000.);

    return l;
}

void forward_convolutional_layer(convolutional_layer l, network net)
{
    //int i, j;

    fill_cpu(l.outputs*l.batch, 0, l.output, 1);	//clear output

    //if(l.xnor){
    //    binarize_weights(l.weights, l.n, l.c/l.groups*l.size*l.size, l.binary_weights);
    //    swap_binary(&l);
    //    binarize_cpu(net.input, l.c*l.h*l.w*l.batch, l.binary_input);
    //    net.input = l.binary_input;
    //}

    int m = l.n/l.groups;	//number of kernels
    int k = l.size*l.size*l.c/l.groups;	//kernel size * channel
    int n = l.out_w*l.out_h;	//number of outputs
    fprintf(stderr,"(M:%d,K:%d,N:%d)\n",m,k,n);
    //for(i = 0; i < l.batch; ++i){
    //    for(j = 0; j < l.groups; ++j){
    //        float *a = l.weights + j*l.nweights/l.groups;
    fp_weight_type *a = l.weights;
    fp_data_type *b = net.workspace;
    //        float *c = l.output + (i*l.groups + j)*n*m;
    fp_data_type *c = l.output;
    //        float *im =  net.input + (i*l.groups + j)*l.c/l.groups*l.h*l.w;
    fp_data_type *im =  net.input;

            if (l.size == 1) {
                b = im;
            } else {
                im2col_cpu(im, l.c/l.groups, l.h, l.w, l.size, l.stride, l.pad, b);	//load layer input to the workspace
            }
           // gemm(0,0,m,n,k,1,a,k,b,n,1,c,n);
            fp_data_type *b_t = (fp_data_type *)calloc(n*k,sizeof(fp_data_type));
			for(int bi=0;bi<k;bi++)
			{
				for(int bj=0;bj<n;bj++)
				{
					b_t[bj*k+bi] = b[bi*n+bj];
				}
			}
			gemm(0,1,m,n,k,1,a,k,b_t,k,1,c,n);


//			FILE *LayerInput=fopen("conv_input_fp_sdk.dat","w");
//			FILE *LayerOutput=fopen("conv_output_fp_sdk.dat","w");
//
//			for(int i=0;i<l.h*l.w;i++)
//			{
//
//				for(int j=0;j<l.c;j++)
//				{
//					fprintf(LayerInput,"%f\n",im[i+j*l.h*l.w].to_float());
//				}
//
//			}
//
//
//	        fclose(LayerInput);



			free(b_t);
    //    }
    //}

   // if(l.batch_normalize){
   //     forward_batchnorm_layer(l, net);
    //} else {
        add_bias(l.output, l.biases, l.batch, l.n, l.out_h*l.out_w);
    //}




    activate_array(l.output, l.outputs*l.batch, l.activation);
//	for(int i=0;i<l.out_h*l.out_w;i++)
//	{
//		for(int j=0;j<l.out_c;j++)
//		{
//			fprintf(LayerOutput,"%f\n",c[i+j*l.out_h*l.out_w].to_float());
//		}
//	}
//    fclose(LayerOutput);
    //if(l.binary || l.xnor) swap_binary(&l);
}

int convolutional_out_height(convolutional_layer l)
{
    return (l.h + 2*l.pad - l.size) / l.stride + 1;
}

int convolutional_out_width(convolutional_layer l)
{
    return (l.w + 2*l.pad - l.size) / l.stride + 1;
}
