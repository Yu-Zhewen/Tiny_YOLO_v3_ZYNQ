// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#ifndef AESL_COMP_H
#define AESL_COMP_H


#include <systemc>
//#include "systemc.h"

#define DEBUG(x) 


///CFU:  combinational FU, no clock, reset and ce
//template<int NUM_STAGE,
//         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
//         int DOUT_WIDTH=DIN0_WIDTH> 
template<int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH,
         int DOUT_WIDTH> class AESLFUComp;
template<int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH,
         int DOUT_WIDTH> 
SC_MODULE( AESLCFUComp )
{
  public:
    sc_in< sc_lv<DIN0_WIDTH> > din0;
    sc_in< sc_lv<DIN1_WIDTH> > din1;
    
    sc_out< sc_lv<DOUT_WIDTH> > dout;

    SC_CTOR( AESLCFUComp );
    
    AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH> *super;
    
    virtual void sanity_check() {}
    
    virtual sc_lv<DOUT_WIDTH>
        compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) 
	{ if (super) return super->compute(in0, in1); 
          else return sc_lv<DOUT_WIDTH>(); }
    
    void thread_compute() {
        DEBUG(
        {
            if (DIN0_WIDTH == 64)
                printf("[ACMP_ADD] input: %llx %llx\n",
                       din0.read().to_uint64(), 
                       din1.read().to_uint64());
            else
                printf("[ACMP_ADD] input: %x %x\n",
                       din0.read().to_uint(), 
                       din1.read().to_uint());
        });
        
        sc_lv<DOUT_WIDTH> result = compute(din0.read(), din1.read());
        
        dout.write(result);

        DEBUG(
        {
            
            if (DIN0_WIDTH == 64)
                printf("[ACMP_ADD] comb output: %llx\n", result.to_uint64());
            else 
                printf("[ACMP_ADD] comb output: %x\n", result.to_uint());
        });
    }
};


template<int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH,
         int DOUT_WIDTH> 
AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>::
AESLCFUComp(const sc_module_name name): sc_module( name ), super(0) {
    //sanity_check();
    
    SC_METHOD( thread_compute );
    sensitive << din0;
    sensitive << din1;
}


///FU:  sequential FU, with clock, reset and ce
template<int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH,
         int DOUT_WIDTH> 
SC_MODULE(AESLFUComp)
{
  AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH> core;
  public:
    sc_in< bool > clk;
    sc_in< sc_logic > reset;
    sc_in< sc_logic > ce;
    sc_in< sc_lv<DIN0_WIDTH> > din0;
    sc_in< sc_lv<DIN1_WIDTH> > din1;
    sc_out< sc_lv<DOUT_WIDTH> > dout;

    /// Dont use stage_regvec[0].
    sc_signal< sc_lv<DOUT_WIDTH> > stage_regvec[NUM_STAGE];
    
    SC_CTOR( AESLFUComp );
    
    virtual sc_lv<DOUT_WIDTH>
        compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) 
	{ return sc_lv<DOUT_WIDTH>(); }

    void thread_stage() {
        if (ce.read() == SC_LOGIC_0) return;
        
        dout.write(stage_regvec[NUM_STAGE-1]);
        for (unsigned i = NUM_STAGE-1; i > 1; --i) {
            stage_regvec[i].write(stage_regvec[i-1].read());
        }

        DEBUG(
        {
            if (DIN0_WIDTH == 64)
                printf("[ACMP_ADD] reg output %llx\n",
                       stage_regvec[NUM_STAGE-1].read().to_uint64());
            else
                printf("[ACMP_ADD] reg output %x\n",
                       stage_regvec[NUM_STAGE-1].read().to_uint());
        });
    }
    
};


template<int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH,
         int DOUT_WIDTH> 
AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>::
AESLFUComp(const sc_module_name name): sc_module( name ), core("CFU_U") {
    //sanity_check();
    core.din0(din0);
    core.din1(din1);
    core.dout(stage_regvec[1]);
    core.super = this;
    if (NUM_STAGE > 1)
    {
        SC_METHOD( thread_stage );
        sensitive << clk.pos();
    }
}

//Need refine here//////////////////////////////////////////////////////////////
///CFU:  combinational FU, no clock, reset and ce
//template<int NUM_STAGE,
//         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
//         int DOUT_WIDTH=DIN0_WIDTH> 
template<int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH,
         int DOUT_WIDTH> class AESLFUComp_seq;

template<int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH,
         int DOUT_WIDTH> 
SC_MODULE( AESLCFUComp_seq )
{
  public:
    sc_in< sc_lv<DIN0_WIDTH> > din0;
    sc_in< sc_lv<DIN1_WIDTH> > din1;
    
    sc_out< sc_lv<DOUT_WIDTH> > dout;

    SC_CTOR( AESLCFUComp_seq );
    
    AESLFUComp_seq<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH> *super;
    
    virtual void sanity_check() {}
    
    virtual sc_lv<DOUT_WIDTH>
        compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) 
	{ if (super) return super->compute(in0, in1); 
          else return sc_lv<DOUT_WIDTH>(); }
    
    void thread_compute() {
        DEBUG(
        {
            if (DIN0_WIDTH == 64)
                printf("[ACMP_ADD] input: %llx %llx\n",
                       din0.read().to_uint64(), 
                       din1.read().to_uint64());
            else
                printf("[ACMP_ADD] input: %x %x\n",
                       din0.read().to_uint(), 
                       din1.read().to_uint());
        });
        
        sc_lv<DOUT_WIDTH> result = compute(din0.read(), din1.read());
        
        dout.write(result);

        DEBUG(
        {
            
            if (DIN0_WIDTH == 64)
                printf("[ACMP_ADD] comb output: %llx\n", result.to_uint64());
            else 
                printf("[ACMP_ADD] comb output: %x\n", result.to_uint());
        });
    }
};

template<int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH,
         int DOUT_WIDTH> 
AESLCFUComp_seq<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>::
AESLCFUComp_seq(const sc_module_name name): sc_module( name ), super(0) {
    //sanity_check();
    
    SC_METHOD( thread_compute );
    sensitive << din0;
    sensitive << din1;
}

///FU:  sequential FU, with clock, reset, ce and start
template<int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH,
         int DOUT_WIDTH> 
SC_MODULE(AESLFUComp_seq)
{
  AESLCFUComp_seq<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH> core;
  public:
    sc_in< bool > clk;
    sc_in< sc_logic > reset;
    sc_in< sc_logic > ce;
    sc_in< sc_logic > start;
    sc_in< sc_logic > done;
    sc_in< sc_lv<DIN0_WIDTH> > din0;
    sc_in< sc_lv<DIN1_WIDTH> > din1;
    sc_out< sc_lv<DOUT_WIDTH> > dout;

    /// Dont use stage_regvec[0].
    sc_signal< sc_lv<DOUT_WIDTH> > stage_regvec[NUM_STAGE];
    
    SC_CTOR( AESLFUComp_seq );
    
    virtual sc_lv<DOUT_WIDTH>
        compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) 
	{ return sc_lv<DOUT_WIDTH>(); }

    void thread_stage() {
        if (ce.read() == SC_LOGIC_0) return;
        
        dout.write(stage_regvec[NUM_STAGE-1]);
        for (unsigned i = NUM_STAGE-1; i > 1; --i) {
            stage_regvec[i].write(stage_regvec[i-1].read());
        }

        DEBUG(
        {
            if (DIN0_WIDTH == 64)
                printf("[ACMP_ADD] reg output %llx\n",
                       stage_regvec[NUM_STAGE-1].read().to_uint64());
            else
                printf("[ACMP_ADD] reg output %x\n",
                       stage_regvec[NUM_STAGE-1].read().to_uint());
        });
    }
    
};

template<int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH,
         int DOUT_WIDTH> 
AESLFUComp_seq<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>::
AESLFUComp_seq(const sc_module_name name): sc_module( name ), core("CFU_U") {
    //sanity_check();
    core.din0(din0);
    core.din1(din1);
    core.dout(stage_regvec[1]);
    core.super = this;
    if (NUM_STAGE > 1)
    {
        SC_METHOD( thread_stage );
        sensitive << clk.pos();
    }
} 
//end///////////////////////////////////////////////////////////////////////////

template<int OPC_WIDTH, int DIN_WIDTH, int DOUT_WIDTH> 
struct FUComputeCore 
{

    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<OPC_WIDTH>& opcode, const sc_lv<DIN_WIDTH>& in)=0;
};


////////////////////////////////////////////////////////////////
// Abstract Multi-op combinational Functional Units.
////////////////////////////////////////////////////////////////
template<int NUM_STAGE, int OPC_WIDTH, int DIN_WIDTH, int DOUT_WIDTH> 
SC_MODULE( AESLCFUMOComp )
{
  public:
    sc_in< sc_lv<OPC_WIDTH> > opcode;
    
    sc_in< sc_lv<DIN_WIDTH> > din;
    sc_out< sc_lv<DOUT_WIDTH> > dout;


  public:
    SC_CTOR( AESLCFUMOComp ) {
        assert(OPC_WIDTH > 0 && DIN_WIDTH > 0 && DOUT_WIDTH > 0
               && NUM_STAGE == 1);
        
        SC_METHOD( thread_compute );
        sensitive << opcode << din;
        
    }
    
    //virtual sc_lv<DOUT_WIDTH>
    //compute(const sc_lv<OPC_WIDTH>& opcode, const sc_lv<DIN_WIDTH>& in) {

    FUComputeCore<OPC_WIDTH, DIN_WIDTH, DOUT_WIDTH>* mCore;
    
    void setComputeCore(FUComputeCore<OPC_WIDTH, DIN_WIDTH, DOUT_WIDTH>* core) {
        mCore = core;
    }
    FUComputeCore<OPC_WIDTH, DIN_WIDTH, DOUT_WIDTH>* getComputeCore() {
        return mCore;
    }
    
  public:

    void thread_compute() {
        DEBUG( cerr << "[ACMP] " << name() << " Input: "
               << din.read() << endl; );
        assert(mCore);
        
        sc_lv<DOUT_WIDTH> result;
        if (din.read().is_01()) {
            result = mCore->compute(opcode.read(), din.read());
        } 
        else {
            result = sc_lv<DOUT_WIDTH>();
        }

        dout.write(result);

        DEBUG( cerr << "[ACMP] " << name() << " C-out: "
               << result << endl;);
    }
    
};


////////////////////////////////////////////////////////////////
// Abstract Pipelined Functional Units.
////////////////////////////////////////////////////////////////
template<int NUM_STAGE, int OPC_WIDTH, int DIN_WIDTH, int DOUT_WIDTH> 
SC_MODULE( AESLFUMultiCycle )
{
  public:
    sc_in< bool > clk;
    sc_in< sc_logic > reset;
    sc_in< sc_logic > ce;
    sc_in< sc_lv<OPC_WIDTH> > opcode;
    
    sc_in< sc_lv<DIN_WIDTH> > din;
    sc_out< sc_lv<DOUT_WIDTH> > dout;


  public:
    SC_CTOR( AESLFUMultiCycle ) {
        assert(OPC_WIDTH > 0 && DIN_WIDTH > 0 && DOUT_WIDTH > 0
               && NUM_STAGE > 0);
        
        SC_METHOD( thread_compute );
        sensitive << opcode << din;
        sensitive << clk;
        
        if (NUM_STAGE > 1)
        {
            SC_METHOD( thread_stage );
            sensitive << (clk.pos());
        }
    }
    
    //virtual sc_lv<DOUT_WIDTH>
    //compute(const sc_lv<OPC_WIDTH>& opcode, const sc_lv<DIN_WIDTH>& in) {

    FUComputeCore<OPC_WIDTH, DIN_WIDTH, DOUT_WIDTH>* mCore;
    
    void setComputeCore(FUComputeCore<OPC_WIDTH, DIN_WIDTH, DOUT_WIDTH>* core) {
        mCore = core;
    }
    FUComputeCore<OPC_WIDTH, DIN_WIDTH, DOUT_WIDTH>* getComputeCore() {
        return mCore;
    }
    
  public:
    sc_signal< sc_lv<DOUT_WIDTH> > stage_regvec[NUM_STAGE];

    void thread_compute() {
        DEBUG( cerr << "[ACMP] " << name() << " Input: "
               << din.read() << endl; );
        assert(mCore);
        
        sc_lv<DOUT_WIDTH> result;
        if (din.read().is_01() && opcode.read().is_01()) {
            result = mCore->compute(opcode.read(), din.read());
        } 
        else {
            result = sc_lv<DOUT_WIDTH>();
        }

        if (NUM_STAGE > 1)
            stage_regvec[1].write(result);
        else
            dout.write(result);

        DEBUG( cerr << "[ACMP] " << name() << " C-out: "
               << result << endl;);
    }
    
    void thread_stage() {
        if (ce.read() == SC_LOGIC_0) return;
        
        dout.write(stage_regvec[NUM_STAGE-1]);
        for (unsigned i = NUM_STAGE-1; i > 1; --i) {
            stage_regvec[i].write(stage_regvec[i-1].read());
        }

        DEBUG(
            cerr << "[ACMP] " << name() << " R-out: "
            << stage_regvec[NUM_STAGE-1].read() << endl;);
    }
};



////////////////////////////////////////////////////////////////
/// Unary operator
////////////////////////////////////////////////////////////////
template< int NUM_STAGE,
          int DIN0_WIDTH, 
          int DOUT_WIDTH=DIN0_WIDTH> 
SC_MODULE( CFUUnaryOp )
{
  public:
    sc_in< sc_lv<DIN0_WIDTH> > din0;
    sc_out< sc_lv<DOUT_WIDTH> > dout;
    
    SC_CTOR(CFUUnaryOp) {
        mMCModule =
            new AESLFUMultiCycle
            <NUM_STAGE, 1, DIN0_WIDTH, DOUT_WIDTH>("u_U");

        mMCModule->opcode(sigone);
        mMCModule->din(din0);
        mMCModule->dout(dout);
        mMCModule->clk(clk);
        mMCModule->reset(reset);
        mMCModule->ce(ce);

        SC_METHOD(IOConnection);
    }
    
    AESLFUMultiCycle<NUM_STAGE, 1, DIN0_WIDTH, DOUT_WIDTH>* mMCModule;

    void setComputeCore(FUComputeCore<1, DIN0_WIDTH, DOUT_WIDTH>* core) {
        mMCModule->setComputeCore(core);
    }

  private:
    sc_signal< sc_lv<1> > sigone;
    sc_signal< bool > clk;
    sc_signal< sc_logic > reset;
    sc_signal< sc_logic > ce;

    void IOConnection() {
        sigone.write(sc_lv<1>("1"));
    }

};

template< int NUM_STAGE,
          int DIN0_WIDTH, 
          int DOUT_WIDTH=DIN0_WIDTH> 
SC_MODULE( FUUnaryOp )
{
  public:
    sc_in< bool > clk;
    sc_in< sc_logic > reset;
    sc_in< sc_logic > ce;
    sc_in< sc_lv<DIN0_WIDTH> > din0;
    sc_out< sc_lv<DOUT_WIDTH> > dout;
    
    SC_CTOR(FUUnaryOp) {
        mMCModule =
            new AESLFUMultiCycle
            <NUM_STAGE, 1, DIN0_WIDTH, DOUT_WIDTH>("u_U");

        mMCModule->opcode(sigone);
        mMCModule->din(din0);
        mMCModule->dout(dout);
        mMCModule->clk(clk);
        mMCModule->reset(reset);
        mMCModule->ce(ce);

        SC_METHOD(IOConnection);
        sensitive << clk;
    }
    
    AESLFUMultiCycle<NUM_STAGE, 1, DIN0_WIDTH, DOUT_WIDTH>* mMCModule;

    void setComputeCore(FUComputeCore<1, DIN0_WIDTH, DOUT_WIDTH>* core) {
        mMCModule->setComputeCore(core);
    }

  private:
    sc_signal< sc_lv<1> > sigone;

    void IOConnection() {
        sigone.write(sc_lv<1>("1"));
    }

};


template< int NUM_STAGE,
          int OPC_WIDTH,
          int DIN0_WIDTH, 
          int DOUT_WIDTH> 
SC_MODULE( FUMOUnaryOp )
{
  public:
    sc_in< bool > clk;
    sc_in< sc_logic > reset;
    sc_in< sc_logic > ce;
    sc_in< sc_lv<OPC_WIDTH> > opcode;
    sc_in< sc_lv<DIN0_WIDTH> > din0;
    sc_out< sc_lv<DOUT_WIDTH> > dout;
    
    SC_CTOR(FUMOUnaryOp) {
        mMCModule =
            new AESLFUMultiCycle
            <NUM_STAGE, OPC_WIDTH, DIN0_WIDTH, DOUT_WIDTH>("mu_U");

        mMCModule->opcode(opcode);
        mMCModule->din(din0);
        mMCModule->dout(dout);
        mMCModule->clk(clk);
        mMCModule->reset(reset);
        mMCModule->ce(ce);
    }

    AESLFUMultiCycle<NUM_STAGE, OPC_WIDTH, DIN0_WIDTH, DOUT_WIDTH>* mMCModule;
    
    void setComputeCore(FUComputeCore<OPC_WIDTH, DIN0_WIDTH, DOUT_WIDTH>* core) {
        mMCModule->setComputeCore(core);
    }
};

template< int NUM_STAGE,
          int DIN0_WIDTH,
          int DIN1_WIDTH,
          int DOUT_WIDTH> 
SC_MODULE (CFUBinaryOp)
{
  public:
    sc_in< sc_lv<DIN0_WIDTH> > din0;
    sc_in< sc_lv<DIN1_WIDTH> > din1;
    sc_out< sc_lv<DOUT_WIDTH> > dout;

    AESLFUMultiCycle<NUM_STAGE, 1, DIN0_WIDTH+DIN1_WIDTH, DOUT_WIDTH>*
        mMCModule;

    SC_CTOR( CFUBinaryOp ) {
        mMCModule =
            new AESLFUMultiCycle
            <NUM_STAGE, 1, DIN0_WIDTH+DIN1_WIDTH, DOUT_WIDTH>("b_u");
        //sigone.write(sc_lv<1>("1"));

        mMCModule->opcode(sigone);
        mMCModule->din(din_sig);
        mMCModule->dout(dout);
        mMCModule->clk(clk);
        mMCModule->reset(reset);
        mMCModule->ce(ce);
        
        SC_METHOD(IOConnection);
        sensitive << din0 << din1;
    }
    
    void setComputeCore(FUComputeCore<1, DIN0_WIDTH+DIN1_WIDTH, DOUT_WIDTH>*
                        core) {
        mMCModule->setComputeCore(core);
    }

    sc_signal< sc_lv<DIN0_WIDTH+DIN1_WIDTH> > din_sig;
    sc_signal< sc_lv<1> > sigone;
    sc_signal< bool > clk;
    sc_signal< sc_logic > reset;
    sc_signal< sc_logic > ce;
    
    void IOConnection() {
        sigone.write(sc_lv<1>("1"));
        sc_lv<DIN0_WIDTH+DIN1_WIDTH> din_tmp;
        din_tmp.range(0, DIN0_WIDTH-1) =
            din0.read().range(0, DIN0_WIDTH-1);
        din_tmp.range(DIN0_WIDTH, DIN0_WIDTH+DIN1_WIDTH-1) =
            din1.read().range(0, DIN1_WIDTH-1);
        din_sig.write(din_tmp);
    }
};



template< int NUM_STAGE,
          int DIN0_WIDTH,
          int DIN1_WIDTH,
          int DOUT_WIDTH> 
SC_MODULE (FUBinaryOp)
{
  public:
    sc_in< bool > clk;
    sc_in< sc_logic > reset;
    sc_in< sc_logic > ce;
    sc_in< sc_lv<DIN0_WIDTH> > din0;
    sc_in< sc_lv<DIN1_WIDTH> > din1;
    sc_out< sc_lv<DOUT_WIDTH> > dout;

    AESLFUMultiCycle<NUM_STAGE, 1, DIN0_WIDTH+DIN1_WIDTH, DOUT_WIDTH>*
        mMCModule;

    SC_CTOR( FUBinaryOp ) {
        mMCModule =
            new AESLFUMultiCycle
            <NUM_STAGE, 1, DIN0_WIDTH+DIN1_WIDTH, DOUT_WIDTH>("b_u");
        //sigone.write(sc_lv<1>("1"));

        mMCModule->opcode(sigone);
        mMCModule->din(din_sig);
        mMCModule->dout(dout);
        mMCModule->clk(clk);
        mMCModule->reset(reset);
        mMCModule->ce(ce);
        
        SC_METHOD(IOConnection);
        sensitive << din0 << din1 << clk;
    }
    
    void setComputeCore(FUComputeCore<1, DIN0_WIDTH+DIN1_WIDTH, DOUT_WIDTH>*
                        core) {
        mMCModule->setComputeCore(core);
    }

    sc_signal< sc_lv<DIN0_WIDTH+DIN1_WIDTH> > din_sig;
    sc_signal< sc_lv<1> > sigone;
    
    void IOConnection() {
        sigone.write(sc_lv<1>("1"));
        sc_lv<DIN0_WIDTH+DIN1_WIDTH> din_tmp;
        din_tmp.range(0, DIN0_WIDTH-1) =
            din0.read().range(0, DIN0_WIDTH-1);
        din_tmp.range(DIN0_WIDTH, DIN0_WIDTH+DIN1_WIDTH-1) =
            din1.read().range(0, DIN1_WIDTH-1);
        din_sig.write(din_tmp);
    }
};

template< int NUM_STAGE,
          int OPC_WIDTH, 
          int DIN0_WIDTH,
          int DIN1_WIDTH=DIN0_WIDTH,
          int DOUT_WIDTH=DIN0_WIDTH> 
SC_MODULE (CFUMOBinaryOp)
{
  public:
    sc_in< sc_lv<OPC_WIDTH> > opcode;
    sc_in< sc_lv<DIN0_WIDTH> > din0;
    sc_in< sc_lv<DIN1_WIDTH> > din1;
    sc_out< sc_lv<DOUT_WIDTH> > dout;

    AESLCFUMOComp<NUM_STAGE, OPC_WIDTH, DIN0_WIDTH+DIN1_WIDTH, DOUT_WIDTH>*
        mMCModule;

    SC_CTOR( CFUMOBinaryOp ) {
        mMCModule =
            new AESLCFUMOComp
            <NUM_STAGE, OPC_WIDTH, DIN0_WIDTH+DIN1_WIDTH, DOUT_WIDTH>("mb_U");

        mMCModule->opcode(opcode);
        mMCModule->din(din_sig);
        mMCModule->dout(dout);
        
        SC_METHOD(IOConnection);
        sensitive << din0 << din1 << opcode ;
    }
    
    void setComputeCore(FUComputeCore<OPC_WIDTH, DIN0_WIDTH+DIN1_WIDTH, DOUT_WIDTH>* core) {
        mMCModule->setComputeCore(core);
    }

    sc_signal< sc_lv<DIN0_WIDTH+DIN1_WIDTH> > din_sig;
    
    void IOConnection() {
        sc_lv<DIN0_WIDTH+DIN1_WIDTH> din_tmp;
        din_tmp.range(0, DIN0_WIDTH-1) =
            din0.read().range(0, DIN0_WIDTH-1);
        din_tmp.range(DIN0_WIDTH, DIN0_WIDTH+DIN1_WIDTH-1) =
            din1.read().range(0, DIN1_WIDTH-1);
        din_sig.write(din_tmp);
    }
};



template< int NUM_STAGE,
          int OPC_WIDTH, 
          int DIN0_WIDTH,
          int DIN1_WIDTH=DIN0_WIDTH,
          int DOUT_WIDTH=DIN0_WIDTH> 
SC_MODULE (FUMOBinaryOp)
{
  public:
    sc_in< bool > clk;
    sc_in< sc_logic > reset;
    sc_in< sc_logic > ce;
    sc_in< sc_lv<OPC_WIDTH> > opcode;
    sc_in< sc_lv<DIN0_WIDTH> > din0;
    sc_in< sc_lv<DIN1_WIDTH> > din1;
    sc_out< sc_lv<DOUT_WIDTH> > dout;

    AESLFUMultiCycle<NUM_STAGE, OPC_WIDTH, DIN0_WIDTH+DIN1_WIDTH, DOUT_WIDTH>*
        mMCModule;

    SC_CTOR( FUMOBinaryOp ) {
        mMCModule =
            new AESLFUMultiCycle
            <NUM_STAGE, OPC_WIDTH, DIN0_WIDTH+DIN1_WIDTH, DOUT_WIDTH>("mb_U");

        mMCModule->opcode(opcode);
        mMCModule->din(din_sig);
        mMCModule->dout(dout);
        mMCModule->clk(clk);
        mMCModule->reset(reset);
        mMCModule->ce(ce);
        
        SC_METHOD(IOConnection);
        sensitive << din0 << din1 << opcode << clk;
    }
    
    void setComputeCore(FUComputeCore<OPC_WIDTH, DIN0_WIDTH+DIN1_WIDTH, DOUT_WIDTH>* core) {
        mMCModule->setComputeCore(core);
    }

    sc_signal< sc_lv<DIN0_WIDTH+DIN1_WIDTH> > din_sig;
    
    void IOConnection() {
        sc_lv<DIN0_WIDTH+DIN1_WIDTH> din_tmp;
        din_tmp.range(0, DIN0_WIDTH-1) =
            din0.read().range(0, DIN0_WIDTH-1);
        din_tmp.range(DIN0_WIDTH, DIN0_WIDTH+DIN1_WIDTH-1) =
            din1.read().range(0, DIN1_WIDTH-1);
        din_sig.write(din_tmp);
    }
};


template< bool SIGNED,
          int DIN0_W,
          int DIN1_W=DIN0_W,
          int DOUT_W=DIN0_W> 
struct IntArithCoreDivRem :
    public FUComputeCore<2, DIN0_W+DIN1_W, DOUT_W>
{
    virtual sc_lv<DOUT_W>
    compute(const sc_lv<2>& opcode, const sc_lv<DIN0_W+DIN1_W>& in) {
        sc_lv<DIN0_W> in0;
        sc_lv<DIN1_W> in1;
        (in1, in0) = in;

        sc_lv<DOUT_W> undef;
    	if (!opcode.is_01() || !in.is_01()) return undef;
        bool opc = opcode[0].to_bool();

        if (!SIGNED) {
            unsigned long long val0 = in0.to_uint64();
            unsigned long long val1 = in1.to_uint64();
            if (val1 == 0) return undef;

            sc_biguint<DIN0_W> bval0 = sc_biguint<DIN0_W>(in0);
            sc_biguint<DIN1_W> bval1 = sc_biguint<DIN1_W>(in1);
            sc_biguint<DOUT_W> boutv = opc ? (bval0 % bval1) : (bval0 / bval1); 
            return sc_lv<DOUT_W>(boutv);
        } else {
            long long val0 = in0.to_int64();
            long long val1 = in1.to_int64();
            if (val1 == 0) return undef;

            sc_bigint<DIN0_W> bval0 = sc_bigint<DIN0_W>(in0);
            sc_bigint<DIN1_W> bval1 = sc_bigint<DIN1_W>(in1);
            sc_bigint<DOUT_W> boutv = opc ? (bval0 % bval1) : (bval0 / bval1); 
            return sc_lv<DOUT_W>(boutv);
        }
    }
};
    
////////////////////////////////////////////////////////////////
// Integer UDIV/UREM component.
////////////////////////////////////////////////////////////////
template<int ID,
         int NUM_STAGE,
         int DIN0_W,
         int DIN1_W,
         int DOUT_W> 
struct ACMP_udivurem_comb :
    public CFUMOBinaryOp<NUM_STAGE, 2, DIN0_W, DIN1_W, DOUT_W>
{

    ACMP_udivurem_comb(const char* mname ) :
        CFUMOBinaryOp<NUM_STAGE, 2, DIN0_W, DIN1_W, DOUT_W>(mname) {
        setComputeCore(
            new
            IntArithCoreDivRem<false, DIN0_W, DIN1_W, DOUT_W>());
    }
};


template<int ID,
         int NUM_STAGE,
         int DIN0_W,
         int DIN1_W,
         int DOUT_W> 
struct ACMP_udivurem :
    public FUMOBinaryOp<NUM_STAGE, 2, DIN0_W, DIN1_W, DOUT_W>
{

    ACMP_udivurem(const char* mname ) :
        FUMOBinaryOp<NUM_STAGE, 2, DIN0_W, DIN1_W, DOUT_W>(mname) {
        setComputeCore(
            new
            IntArithCoreDivRem<false, DIN0_W, DIN1_W, DOUT_W>());
    }
};



////////////////////////////////////////////////////////////////
// Integer SDIV/SREM component.
////////////////////////////////////////////////////////////////
template<int ID,
         int NUM_STAGE,
         int DIN0_W,
         int DIN1_W,
         int DOUT_W> 
struct ACMP_sdivsrem_comb :
    public CFUMOBinaryOp<NUM_STAGE, 2, DIN0_W, DIN1_W, DOUT_W>
{

    ACMP_sdivsrem_comb(const char* mname ) :
        CFUMOBinaryOp<NUM_STAGE, 2, DIN0_W, DIN1_W, DOUT_W>(mname) {
        setComputeCore(
            new IntArithCoreDivRem<true, DIN0_W, DIN1_W, DOUT_W>());
    }
};


template<int ID,
         int NUM_STAGE,
         int DIN0_W,
         int DIN1_W,
         int DOUT_W> 
struct ACMP_sdivsrem :
    public FUMOBinaryOp<NUM_STAGE, 2, DIN0_W, DIN1_W, DOUT_W>
{

    ACMP_sdivsrem(const char* mname ) :
        FUMOBinaryOp<NUM_STAGE, 2, DIN0_W, DIN1_W, DOUT_W>(mname) {
        setComputeCore(
            new IntArithCoreDivRem<true, DIN0_W, DIN1_W, DOUT_W>());
    }
};



////////////////////////////////////////////////////////////////
// Integer UDIV component.
////////////////////////////////////////////////////////////////
template<int ID, int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_udiv_comb :
    public AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>
{
public:

    ACMP_udiv_comb(const char* mname) :
        AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
         
    virtual void sanity_check() {
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) {
    	if (!in0.is_01() || !in1.is_01()) return sc_lv<DOUT_WIDTH>();

        unsigned long long ival1 = (in1).to_uint64();

        if (ival1 == 0)
            return sc_lv<DOUT_WIDTH>();
        
        sc_biguint<DIN0_WIDTH> bval0 = sc_biguint<DIN0_WIDTH>(in0);
        sc_biguint<DIN1_WIDTH> bval1 = sc_biguint<DIN1_WIDTH>(in1);
        
        sc_biguint<DOUT_WIDTH> boutv = bval0 / bval1;

        return sc_lv<DOUT_WIDTH>(boutv);
    }

};


template<int ID, int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_udiv :
    public AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>
{
public:

    ACMP_udiv(const char* mname) :
        AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
         
    virtual void sanity_check() {
        //assert(DIN0_WIDTH <= 64);
        // assert(DIN0_WIDTH == DOUT_WIDTH);
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) {
    	if (!in0.is_01() || !in1.is_01()) return sc_lv<DOUT_WIDTH>();

        unsigned long long ival1 = (in1).to_uint64();
            
        if (ival1 == 0)
            return sc_lv<DOUT_WIDTH>();
        
        sc_biguint<DIN0_WIDTH> bval0 = sc_biguint<DIN0_WIDTH>(in0);
        sc_biguint<DIN1_WIDTH> bval1 = sc_biguint<DIN1_WIDTH>(in1);
        
        sc_biguint<DOUT_WIDTH> boutv = bval0 / bval1;

        return sc_lv<DOUT_WIDTH>(boutv);
    }

};

template<int ID, int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_udiv_seq :
    public AESLFUComp_seq<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>
{
public:

    ACMP_udiv_seq(const char* mname) :
        AESLFUComp_seq<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
         
    virtual void sanity_check() {
        //assert(DIN0_WIDTH <= 64);
        // assert(DIN0_WIDTH == DOUT_WIDTH);
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) {
    	if (!in0.is_01() || !in1.is_01()) return sc_lv<DOUT_WIDTH>();

        unsigned long long ival1 = (in1).to_uint64();
            
        if (ival1 == 0)
            return sc_lv<DOUT_WIDTH>();
        
        sc_biguint<DIN0_WIDTH> bval0 = sc_biguint<DIN0_WIDTH>(in0);
        sc_biguint<DIN1_WIDTH> bval1 = sc_biguint<DIN1_WIDTH>(in1);
        
        sc_biguint<DOUT_WIDTH> boutv = bval0 / bval1;

        return sc_lv<DOUT_WIDTH>(boutv);
    }

};


template<int ID, int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_sdiv_comb :
    public AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>
{
public:

    ACMP_sdiv_comb(const char* mname) :
        AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
         
    virtual void sanity_check() {
        //assert(DIN0_WIDTH <= 64);
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) {
    	if (!in0.is_01() || !in1.is_01()) return sc_lv<DOUT_WIDTH>();
        
        int ival1 = (in1).to_int();
        if (ival1 == 0)
            return sc_lv<DOUT_WIDTH>();
        
        sc_bigint<DIN0_WIDTH> bval0 = sc_bigint<DIN0_WIDTH>(in0);
        sc_bigint<DIN1_WIDTH> bval1 = sc_bigint<DIN1_WIDTH>(in1);
        
        sc_bigint<DOUT_WIDTH> boutv = bval0 / bval1;

        return sc_lv<DOUT_WIDTH>(boutv);
    }

};


template<int ID, int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_sdiv :
    public AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>
{
public:

    ACMP_sdiv(const char* mname) :
        AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
         
    virtual void sanity_check() {
        //assert(DIN0_WIDTH <= 64);
        //assert(DIN0_WIDTH == DOUT_WIDTH);
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) {
    	if (!in0.is_01() || !in1.is_01()) return sc_lv<DOUT_WIDTH>();

        int ival1 = (in1).to_int();
        if (ival1 == 0)
            return sc_lv<DOUT_WIDTH>();
        
        sc_bigint<DIN0_WIDTH> bval0 = sc_bigint<DIN0_WIDTH>(in0);
        sc_bigint<DIN1_WIDTH> bval1 = sc_bigint<DIN1_WIDTH>(in1);
        
        sc_bigint<DOUT_WIDTH> boutv = bval0 / bval1;

        return sc_lv<DOUT_WIDTH>(boutv);
    }

};

template<int ID, int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_sdiv_seq :
    public AESLFUComp_seq<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>
{
public:

    ACMP_sdiv_seq(const char* mname) :
        AESLFUComp_seq<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
         
    virtual void sanity_check() {
        //assert(DIN0_WIDTH <= 64);
        //assert(DIN0_WIDTH == DOUT_WIDTH);
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) {
    	if (!in0.is_01() || !in1.is_01()) return sc_lv<DOUT_WIDTH>();

        int ival1 = (in1).to_int();
        if (ival1 == 0)
            return sc_lv<DOUT_WIDTH>();
        
        sc_bigint<DIN0_WIDTH> bval0 = sc_bigint<DIN0_WIDTH>(in0);
        sc_bigint<DIN1_WIDTH> bval1 = sc_bigint<DIN1_WIDTH>(in1);
        
        sc_bigint<DOUT_WIDTH> boutv = bval0 / bval1;

        return sc_lv<DOUT_WIDTH>(boutv);
    }

};


template<int DIN0_WIDTH, int DIN1_WIDTH, int DOUT_WIDTH> 
sc_lv<DOUT_WIDTH> compute_mul_ss(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) 
{
    if (!in0.is_01() || !in1.is_01()) return sc_lv<DOUT_WIDTH>();

    sc_bigint<DOUT_WIDTH> outi = sc_bigint<DIN0_WIDTH>(in0) * sc_bigint<DIN1_WIDTH>(in1);

    return sc_lv<DOUT_WIDTH>(outi);
}


template<int DIN0_WIDTH, int DIN1_WIDTH, int DOUT_WIDTH> 
sc_lv<DOUT_WIDTH> compute_mul_su(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) 
{
    if (!in0.is_01() || !in1.is_01()) return sc_lv<DOUT_WIDTH>();

    sc_bigint<DOUT_WIDTH> outi = sc_bigint<DIN0_WIDTH>(in0) * sc_biguint<DIN1_WIDTH>(in1);

    return sc_lv<DOUT_WIDTH>(outi);
}


template<int DIN0_WIDTH, int DIN1_WIDTH, int DOUT_WIDTH> 
sc_lv<DOUT_WIDTH> compute_mul_us(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) 
{
    if (!in0.is_01() || !in1.is_01()) return sc_lv<DOUT_WIDTH>();

    sc_bigint<DOUT_WIDTH> outi = sc_biguint<DIN0_WIDTH>(in0) * sc_bigint<DIN1_WIDTH>(in1);
    
    return sc_lv<DOUT_WIDTH>(outi);
}


template<int DIN0_WIDTH, int DIN1_WIDTH, int DOUT_WIDTH> 
sc_lv<DOUT_WIDTH> compute_mul_uu(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) 
{
    if (!in0.is_01() || !in1.is_01()) return sc_lv<DOUT_WIDTH>();

    sc_biguint<DOUT_WIDTH> outi = sc_biguint<DIN0_WIDTH>(in0) * sc_biguint<DIN1_WIDTH>(in1);
    
    return sc_lv<DOUT_WIDTH>(outi);
}


template<int ID, int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_mul_ss :
    public AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>
{
public:

    ACMP_mul_ss(const char* mname) :
        AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
         
    virtual void sanity_check() {
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) {
        return compute_mul_ss<DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(in0, in1);
    }

};

template<int ID, int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_mul_su :
    public AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>
{
public:

    ACMP_mul_su(const char* mname) :
        AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
         
    virtual void sanity_check() {
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) {
        return compute_mul_su<DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(in0, in1);
    }

};


template<int ID, int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_mul_us :
    public AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>
{
public:

    ACMP_mul_us(const char* mname) :
        AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
         
    virtual void sanity_check() {
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) {
        return compute_mul_us<DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(in0, in1);
    }

};


template<int ID, int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_mul_uu :
    public AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>
{
public:

    ACMP_mul_uu(const char* mname) :
        AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
         
    virtual void sanity_check() {
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) {
        return compute_mul_uu<DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(in0, in1);
    }
};


template<int ID, int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_smul_ss :
    public AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>
{
public:

    ACMP_smul_ss(const char* mname) :
        AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
         
    virtual void sanity_check() {
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) {
        return compute_mul_ss<DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(in0, in1);
    }

};

template<int ID, int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_smul_su :
    public AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>
{
public:

    ACMP_smul_su(const char* mname) :
        AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
         
    virtual void sanity_check() {
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) {
        return compute_mul_su<DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(in0, in1);
    }

};


template<int ID, int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_smul_us :
    public AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>
{
public:

    ACMP_smul_us(const char* mname) :
        AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
         
    virtual void sanity_check() {
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) {
        return compute_mul_us<DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(in0, in1);
    }

};


template<int ID, int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_smul_uu :
    public AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>
{
public:

    ACMP_smul_uu(const char* mname) :
        AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
         
    virtual void sanity_check() {
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) {
        return compute_mul_uu<DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(in0, in1);
    }
};


template<int ID, int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_add_comb :
    public AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>
{
public:

    typedef sc_bigint<DIN0_WIDTH> OpDataTypeT;
    
    ACMP_add_comb(const char* mname) :
        AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
         
    virtual void sanity_check() {
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) {
       if(in0.is_01() && in1.is_01()) {
          OpDataTypeT ival0 = OpDataTypeT(in0); 
          OpDataTypeT ival1 = OpDataTypeT(in1);
          OpDataTypeT outi = ival0 + ival1;
          return sc_lv<DOUT_WIDTH>(outi);
       }
       else
          return sc_lv<DOUT_WIDTH>(SC_LOGIC_X);
    }

};


template<int ID, int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_add :
    public AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>
{
public:
    typedef sc_bigint<DIN0_WIDTH> OpDataTypeT;

    ACMP_add(const char* mname) :
        AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
    
    virtual void sanity_check() {
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) {
       if(in0.is_01() && in1.is_01()) {
           OpDataTypeT ival0 = OpDataTypeT(in0); 
           OpDataTypeT ival1 = OpDataTypeT(in1);
           OpDataTypeT outi = ival0 + ival1;
           return sc_lv<DOUT_WIDTH>(outi);           
       }
       else
           return sc_lv<DOUT_WIDTH>(SC_LOGIC_X);
    }

};


template<int ID, int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH>
struct ACMP_sub_comb :
    public AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>
{
public:
    typedef sc_bigint<DIN0_WIDTH> OpDataTypeT;

    ACMP_sub_comb(const char* mname) :
        AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }

    virtual void sanity_check() {
    }

    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) {
       if(in0.is_01() && in1.is_01()) {
          OpDataTypeT ival0 = OpDataTypeT(in0); 
          OpDataTypeT ival1 = OpDataTypeT(in1);
          OpDataTypeT outi = ival0 - ival1;
          return sc_lv<DOUT_WIDTH>(outi);
       }
       else
           return sc_lv<DOUT_WIDTH>(SC_LOGIC_X);
    }

};


template<int ID, int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH>
struct ACMP_sub :
    public AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>
{
public:
    typedef sc_bigint<DIN0_WIDTH> OpDataTypeT;

    ACMP_sub(const char* mname) :
        AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }

    virtual void sanity_check() {
    }

    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) {
       if(in0.is_01() && in1.is_01()) {
           OpDataTypeT ival0 = OpDataTypeT(in0); 
           OpDataTypeT ival1 = OpDataTypeT(in1);
           OpDataTypeT outi = ival0 - ival1;
           return sc_lv<DOUT_WIDTH>(outi);
       }
       else
           return sc_lv<DOUT_WIDTH>(SC_LOGIC_X);
    }

};


template<int ID, int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_urem_comb :
    public AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>
{
public:

    ACMP_urem_comb(const char* mname) :
        AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
         
    virtual void sanity_check() {
        //assert(DIN0_WIDTH <= 32);
        //   assert(DIN1_WIDTH == DOUT_WIDTH);
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) {
    	if (!in0.is_01() || !in1.is_01()) return sc_lv<DOUT_WIDTH>();
        unsigned int ival0 = (in0).to_uint();
        unsigned int ival1 = (in1).to_uint();
            
        if (ival1 == 0)
            return sc_lv<DOUT_WIDTH>();
        
        sc_biguint<DIN0_WIDTH> bval0 = sc_biguint<DIN0_WIDTH>(in0);
        sc_biguint<DIN1_WIDTH> bval1 = sc_biguint<DIN1_WIDTH>(in1);
        
        sc_biguint<DOUT_WIDTH> boutv = bval0 % bval1;

        return sc_lv<DOUT_WIDTH>(boutv);
    }

};


template<int ID, int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_urem :
    public AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>
{
public:

    ACMP_urem(const char* mname) :
        AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
         
    virtual void sanity_check() {
        //assert(DIN0_WIDTH <= 64);
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) {
    	if (!in0.is_01() || !in1.is_01()) return sc_lv<DOUT_WIDTH>();
        unsigned int ival0 = (in0).to_uint();
        unsigned int ival1 = (in1).to_uint();
            
        if (ival1 == 0)
            return sc_lv<DOUT_WIDTH>();
        
        sc_biguint<DIN0_WIDTH> bval0 = sc_biguint<DIN0_WIDTH>(in0);
        sc_biguint<DIN1_WIDTH> bval1 = sc_biguint<DIN1_WIDTH>(in1);
        
        sc_biguint<DOUT_WIDTH> boutv = bval0 % bval1;

        return sc_lv<DOUT_WIDTH>(boutv);
    }

};

template<int ID, int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_urem_seq :
    public AESLFUComp_seq<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>
{
public:

    ACMP_urem_seq(const char* mname) :
        AESLFUComp_seq<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
         
    virtual void sanity_check() {
        //assert(DIN0_WIDTH <= 64);
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) {
    	if (!in0.is_01() || !in1.is_01()) return sc_lv<DOUT_WIDTH>();
        unsigned int ival0 = (in0).to_uint();
        unsigned int ival1 = (in1).to_uint();
            
        if (ival1 == 0)
            return sc_lv<DOUT_WIDTH>();
        
        sc_biguint<DIN0_WIDTH> bval0 = sc_biguint<DIN0_WIDTH>(in0);
        sc_biguint<DIN1_WIDTH> bval1 = sc_biguint<DIN1_WIDTH>(in1);
        
        sc_biguint<DOUT_WIDTH> boutv = bval0 % bval1;

        return sc_lv<DOUT_WIDTH>(boutv);
    }

};


template<int ID, int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_srem_comb :
    public AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>
{
public:

    ACMP_srem_comb(const char* mname) :
        AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
         
    virtual void sanity_check() {
        //assert(DIN0_WIDTH <= 64);
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) {
    	if (!in0.is_01() || !in1.is_01()) return sc_lv<DOUT_WIDTH>();

        int ival1 = (in1).to_int();
        if (ival1 == 0)
            return sc_lv<DOUT_WIDTH>();
        
        sc_bigint<DIN0_WIDTH> bval0 = sc_bigint<DIN0_WIDTH>(in0);
        sc_bigint<DIN1_WIDTH> bval1 = sc_bigint<DIN1_WIDTH>(in1);
        
        sc_bigint<DOUT_WIDTH> boutv = bval0 % bval1;

        return sc_lv<DOUT_WIDTH>(boutv);
    }

};


template<int ID, int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_srem :
    public AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>
{
public:

    ACMP_srem(const char* mname) :
        AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
         
    virtual void sanity_check() {
        //assert(DIN0_WIDTH <= 64);
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) {
    	if (!in0.is_01() || !in1.is_01()) return sc_lv<DOUT_WIDTH>();

        int ival1 = (in1).to_int();
        if (ival1 == 0)
            return sc_lv<DOUT_WIDTH>();
        
        sc_bigint<DIN0_WIDTH> bval0 = sc_bigint<DIN0_WIDTH>(in0);
        sc_bigint<DIN1_WIDTH> bval1 = sc_bigint<DIN1_WIDTH>(in1);
        
        sc_bigint<DOUT_WIDTH> boutv = bval0 % bval1;

        return sc_lv<DOUT_WIDTH>(boutv);
    }

};

template<int ID, int NUM_STAGE,
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_srem_seq :
    public AESLFUComp_seq<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>
{
public:

    ACMP_srem_seq(const char* mname) :
        AESLFUComp_seq<NUM_STAGE, DIN0_WIDTH, DIN1_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
         
    virtual void sanity_check() {
        //assert(DIN0_WIDTH <= 64);
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN1_WIDTH>& in1) {
    	if (!in0.is_01() || !in1.is_01()) return sc_lv<DOUT_WIDTH>();

        int ival1 = (in1).to_int();
        if (ival1 == 0)
            return sc_lv<DOUT_WIDTH>();
        
        sc_bigint<DIN0_WIDTH> bval0 = sc_bigint<DIN0_WIDTH>(in0);
        sc_bigint<DIN1_WIDTH> bval1 = sc_bigint<DIN1_WIDTH>(in1);
        
        sc_bigint<DOUT_WIDTH> boutv = bval0 % bval1;

        return sc_lv<DOUT_WIDTH>(boutv);
    }

};

// shl
template<int ID, int NUM_STAGE, 
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_shl_comb :
    public AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN0_WIDTH, DOUT_WIDTH>
{
public:

    typedef sc_biguint<DIN0_WIDTH> OpDataTypeT1;
    typedef sc_biguint<DIN1_WIDTH> OpDataTypeT2;
    
    ACMP_shl_comb(const char* mname) :
        AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN0_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
         
    virtual void sanity_check() {
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN0_WIDTH>& in1) {
       if(in0.is_01() && in1.is_01()) {
        OpDataTypeT1 ival0 = OpDataTypeT1(in0); 
        OpDataTypeT2 ival1 = sc_bv<DIN1_WIDTH>(in1.range(DIN1_WIDTH-1, 0));
        if(ival1>DIN0_WIDTH) return sc_lv<DOUT_WIDTH>(0);
        OpDataTypeT1 outi = ival0 << ival1;
        return sc_lv<DOUT_WIDTH>(outi);
       }
       else
           return sc_lv<DOUT_WIDTH>(SC_LOGIC_X);
    }

};


template<int ID, int NUM_STAGE, 
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_shl :
    public AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN0_WIDTH, DOUT_WIDTH>
{
public:
    typedef sc_biguint<DIN0_WIDTH> OpDataTypeT1;
    typedef sc_biguint<DIN1_WIDTH> OpDataTypeT2;

    ACMP_shl(const char* mname) :
        AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN0_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
    
    virtual void sanity_check() {
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN0_WIDTH>& in1) {
       if(in0.is_01() && in1.is_01()) {
           OpDataTypeT1 ival0 = OpDataTypeT1(in0); 
           OpDataTypeT2 ival1 = sc_bv<DIN1_WIDTH>(in1.range(DIN1_WIDTH-1, 0));
           if(ival1>DIN0_WIDTH) return sc_lv<DOUT_WIDTH>(0);
           OpDataTypeT1 outi = ival0 << ival1;
           return sc_lv<DOUT_WIDTH>(outi);           
       }
       else
           return sc_lv<DOUT_WIDTH>(SC_LOGIC_X);
    }

};

// lshr
template<int ID, int NUM_STAGE, 
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_lshr_comb :
    public AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN0_WIDTH, DOUT_WIDTH>
{
public:

    typedef sc_biguint<DIN0_WIDTH> OpDataTypeT1;
    typedef sc_biguint<DIN1_WIDTH> OpDataTypeT2;
    
    ACMP_lshr_comb(const char* mname) :
        AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN0_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
         
    virtual void sanity_check() {
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN0_WIDTH>& in1) {
       if(in0.is_01() && in1.is_01()) {
         OpDataTypeT1 ival0 = OpDataTypeT1(in0); 
         OpDataTypeT2 ival1 = sc_bv<DIN1_WIDTH>(in1.range(DIN1_WIDTH-1, 0));
         OpDataTypeT1 outi = ival0 >> ival1;
         return sc_lv<DOUT_WIDTH>(outi);
       }
       else
           return sc_lv<DOUT_WIDTH>(SC_LOGIC_X);
    }

};


template<int ID, int NUM_STAGE, 
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_lshr :
    public AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN0_WIDTH, DOUT_WIDTH>
{
public:
    typedef sc_biguint<DIN0_WIDTH> OpDataTypeT1;
    typedef sc_biguint<DIN1_WIDTH> OpDataTypeT2;

    ACMP_lshr(const char* mname) :
        AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN0_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
    
    virtual void sanity_check() {
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN0_WIDTH>& in1) {
       if(in0.is_01() && in1.is_01()) {
           OpDataTypeT1 ival0 = OpDataTypeT1(in0); 
           OpDataTypeT2 ival1 = sc_bv<DIN1_WIDTH>(in1.range(DIN1_WIDTH-1, 0));
           OpDataTypeT1 outi = ival0 >> ival1;
           return sc_lv<DOUT_WIDTH>(outi);           
       }
       else
           return sc_lv<DOUT_WIDTH>(SC_LOGIC_X);
    }

};

// ashr
template<int ID, int NUM_STAGE, 
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_ashr_comb :
    public AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN0_WIDTH, DOUT_WIDTH>
{
public:

    typedef sc_bigint<DIN0_WIDTH> OpDataTypeT1;
    typedef sc_biguint<DIN1_WIDTH> OpDataTypeT2;
    
    ACMP_ashr_comb(const char* mname) :
        AESLCFUComp<NUM_STAGE, DIN0_WIDTH, DIN0_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
         
    virtual void sanity_check() {
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN0_WIDTH>& in1) {
       if(in0.is_01() && in1.is_01()) {
         OpDataTypeT1 ival0 = OpDataTypeT1(in0); 
         OpDataTypeT2 ival1 = sc_bv<DIN1_WIDTH>(in1.range(DIN1_WIDTH-1, 0));
         OpDataTypeT1 outi = ival0 >> ival1;
         return sc_lv<DOUT_WIDTH>(outi);
       }
       else
           return sc_lv<DOUT_WIDTH>(SC_LOGIC_X);
    }

};


template<int ID, int NUM_STAGE, 
         int DIN0_WIDTH, int DIN1_WIDTH=DIN0_WIDTH,
         int DOUT_WIDTH=DIN0_WIDTH> 
struct ACMP_ashr :
    public AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN0_WIDTH, DOUT_WIDTH>
{
public:
    typedef sc_bigint<DIN0_WIDTH> OpDataTypeT1;
    typedef sc_biguint<DIN1_WIDTH> OpDataTypeT2;

    ACMP_ashr(const char* mname) :
        AESLFUComp<NUM_STAGE, DIN0_WIDTH, DIN0_WIDTH, DOUT_WIDTH>(mname) {
        sanity_check();
    }
    
    virtual void sanity_check() {
    }
    
    virtual sc_lv<DOUT_WIDTH>
    compute(const sc_lv<DIN0_WIDTH>& in0, const sc_lv<DIN0_WIDTH>& in1) {
       if(in0.is_01() && in1.is_01()) {
           OpDataTypeT1 ival0 = OpDataTypeT1(in0); 
           OpDataTypeT2 ival1 = sc_bv<DIN1_WIDTH>(in1.range(DIN1_WIDTH-1, 0));
           OpDataTypeT1 outi = ival0 >> ival1;
           return sc_lv<DOUT_WIDTH>(outi);           
       }
       else
           return sc_lv<DOUT_WIDTH>(SC_LOGIC_X);
    }

};

#endif 




