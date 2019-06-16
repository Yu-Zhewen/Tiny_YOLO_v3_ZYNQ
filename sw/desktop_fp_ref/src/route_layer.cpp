#include "route_layer.h"



route_layer make_route_layer(int batch, int n, int *input_layers, int *input_sizes)
{
    fprintf(stderr,"route ");
    route_layer l = {};
    l.type = ROUTE;
    l.batch = batch;
    l.n = n;
    l.input_layers = input_layers;
    l.input_sizes = input_sizes;
    int i;
    int outputs = 0;
    for(i = 0; i < n; ++i){
        fprintf(stderr," %d", input_layers[i]);
        outputs += input_sizes[i];
    }
    fprintf(stderr, "\n");
    l.outputs = outputs;
    l.inputs = outputs;
    l.delta =  (float *)calloc(outputs*batch, sizeof(float));
    l.output = (fp_data_type *)calloc(outputs*batch, sizeof(fp_data_type));;

    l.forward = forward_route_layer;
    //l.backward = backward_route_layer;

    return l;
}

void forward_route_layer(const route_layer l, network net)
{
    int i, j;
    int offset = 0;
    FILE *LayerOutput=fopen("route_output_fp_sdk.dat","w");
    for(i = 0; i < l.n; ++i){
        int index = l.input_layers[i];
        fp_data_type *input = net.layers[index].output;
        int input_size = l.input_sizes[i];
        for(j = 0; j < l.batch; ++j){
            copy_cpu(input_size, input + j*input_size, 1, l.output + offset + j*l.outputs, 1);
        }
        offset += input_size;


		FILE *LayerInput=fopen("route_input_fp_sdk.dat","w");


		for(int k=0;k<l.input_sizes[i];k++)
		{
				fprintf(LayerInput,"%f\n",net.layers[index].output[k].to_float());
		}

        fclose(LayerInput);

    	for(int k=0;k<l.input_sizes[i];k++)
    	{
    			fprintf(LayerOutput,"%f\n",l.output[k].to_float());
    	}


    }
    fclose(LayerOutput);


}
