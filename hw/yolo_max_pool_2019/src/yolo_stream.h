#ifndef YOLO_STREAM_H
#define YOLO_STREAM_H

#include "ap_int.h"
#include "hls_stream.h"

template<int D,int U,int TI,int TD>
  struct ap_axif{
    float            data;
    ap_uint<(D+7)/8> keep;
    ap_uint<(D+7)/8> strb;
    ap_uint<U>       user;
    ap_uint<1>       last;
    ap_uint<TI>      id;
    ap_uint<TD>      dest;
};

typedef ap_axif<32,2,5,6> float_32_side_channel;
typedef hls::stream<float_32_side_channel> yolo_stream_type;
typedef hls::stream<float> yolo_inter_stream;

#endif
