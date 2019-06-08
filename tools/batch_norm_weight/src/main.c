#include <stdio.h>
#include <string.h>
#include <math.h>
#include "../conv_12_weight.h"

void main()
{
    FILE *fp;
    char path[64]="";
    char num_str[8];

    int layer_idx = 12;
    sprintf(num_str,"%d",layer_idx);

    strcat(path,"../conv_");
    strcat(path,num_str);
    strcat(path,"_weight_bn.h");

    fp = fopen(path,"w");
    int output_channel = sizeof(conv_12_rolling_mean)/sizeof(float);
    int weight_size = sizeof(conv_12_weights)/sizeof(float);
    int kernel_size = weight_size/output_channel;

    //printf("%d,%d,%d\n",output_channel,weight_size,kernel_size);

    fprintf(fp,"#ifndef CONV_%d_WEIGHT_BN_H\n",layer_idx);
    fprintf(fp,"#define CONV_%d_WEIGHT_BN_H\n",layer_idx);
    fprintf(fp,"\n");

    fprintf(fp,"float conv_%d_biases_bn[]={",layer_idx);
    for(int i=0; i<output_channel; i++)
    {
        float bias = conv_12_biases[i];
        float scale = conv_12_scales[i];
        float mean = conv_12_rolling_mean[i];
        float var = conv_12_rolling_variance[i];

        float bias_bn = bias - mean/(sqrt(var) + .000001f)*scale;
        if(i==output_channel-1)
        {
            fprintf(fp,"%f};\n",bias_bn);
        }
        else
        {
            fprintf(fp,"%f,\n",bias_bn);
        }
    }
    fprintf(fp,"\n");

    fprintf(fp,"float conv_%d_weights_bn[]={",layer_idx);
    for(int i=0; i<output_channel; i++)
    {
        float scale = conv_12_scales[i];
        float mean = conv_12_rolling_mean[i];
        float var = conv_12_rolling_variance[i];

        for(int j=0; j<kernel_size; j++)
        {
            float weight = conv_12_weights[i*kernel_size+j];

            float weight_bn = weight/(sqrt(var) + .000001f)*scale;
	    //printf("(%d,%d,%d,%d)",i,j,output_channel,i*kernel_size+j);
  	    //printf("%f,%f,%f,%f,%f\n",var,scale,weight_bn,weight,weight_bn/weight);
            if(i==output_channel-1 && j==kernel_size-1)
            {
                fprintf(fp,"%f};\n",weight_bn);
            }
            else
            {
                fprintf(fp,"%f,\n",weight_bn);
            }
        }
    }

    fprintf(fp,"\n");
    fprintf(fp,"#endif");

    fclose(fp);

}
