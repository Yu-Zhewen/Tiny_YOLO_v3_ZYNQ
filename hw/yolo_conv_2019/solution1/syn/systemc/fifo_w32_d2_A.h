// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef fifo_w32_d2_A_HH_
#define fifo_w32_d2_A_HH_

#include <systemc>
using namespace std;
SC_MODULE(fifo_w32_d2_A) {
    static const unsigned int DATA_WIDTH = 32;
    static const unsigned int ADDR_WIDTH = 2;
    static const unsigned int fifo_w32_d2_A_depth = 3;
    sc_core::sc_in_clk clk;
    sc_core::sc_in< sc_dt::sc_logic > reset;
    sc_core::sc_out< sc_dt::sc_logic > if_empty_n;
    sc_core::sc_in< sc_dt::sc_logic > if_read_ce;
    sc_core::sc_in< sc_dt::sc_logic > if_read;
    sc_core::sc_out< sc_dt::sc_lv<DATA_WIDTH> > if_dout;
    
    sc_core::sc_out< sc_dt::sc_logic > if_full_n;
    sc_core::sc_in< sc_dt::sc_logic > if_write_ce;
    sc_core::sc_in< sc_dt::sc_logic > if_write;
    sc_core::sc_in< sc_dt::sc_lv<DATA_WIDTH> > if_din;

    sc_core::sc_signal< sc_dt::sc_logic > internal_empty_n;
    sc_core::sc_signal< sc_dt::sc_logic > internal_full_n;

    sc_core::sc_signal< sc_dt::sc_lv<DATA_WIDTH> >  mStorage[fifo_w32_d2_A_depth];
    sc_core::sc_signal< sc_dt::sc_uint<ADDR_WIDTH> > mInPtr;
    sc_core::sc_signal< sc_dt::sc_uint<ADDR_WIDTH> > mOutPtr;
    sc_core::sc_signal< sc_dt::sc_uint<1> > mFlag_nEF_hint;

    sc_core::sc_trace_file* mTrace;

    SC_CTOR(fifo_w32_d2_A) : mTrace(0) {
        const char* dump_vcd = std::getenv("AP_WRITE_VCD");
        if (dump_vcd && string(dump_vcd) == "1") {
        std::string tracefn = "sc_trace_" +  std::string(name());
        mTrace = sc_core::sc_create_vcd_trace_file( tracefn.c_str());
        sc_trace(mTrace, clk, "(port)clk");
        sc_trace(mTrace, reset, "(port)reset");
        sc_trace(mTrace, if_full_n, "(port)if_full_n");
        sc_trace(mTrace, if_write_ce, "(port)if_write_ce");
        sc_trace(mTrace, if_write, "(port)if_write");
        sc_trace(mTrace, if_din, "(port)if_din");
        sc_trace(mTrace, if_empty_n, "(port)if_empty_n");
        sc_trace(mTrace, if_read_ce, "(port)if_read_ce");
        sc_trace(mTrace, if_read, "(port)if_read");
        sc_trace(mTrace, if_dout, "(port)if_dout");
        sc_trace(mTrace, mInPtr, "mInPtr");
        sc_trace(mTrace, mOutPtr, "mOutPtr");
        sc_trace(mTrace, mFlag_nEF_hint, "mFlag_nEF_hint");
        }

        mInPtr = 0;
        mOutPtr = 0;
        mFlag_nEF_hint = 0;

        SC_METHOD(proc_read_write);
        sensitive << clk.pos();

        SC_METHOD(proc_dout);
        sensitive << mOutPtr;
        for (unsigned i = 0; i < fifo_w32_d2_A_depth; i++) {
            sensitive << mStorage[i];
        }

        SC_METHOD(proc_ptr);
        sensitive << mInPtr << mOutPtr<< mFlag_nEF_hint;
        
        SC_METHOD(proc_status);
        sensitive << internal_empty_n << internal_full_n;
        
    }

    ~fifo_w32_d2_A() {
        if (mTrace) sc_core::sc_close_vcd_trace_file(mTrace);
    }

    void proc_status() {
        if_empty_n.write(internal_empty_n.read());
        if_full_n.write(internal_full_n.read());
    }

    void proc_read_write() {
        if (reset.read() == sc_dt::SC_LOGIC_1) {
            mInPtr.write(0);
            mOutPtr.write(0);
            mFlag_nEF_hint.write(0);
        }
        else {
            if (if_read_ce.read() == sc_dt::SC_LOGIC_1
               && if_read.read() == sc_dt::SC_LOGIC_1 
               && internal_empty_n.read() == sc_dt::SC_LOGIC_1) {
                sc_dt::sc_uint<ADDR_WIDTH> ptr;
                if (mOutPtr.read().to_uint() == (fifo_w32_d2_A_depth-1)) {
                    ptr = 0;
                    mFlag_nEF_hint.write(~mFlag_nEF_hint.read());
                }
                else {
                    ptr = mOutPtr.read();
                    ptr++;
                }
                assert(ptr.to_uint() < fifo_w32_d2_A_depth);
                mOutPtr.write(ptr);
            }
            if (if_write_ce.read() == sc_dt::SC_LOGIC_1
                && if_write.read() == sc_dt::SC_LOGIC_1
                && internal_full_n.read() == sc_dt::SC_LOGIC_1) {
                sc_dt::sc_uint<ADDR_WIDTH> ptr;
                ptr = mInPtr.read();
                mStorage[ptr.to_uint()].write(if_din.read());
                if (ptr.to_uint() == (fifo_w32_d2_A_depth-1)) {
                    ptr = 0;
                    mFlag_nEF_hint.write(~mFlag_nEF_hint.read());
                } else {
                    ptr++;
                    assert(ptr.to_uint() < fifo_w32_d2_A_depth);
                }
                mInPtr.write(ptr);
            }
        }
    }

    void proc_dout() {
        sc_dt::sc_uint<ADDR_WIDTH> ptr = mOutPtr.read();
        if (ptr.to_uint() > fifo_w32_d2_A_depth) {
            if_dout.write(sc_dt::sc_lv<DATA_WIDTH>());
        } 
        else {
            if_dout.write(mStorage[ptr.to_uint()]);
        }
    }


    void proc_ptr() {
        if (mInPtr.read() == mOutPtr.read() && mFlag_nEF_hint.read().to_uint()==0) {
            internal_empty_n.write(sc_dt::SC_LOGIC_0);
        }
        else {
            internal_empty_n.write(sc_dt::SC_LOGIC_1);
        }
        if (mInPtr.read() == mOutPtr.read() && mFlag_nEF_hint.read().to_uint()==1) {
            internal_full_n.write(sc_dt::SC_LOGIC_0);
        }
        else {
            internal_full_n.write(sc_dt::SC_LOGIC_1);
        }
    }


};

#endif //fifo_w32_d2_A_HH_
