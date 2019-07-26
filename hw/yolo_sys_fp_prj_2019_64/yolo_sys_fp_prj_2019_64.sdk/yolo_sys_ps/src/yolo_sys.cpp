/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */
#include <stdio.h>
#include <math.h>
#include <string.h>

#include "xil_printf.h"
#include "xparameters.h"
#include <xtime_l.h>

//include IP head files
#include "xyolo_conv_top.h"
#include "xyolo_max_pool_top.h"
#include "xyolo_yolo_top.h"
#include "xyolo_acc_top.h"
#include "xyolo_upsamp_top.h"
#include "xaxidma.h"
#include "xaxis_switch.h"


//declare IP instances
XYolo_conv_top yolo_conv_top;
XYolo_conv_top_Config *yolo_conv_top_cfg;
XYolo_max_pool_top yolo_max_pool_top;
XYolo_max_pool_top_Config *yolo_max_pool_top_cfg;
XYolo_yolo_top yolo_yolo_top;
XYolo_yolo_top_Config *yolo_yolo_top_cfg;
XYolo_acc_top yolo_acc_top;
XYolo_acc_top_Config *yolo_acc_top_cfg;
XYolo_upsamp_top yolo_upsamp_top;
XYolo_upsamp_top_Config *yolo_upsamp_top_cfg;
XAxiDma axiDMA_0,axiDMA_1;
XAxiDma_Config *axiDMA_cfg_0,*axiDMA_cfg_1;
XAxis_Switch axis_switch_0,axis_switch_1,axis_switch_2;
XAxis_Switch_Config *axis_switch_cfg_0,*axis_switch_cfg_1,*axis_switch_cfg_2;



#include "group_0_weight.h"
#include "group_1_weight.h"
#include "group_2_weight.h"
#include "group_3_weight_it.h"
#include "group_4_weight_it.h"
#include "group_6_weight_it.h"
#include "group_7_weight_it.h"
#include "group_8_weight_it.h"
#include "group_9_weight_it.h"
#include "group_10_weight_it.h"
#include "group_11_weight_it.h"
#include "group_12_weight_it.h"
#include "group_13_weight_it.h"

#include "group_0_input.h"
#include "group_13_output.h"

void init_yolo_conv()
{
	printf("Initializing yolo_conv_top\n");
	yolo_conv_top_cfg = XYolo_conv_top_LookupConfig(XPAR_YOLO_CONV_TOP_0_DEVICE_ID);
	if(yolo_conv_top_cfg)
	{
		int status = XYolo_conv_top_CfgInitialize(&yolo_conv_top,yolo_conv_top_cfg);
		if(status != XST_SUCCESS)
		{
			printf("Error initializing yolo_conv_top core\n");
		}
	}
}

void init_yolo_max_pool()
{
	printf("Initializing yolo_max_pool_top\n");
	yolo_max_pool_top_cfg = XYolo_max_pool_top_LookupConfig(XPAR_YOLO_MAX_POOL_TOP_0_DEVICE_ID);
	if(yolo_max_pool_top_cfg)
	{
		int status = XYolo_max_pool_top_CfgInitialize(&yolo_max_pool_top,yolo_max_pool_top_cfg);
		if(status != XST_SUCCESS)
		{
			printf("Error initializing yolo_max_pool_top core\n");
		}
	}
}

void init_yolo_yolo()
{
	printf("Initializing yolo_yolo_top\n");
	yolo_yolo_top_cfg = XYolo_yolo_top_LookupConfig(XPAR_YOLO_YOLO_TOP_0_DEVICE_ID);
	if(yolo_yolo_top_cfg)
	{
		int status = XYolo_yolo_top_CfgInitialize(&yolo_yolo_top,yolo_yolo_top_cfg);
		if(status != XST_SUCCESS)
		{
			printf("Error initializing yolo_yolo_top core\n");
		}
	}
}

void init_yolo_acc()
{
	printf("Initializing yolo_acc_top\n");
	yolo_acc_top_cfg = XYolo_acc_top_LookupConfig(XPAR_YOLO_ACC_TOP_0_DEVICE_ID);
	if(yolo_acc_top_cfg)
	{
		int status = XYolo_acc_top_CfgInitialize(&yolo_acc_top,yolo_acc_top_cfg);
		if(status != XST_SUCCESS)
		{
			printf("Error initializing yolo_acc_top core\n");
		}
	}
}

void init_yolo_upsamp()
{
	printf("Initializing yolo_upsamp_top\n");
	yolo_upsamp_top_cfg = XYolo_upsamp_top_LookupConfig(XPAR_YOLO_UPSAMP_TOP_0_DEVICE_ID);
	if(yolo_upsamp_top_cfg)
	{
		int status = XYolo_upsamp_top_CfgInitialize(&yolo_upsamp_top,yolo_upsamp_top_cfg);
		if(status != XST_SUCCESS)
		{
			printf("Error initializing yolo_upsamp_top core\n");
		}
	}
}

void init_axi_dma()
{
	printf("Initializing AxiDMA\n");
	axiDMA_cfg_0 = XAxiDma_LookupConfig(XPAR_AXIDMA_0_DEVICE_ID);
	if(axiDMA_cfg_0)
	{
		int status = XAxiDma_CfgInitialize(&axiDMA_0,axiDMA_cfg_0);
		if(status != XST_SUCCESS)
		{
			printf("Error initializing AxiDMA core 0\n");
		}
	}
	axiDMA_cfg_1 = XAxiDma_LookupConfig(XPAR_AXIDMA_1_DEVICE_ID);
	if(axiDMA_cfg_1)
	{
		int status = XAxiDma_CfgInitialize(&axiDMA_1,axiDMA_cfg_1);
		if(status != XST_SUCCESS)
		{
			printf("Error initializing AxiDMA core 1\n");
		}
	}

	XAxiDma_IntrDisable(&axiDMA_0,XAXIDMA_IRQ_ALL_MASK,XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&axiDMA_0,XAXIDMA_IRQ_ALL_MASK,XAXIDMA_DMA_TO_DEVICE);
	XAxiDma_IntrDisable(&axiDMA_1,XAXIDMA_IRQ_ALL_MASK,XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&axiDMA_1,XAXIDMA_IRQ_ALL_MASK,XAXIDMA_DMA_TO_DEVICE);
}

void init_axis_switch()
{
	printf("Initializing axis switches\n");
	axis_switch_cfg_0 = XAxisScr_LookupConfig(XPAR_AXIS_SWITCH_0_DEVICE_ID);
	if(axis_switch_cfg_0)
	{
		int status = XAxisScr_CfgInitialize(&axis_switch_0,axis_switch_cfg_0,axis_switch_cfg_0->BaseAddress);
		if(status != XST_SUCCESS)
		{
			printf("Error initializing axis switch 0\n");
		}
	}
	axis_switch_cfg_1 = XAxisScr_LookupConfig(XPAR_AXIS_SWITCH_1_DEVICE_ID);
	if(axis_switch_cfg_1)
	{
		int status = XAxisScr_CfgInitialize(&axis_switch_1,axis_switch_cfg_1,axis_switch_cfg_1->BaseAddress);
		if(status != XST_SUCCESS)
		{
			printf("Error initializing axis switch 1\n");
		}
	}
	axis_switch_cfg_2 = XAxisScr_LookupConfig(XPAR_AXIS_SWITCH_2_DEVICE_ID);
	if(axis_switch_cfg_2)
	{
		int status = XAxisScr_CfgInitialize(&axis_switch_2,axis_switch_cfg_2,axis_switch_cfg_2->BaseAddress);
		if(status != XST_SUCCESS)
		{
			printf("Error initializing axis switch 2\n");
		}
	}
}

void initPeripherals()
{
	init_yolo_conv();
	init_yolo_max_pool();
	init_yolo_yolo();
	init_yolo_acc();
	init_yolo_upsamp();
	init_axi_dma();
	init_axis_switch();
}

void set_yolo_conv(u32 output_ch,u32 input_ch,u32 fold_output_ch,u32 fold_input_ch,
		 	 	   u32 input_h,u32 input_w,u32 real_input_h,
				   u32 fold_win_area)
{
    XYolo_conv_top_Set_output_ch_V(&yolo_conv_top,output_ch);
    XYolo_conv_top_Set_input_ch_V(&yolo_conv_top,input_ch);
    XYolo_conv_top_Set_fold_output_ch_V(&yolo_conv_top,fold_output_ch);
    XYolo_conv_top_Set_fold_input_ch_V(&yolo_conv_top,fold_input_ch);
    XYolo_conv_top_Set_input_h_V(&yolo_conv_top,input_h);
    XYolo_conv_top_Set_input_w_V(&yolo_conv_top,input_w);
    XYolo_conv_top_Set_real_input_h_V(&yolo_conv_top,real_input_h);
    XYolo_conv_top_Set_fold_win_area_V(&yolo_conv_top,fold_win_area);
}

void set_yolo_max_pool(u32 output_h,u32 output_w,
		               u32 input_h,u32 input_w,
					   u32 input_fold_ch,
					   u32 stride)
{
    XYolo_max_pool_top_Set_output_h_V(&yolo_max_pool_top,output_h);
    XYolo_max_pool_top_Set_output_w_V(&yolo_max_pool_top,output_w);
    XYolo_max_pool_top_Set_input_h_V(&yolo_max_pool_top,input_h);
    XYolo_max_pool_top_Set_input_w_V(&yolo_max_pool_top,input_w);
    XYolo_max_pool_top_Set_input_fold_ch_V(&yolo_max_pool_top,input_fold_ch);
    XYolo_max_pool_top_Set_stride_V(&yolo_max_pool_top,stride);
}

void set_yolo_yolo(u32 activate_en,u32 input_h,u32 input_w)
{
    XYolo_yolo_top_Set_activate_en_V(&yolo_yolo_top,activate_en);
    XYolo_yolo_top_Set_input_h_V(&yolo_yolo_top,input_h);
    XYolo_yolo_top_Set_input_w_V(&yolo_yolo_top,input_w);
}

void set_yolo_acc(u32 input_h,u32 input_w,u32 fold_input_ch,u32 leaky,u32 bias_en)
{
    XYolo_acc_top_Set_input_h_V(&yolo_acc_top,input_h);
    XYolo_acc_top_Set_input_w_V(&yolo_acc_top,input_w);
    XYolo_acc_top_Set_fold_input_ch_V(&yolo_acc_top,fold_input_ch);
	XYolo_acc_top_Set_leaky_V(&yolo_acc_top,leaky);
	XYolo_acc_top_Set_bias_en_V(&yolo_acc_top,bias_en);
}

void set_axis_switch(u8 switch_0_s,u8 switch_0_m,
		             u8 switch_1_s,u8 switch_1_m,
					 u8 switch_2_s,u8 switch_2_m)
{
    XAxisScr_RegUpdateDisable(&axis_switch_0);
    XAxisScr_RegUpdateDisable(&axis_switch_1);
    XAxisScr_RegUpdateDisable(&axis_switch_2);

    XAxisScr_MiPortDisableAll(&axis_switch_0);
    XAxisScr_MiPortDisableAll(&axis_switch_1);
    XAxisScr_MiPortDisableAll(&axis_switch_2);

    XAxisScr_MiPortEnable(&axis_switch_0,switch_0_m,switch_0_s);
    XAxisScr_MiPortEnable(&axis_switch_1,switch_1_m,switch_1_s);
    XAxisScr_MiPortEnable(&axis_switch_2,switch_2_m,switch_2_s);

    XAxisScr_RegUpdateEnable(&axis_switch_0);
    XAxisScr_RegUpdateEnable(&axis_switch_1);
    XAxisScr_RegUpdateEnable(&axis_switch_2);
}



typedef enum{
    LINEAR, LEAKY
} ACTIVATION;

typedef enum{
    NONE, MAX_POOL, YOLO, UPSAMPLE
} POST_PROCESS;

#define CH_FOLD_FACTOR 4
#define MAX_KERNEL_NUM 32

u32 activate_en[8]={0xfffffff3,0xffffffff,0xfe7fffff,0xffffffff,0xffffffff,0xffffcfff,0xffffffff,0x7fffffff};

typedef struct layer_group
{
    int input_width;
    int input_height;
    int input_ch;
    int input_fold_ch;
    int input_size;
    int input_fold_factor;

    int acc_size;

    int output_width;
    int output_height;
    int output_ch;
    int output_fold_ch;
    int output_size;
    int output_fold_factor;
    int pooling_stride;

    short *inputs;
    short *outputs;
    short *weights;
    short *biases;

    ACTIVATION activate_type;
    POST_PROCESS post_process_type;
    int conv_disable;

} layer_group;


layer_group make_layer_group(int input_w,int input_h,int input_ch,int input_fold_factor,
                             int output_w,int output_h,int output_ch,int output_fold_factor,
                             bool conv_disable, ACTIVATION activate_type,POST_PROCESS post_process_type,int pooling_stride)
{
    layer_group inst;

    inst.input_width = input_w;
    inst.input_height = input_h;
    inst.input_ch = input_ch;
    inst.input_fold_ch = (input_ch+3)/4;
    inst.input_size = input_w*input_h*inst.input_fold_ch*CH_FOLD_FACTOR;
    inst.input_fold_factor = input_fold_factor;


    inst.output_width = output_w;
    inst.output_height = output_h;
    inst.output_ch = output_ch;
    inst.output_fold_ch = (output_ch+3)/4;
    inst.output_size = output_w*output_h*inst.output_fold_ch*CH_FOLD_FACTOR;
    inst.output_fold_factor = output_fold_factor;


    inst.acc_size = input_w*input_h*inst.output_fold_ch*CH_FOLD_FACTOR;

    inst.conv_disable = conv_disable;
    inst.activate_type = activate_type;
    inst.post_process_type = post_process_type ;

    inst.pooling_stride = pooling_stride;

    //printf("%d,%d,%d,%d,%d,%d\n",inst.input_width,inst.input_height,inst.input_ch,inst.input_fold_ch,inst.input_size,inst.input_fold_factor);
    //printf("%d,%d,%d,%d,%d,%d\n",inst.output_width,inst.output_height,inst.output_ch,inst.output_fold_ch,inst.output_size,inst.output_fold_factor);
    //printf("%d,%d,%d,%d,%d\n",inst.acc_size,inst.conv_disable,inst.activate_type,inst.post_process_type,inst.pooling_stride);
    return inst;
}


XTime tEnd, tStart;
int time_used_hw;
void forward_layer_group(layer_group l)
{
	short * mid_ptr;

    for(int i=0; i<l.output_fold_factor; i++)
    {
    	short * acc_output_buff = (short *)calloc(l.acc_size,sizeof(short));
    	short * acc_input_buff = (short *)calloc(l.acc_size,sizeof(short));
        for(int j=0; j<l.input_fold_factor; j++)
        {

            if(j==l.input_fold_factor-1)
            {
                //set IP parameters
                if(!l.conv_disable)
                {
                    set_yolo_conv(l.output_ch,l.input_ch,l.output_fold_ch,l.input_fold_ch,l.input_height+2,l.input_width+2,l.input_height+2,3);
                    set_yolo_acc(l.input_height,l.input_width,l.output_fold_ch,l.activate_type,1);
                }
                if(l.post_process_type==MAX_POOL)
                {
                	if(l.pooling_stride==2)
                	{
                		set_yolo_max_pool(l.output_height,l.output_width,l.input_height,l.input_width,l.output_fold_ch,l.pooling_stride);
                	}
                	else
                	{
                		set_yolo_max_pool(l.output_height+1,l.output_width+1,l.input_height,l.input_width,l.output_fold_ch,l.pooling_stride);
                	}
                }
                if(l.post_process_type==YOLO)
                {
                    set_yolo_yolo(activate_en[i],l.input_height,l.input_width);
                }

                set_axis_switch(0,l.conv_disable,l.conv_disable,l.post_process_type,l.post_process_type,0);

                //start IP
                if(!l.conv_disable)
                {
                    XYolo_conv_top_Start(&yolo_conv_top);
                    XYolo_acc_top_Start(&yolo_acc_top);
                }
                if(l.post_process_type == MAX_POOL)
                {
                    XYolo_max_pool_top_Start(&yolo_max_pool_top);
                }
                if(l.post_process_type == YOLO)
                {
                    XYolo_yolo_top_Start(&yolo_yolo_top);
                }
                if(l.post_process_type == UPSAMPLE)
                {
                    XYolo_upsamp_top_Start(&yolo_upsamp_top);
                }
            }
            else
            {
                set_yolo_conv(l.output_ch,l.input_ch,l.output_fold_ch,l.input_fold_ch,l.input_height+2,l.input_width+2,l.input_height+2,3);
                set_yolo_acc(l.input_height,l.input_width,l.output_fold_ch,0,0);
                set_axis_switch(0,0,0,0,0,0);
                XYolo_conv_top_Start(&yolo_conv_top);
                XYolo_acc_top_Start(&yolo_acc_top);
            }

            //weight_stream
            if(!l.conv_disable)
            {
                Xil_DCacheFlushRange((u32)(&l.weights[12*l.input_ch*l.output_ch*l.output_fold_factor*j+12*l.input_ch*l.output_ch*i]),12*l.input_ch*l.output_ch*sizeof(short));
                XAxiDma_SimpleTransfer(&axiDMA_0,(u32)&(l.weights[12*l.input_ch*l.output_ch*l.output_fold_factor*j+12*l.input_ch*l.output_ch*i]),12*l.input_ch*l.output_ch*sizeof(short),XAXIDMA_DMA_TO_DEVICE);
                while(XAxiDma_Busy(&axiDMA_0,XAXIDMA_DMA_TO_DEVICE));
            }


            if(j==l.input_fold_factor-1)
            {
                if(!l.conv_disable)
                {
                    Xil_DCacheFlushRange((u32)(&l.biases[l.output_ch*i]),l.output_ch*sizeof(short));
                    XAxiDma_SimpleTransfer(&axiDMA_1,(u32)&(l.biases[l.output_ch*i]),l.output_ch*sizeof(short),XAXIDMA_DMA_TO_DEVICE);
                    while(XAxiDma_Busy(&axiDMA_1,XAXIDMA_DMA_TO_DEVICE));
                    Xil_DCacheFlushRange((u32)(&l.inputs[l.input_size*j]),l.input_size*sizeof(short));
                }
                else
                {
                    Xil_DCacheFlushRange((u32)(&l.inputs[l.input_size*i]),l.input_size*sizeof(short));
                }

                Xil_DCacheFlushRange((u32)(&l.outputs[l.output_size*i]),l.output_size*sizeof(short));
                if(!l.conv_disable)
                {
                    Xil_DCacheFlushRange((u32)acc_input_buff,l.acc_size*sizeof(short));
                    XAxiDma_SimpleTransfer(&axiDMA_1,(u32)acc_input_buff,l.acc_size*sizeof(short),XAXIDMA_DMA_TO_DEVICE);
                    XAxiDma_SimpleTransfer(&axiDMA_0,(u32)&l.inputs[l.input_size*j],l.input_size*sizeof(short),XAXIDMA_DMA_TO_DEVICE);
                }
                else
                {
                	XAxiDma_SimpleTransfer(&axiDMA_0,(u32)&l.inputs[l.input_size*i],l.input_size*sizeof(short),XAXIDMA_DMA_TO_DEVICE);
                }

                XAxiDma_SimpleTransfer(&axiDMA_0,(u32)(&l.outputs[l.output_size*i]),l.output_size*sizeof(short),XAXIDMA_DEVICE_TO_DMA);
                while(XAxiDma_Busy(&axiDMA_0,XAXIDMA_DEVICE_TO_DMA));
                Xil_DCacheInvalidateRange((u32)(&l.outputs[l.output_size*i]),l.output_size*sizeof(short));

                if(l.post_process_type == NONE)
                {
                    while(!XYolo_acc_top_IsDone(&yolo_acc_top));
                }
                if(l.post_process_type == MAX_POOL)
                {
                    while(!XYolo_max_pool_top_IsDone(&yolo_max_pool_top));
                }
                if(l.post_process_type == YOLO)
                {
                    while(!XYolo_yolo_top_IsDone(&yolo_yolo_top));
                }
                if(l.post_process_type == UPSAMPLE)
                {
                    while(!XYolo_upsamp_top_IsDone(&yolo_upsamp_top));
                }

            }
            else
            {
                Xil_DCacheFlushRange((u32)(&l.inputs[l.input_size*j]),l.input_size*sizeof(short));
                Xil_DCacheFlushRange((u32)acc_output_buff,l.acc_size*sizeof(short));
                Xil_DCacheFlushRange((u32)acc_input_buff,l.acc_size*sizeof(short));
                XAxiDma_SimpleTransfer(&axiDMA_0,(u32)&l.inputs[l.input_size*j],l.input_size*sizeof(short),XAXIDMA_DMA_TO_DEVICE);
                XAxiDma_SimpleTransfer(&axiDMA_1,(u32)acc_input_buff,l.acc_size*sizeof(short),XAXIDMA_DMA_TO_DEVICE);
                XAxiDma_SimpleTransfer(&axiDMA_0,(u32)acc_output_buff,l.acc_size*sizeof(short),XAXIDMA_DEVICE_TO_DMA);
                while(XAxiDma_Busy(&axiDMA_0,XAXIDMA_DEVICE_TO_DMA));
                Xil_DCacheInvalidateRange((u32)acc_output_buff,l.acc_size*sizeof(short));
                while(!XYolo_acc_top_IsDone(&yolo_acc_top));
            }
            mid_ptr = acc_input_buff;
            acc_input_buff = acc_output_buff;
            acc_output_buff = mid_ptr;
            //memcpy(acc_input_buff,acc_output_buff,l.acc_size*sizeof(short));
        }
        free(acc_input_buff);
        free(acc_output_buff);

    }


}



int main()
{


	//initialise IPs
    initPeripherals();




    layer_group group_0 = make_layer_group(416,416,3,1,
                                           208,208,16,1,
                                           0,LEAKY,MAX_POOL,2);
    layer_group group_1 = make_layer_group(208,208,16,1,
                                           104,104,32,1,
                                           0,LEAKY,MAX_POOL,2);
    layer_group group_2 = make_layer_group(104,104,32,1,
                                           52,52,32,2,
                                           0,LEAKY,MAX_POOL,2);
    layer_group group_3 = make_layer_group(52,52,32,2,
                                           26,26,32,4,
                                           0,LEAKY,MAX_POOL,2);
    layer_group group_4 = make_layer_group(26,26,32,4,
                                           26,26,32,8,
                                           0,LEAKY,NONE,2);
    layer_group group_5 = make_layer_group(26,26,32,1,
                                           13,13,32,8,
                                           1,LINEAR,MAX_POOL,2);
    layer_group group_6 = make_layer_group(13,13,32,8,
                                           13,13,32,16,
                                           0,LEAKY,MAX_POOL,1);
    layer_group group_7 = make_layer_group(13,13,32,16,
                                           13,13,32,32,
                                           0,LEAKY,NONE,2);
    layer_group group_8 = make_layer_group(13,13,32,32,
                                           13,13,32,8,
                                           0,LEAKY,NONE,2);
    layer_group group_9 = make_layer_group(13,13,32,8,
                                           13,13,32,16,
                                           0,LEAKY,NONE,2);
    layer_group group_10 = make_layer_group(13,13,32,16,
                                           13,13,32,8,
                                           0,LINEAR,YOLO,2);
    layer_group group_11 = make_layer_group(13,13,32,8,
                                           26,26,32,4,
                                           0,LEAKY,UPSAMPLE,2);
    layer_group group_12 = make_layer_group(26,26,32,12,
                                           26,26,32,8,
                                           0,LEAKY,NONE,2);
    layer_group group_13 = make_layer_group(26,26,32,8,
                                           26,26,32,8,
                                           0,LINEAR,YOLO,2);

    group_0.inputs = layer_input;

    group_0.weights = group_0_weights;
    group_0.biases = group_0_biases;
    group_1.weights = group_1_weights;
    group_1.biases = group_1_biases;
    group_2.weights = group_2_weights;
    group_2.biases = group_2_biases;
    group_3.weights = group_3_weights;
    group_3.biases = group_3_biases;
    group_4.weights = group_4_weights;
    group_4.biases = group_4_biases;
    group_6.weights = group_6_weights;
    group_6.biases = group_6_biases;
    group_7.weights = group_7_weights;
    group_7.biases = group_7_biases;
    group_8.weights = group_8_weights;
    group_8.biases = group_8_biases;
    group_9.weights = group_9_weights;
    group_9.biases = group_9_biases;
    group_10.weights = group_10_weights;
    group_10.biases = group_10_biases;
    group_11.weights = group_11_weights;
    group_11.biases = group_11_biases;
    group_12.weights = group_12_weights;
    group_12.biases = group_12_biases;
    group_13.weights = group_13_weights;
    group_13.biases = group_13_biases;

    XTime_GetTime(&tStart);

    group_0.outputs = (short *)calloc(group_0.output_size*group_0.output_fold_factor,sizeof(short));
    forward_layer_group(group_0);
    group_1.inputs = group_0.outputs;
    group_1.outputs = (short *)calloc(group_1.output_size*group_1.output_fold_factor,sizeof(short));
    forward_layer_group(group_1);
    free(group_0.outputs);
    group_2.inputs = group_1.outputs;
    group_2.outputs = (short *)calloc(group_2.output_size*group_2.output_fold_factor,sizeof(short));
    forward_layer_group(group_2);
    free(group_1.outputs);
    group_3.inputs = group_2.outputs;
    group_3.outputs = (short *)calloc(group_3.output_size*group_3.output_fold_factor,sizeof(short));
    forward_layer_group(group_3);
    free(group_2.outputs);
    group_4.inputs = group_3.outputs;
    group_4.outputs = (short *)calloc(group_4.output_size*group_4.output_fold_factor,sizeof(short));
    forward_layer_group(group_4);
    free(group_3.outputs);
    group_5.inputs = group_4.outputs;
    group_5.outputs = (short *)calloc(group_5.output_size*group_5.output_fold_factor,sizeof(short));
    forward_layer_group(group_5);

    group_6.inputs = group_5.outputs;
    group_6.outputs = (short *)calloc(group_6.output_size*group_6.output_fold_factor,sizeof(short));
    forward_layer_group(group_6);
    free(group_5.outputs);
    group_7.inputs = group_6.outputs;
    group_7.outputs = (short *)calloc(group_7.output_size*group_7.output_fold_factor,sizeof(short));
    forward_layer_group(group_7);
    free(group_6.outputs);
    group_8.inputs = group_7.outputs;
    group_8.outputs = (short *)calloc(group_8.output_size*group_8.output_fold_factor,sizeof(short));
    forward_layer_group(group_8);
    free(group_7.outputs);
    group_9.inputs = group_8.outputs;
    group_9.outputs = (short *)calloc(group_9.output_size*group_9.output_fold_factor,sizeof(short));
    forward_layer_group(group_9);

    group_10.inputs = group_9.outputs;
    group_10.outputs = (short *)calloc(group_10.output_size*group_10.output_fold_factor,sizeof(short));
    forward_layer_group(group_10);
    free(group_9.outputs);
    free(group_10.outputs);

    group_11.inputs = group_8.outputs;
    group_11.outputs = (short *)calloc(group_11.output_size*group_11.output_fold_factor,sizeof(short));
    forward_layer_group(group_11);
    free(group_8.outputs);

    group_12.inputs = (short *)calloc(group_12.input_size*group_12.input_fold_factor,sizeof(short));
    memcpy(group_12.inputs,group_11.outputs,group_11.output_size*group_11.output_fold_factor*sizeof(short));
    memcpy(&group_12.inputs[group_11.output_size*group_11.output_fold_factor],group_4.outputs,group_4.output_size*group_4.output_fold_factor*sizeof(short));
    free(group_4.outputs);
    free(group_11.outputs);

    group_12.outputs = (short *)calloc(group_12.output_size*group_12.output_fold_factor,sizeof(short));
    forward_layer_group(group_12);
    free(group_12.inputs);
    group_13.inputs = group_12.outputs;
    group_13.outputs = (short *)calloc(group_13.output_size*group_13.output_fold_factor,sizeof(short));
    forward_layer_group(group_13);
    free(group_12.outputs);
    XTime_GetTime(&tEnd);


    short *layer_output_hls = group_13.outputs;

	printf("Calculation complete\n");

    time_used_hw = 1.0*((tEnd-tStart)*1000000)/(COUNTS_PER_SECOND);
    xil_printf("***%d(us)***\n\r", time_used_hw);
    int count =0;
	for(int idx=0;idx<group_13.output_size*group_13.output_fold_factor;idx++)
	{
		short ref = layer_output_ref[idx];
		short get = layer_output_hls[idx];

		if(abs(ref-get)<64)
		{
			continue;
		}
		else
		{count++;

			//printf("Recv[%d]=%hd,Ref=%hd\n",idx,get,ref);
		}
		//printf("%hd,\n",get);

	}
	free(layer_output_hls);
	printf("End,%d/%d\n",count,group_13.output_size*group_13.output_fold_factor);
    return 0;
}

