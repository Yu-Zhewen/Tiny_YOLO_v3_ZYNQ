// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _write_output_HH_
#define _write_output_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct write_output : public sc_module {
    // Port declarations 24
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > val_output;
    sc_in< sc_lv<4> > curr_input_keep_V;
    sc_in< sc_lv<4> > curr_input_strb_V;
    sc_in< sc_lv<2> > curr_input_user_V;
    sc_in< sc_lv<5> > curr_input_id_V;
    sc_in< sc_lv<6> > curr_input_dest_V;
    sc_out< sc_lv<32> > outStream_TDATA;
    sc_out< sc_logic > outStream_TVALID;
    sc_in< sc_logic > outStream_TREADY;
    sc_out< sc_lv<4> > outStream_TKEEP;
    sc_out< sc_lv<4> > outStream_TSTRB;
    sc_out< sc_lv<2> > outStream_TUSER;
    sc_out< sc_lv<1> > outStream_TLAST;
    sc_out< sc_lv<5> > outStream_TID;
    sc_out< sc_lv<6> > outStream_TDEST;
    sc_in< sc_lv<1> > last_V;
    sc_out< sc_logic > outStream_TDATA_blk_n;
    sc_in< sc_logic > ap_ce;


    // Module declarations
    write_output(sc_module_name name);
    SC_HAS_PROCESS(write_output);

    ~write_output();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_fsm_state1;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_outStream_TDATA();
    void thread_outStream_TDATA_blk_n();
    void thread_outStream_TDEST();
    void thread_outStream_TID();
    void thread_outStream_TKEEP();
    void thread_outStream_TLAST();
    void thread_outStream_TSTRB();
    void thread_outStream_TUSER();
    void thread_outStream_TVALID();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
