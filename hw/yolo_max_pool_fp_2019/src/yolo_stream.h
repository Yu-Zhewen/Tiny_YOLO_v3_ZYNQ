#ifndef YOLO_STREAM_H
#define YOLO_STREAM_H

#include "ap_int.h"
#include "hls_stream.h"
#include "yolo_fp.h"

typedef struct double_fp_pack{
	fp_data_type sub_data_0;
	fp_data_type sub_data_1;
}double_fp_pack;

template<int D,int U,int TI,int TD>
  struct ap_axif{
	double_fp_pack   data;
    ap_uint<(D+7)/8> keep;
    ap_uint<(D+7)/8> strb;
    ap_uint<U>       user;
    ap_uint<1>       last;
    ap_uint<TI>      id;
    ap_uint<TD>      dest;
};

typedef ap_axif<32,2,5,6> double_fp_side_channel;
typedef hls::stream<double_fp_side_channel> yolo_stream_type;
typedef hls::stream<fp_data_type> yolo_inter_stream;

#endif

