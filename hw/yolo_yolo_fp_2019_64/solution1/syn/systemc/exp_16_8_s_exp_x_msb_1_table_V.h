// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __exp_16_8_s_exp_x_msb_1_table_V_H__
#define __exp_16_8_s_exp_x_msb_1_table_V_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct exp_16_8_s_exp_x_msb_1_table_V_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 25;
  static const unsigned AddressRange = 32;
  static const unsigned AddressWidth = 5;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(exp_16_8_s_exp_x_msb_1_table_V_ram) {
        ram[0] = "0b0000000000100000000000000";
        ram[1] = "0b0000000000110100110000101";
        ram[2] = "0b0000000001010110111111000";
        ram[3] = "0b0000000010001111011010100";
        ram[4] = "0b0000000011101100011100110";
        ram[5] = "0b0000000110000101110101110";
        ram[6] = "0b0000001010000010101111001";
        ram[7] = "0b0000010000100011101100100";
        ram[8] = "0b0000011011010011001001000";
        ram[9] = "0b0000101101000000100011001";
        ram[10] = "0b0001001010001101001110001";
        ram[11] = "0b0001111010010110001001001";
        ram[12] = "0b0011001001101101101110001";
        ram[13] = "0b0101001100100100100010001";
        ram[14] = "0b1000100100010100010000110";
        ram[15] = "0b1110001000000001010110111";
        ram[16] = "0b0000000000000000000000101";
        ram[17] = "0b0000000000000000000001001";
        ram[18] = "0b0000000000000000000001111";
        ram[19] = "0b0000000000000000000011001";
        ram[20] = "0b0000000000000000000101001";
        ram[21] = "0b0000000000000000001000011";
        ram[22] = "0b0000000000000000001101110";
        ram[23] = "0b0000000000000000010110110";
        ram[24] = "0b0000000000000000100101100";
        ram[25] = "0b0000000000000000111101111";
        ram[26] = "0b0000000000000001100110000";
        ram[27] = "0b0000000000000010101000001";
        ram[28] = "0b0000000000000100010101001";
        ram[29] = "0b0000000000000111001001000";
        ram[30] = "0b0000000000001011110001011";
        ram[31] = "0b0000000000010011011010001";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(exp_16_8_s_exp_x_msb_1_table_V) {


static const unsigned DataWidth = 25;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


exp_16_8_s_exp_x_msb_1_table_V_ram* meminst;


SC_CTOR(exp_16_8_s_exp_x_msb_1_table_V) {
meminst = new exp_16_8_s_exp_x_msb_1_table_V_ram("exp_16_8_s_exp_x_msb_1_table_V_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~exp_16_8_s_exp_x_msb_1_table_V() {
    delete meminst;
}


};//endmodule
#endif
