#ifndef YOLO_STREAM_H
#define YOLO_STREAM_H

#include "ap_int.h"
#include "hls_stream.h"
#include "yolo_fp.h"

typedef struct quad_fp_pack{
	fp_data_type sub_data_0;
	fp_data_type sub_data_1;
	fp_data_type sub_data_2;
	fp_data_type sub_data_3;
}quad_fp_pack;

template<int D,int U,int TI,int TD>
  struct ap_axi_fp{
	quad_fp_pack   data;
    ap_uint<(D+7)/8> keep;
    ap_uint<(D+7)/8> strb;
    ap_uint<U>       user;
    ap_uint<1>       last;
    ap_uint<TI>      id;
    ap_uint<TD>      dest;
};

typedef ap_axi_fp<64,2,5,6> quad_fp_side_channel;
typedef hls::stream<quad_fp_side_channel> yolo_quad_stream;
typedef hls::stream<fp_data_type> yolo_inter_stream;

#endif
