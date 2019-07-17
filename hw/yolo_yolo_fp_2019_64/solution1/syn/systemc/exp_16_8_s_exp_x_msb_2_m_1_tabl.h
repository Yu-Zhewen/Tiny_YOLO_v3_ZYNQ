// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __exp_16_8_s_exp_x_msb_2_m_1_tabl_H__
#define __exp_16_8_s_exp_x_msb_2_m_1_tabl_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct exp_16_8_s_exp_x_msb_2_m_1_tabl_ram : public sc_core::sc_module {

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


   SC_CTOR(exp_16_8_s_exp_x_msb_2_m_1_tabl_ram) {
        ram[0] = "0b0000000000000000000000000";
        ram[1] = "0b0000010000001000000010101";
        ram[2] = "0b0000100000100000010101100";
        ram[3] = "0b0000110001001001001000111";
        ram[4] = "0b0001000010000010101101011";
        ram[5] = "0b0001010011001101010100000";
        ram[6] = "0b0001100100101001001101110";
        ram[7] = "0b0001110110010110101100010";
        ram[8] = "0b0010001000010110000001001";
        ram[9] = "0b0010011010100111011110010";
        ram[10] = "0b0010101101001011010110001";
        ram[11] = "0b0011000000000001111011010";
        ram[12] = "0b0011010011001011100000011";
        ram[13] = "0b0011100110101000011000101";
        ram[14] = "0b0011111010011000110111101";
        ram[15] = "0b0100001110011101010001000";
        ram[16] = "0b0100100010110101111001000";
        ram[17] = "0b0100110111100011000011110";
        ram[18] = "0b0101001100100101000110000";
        ram[19] = "0b0101100001111100010101000";
        ram[20] = "0b0101110111101001000101111";
        ram[21] = "0b0110001101101011101110011";
        ram[22] = "0b0110100100000100100100110";
        ram[23] = "0b0110111010110011111111001";
        ram[24] = "0b0111010001111010010100010";
        ram[25] = "0b0111101001010111111011100";
        ram[26] = "0b1000000001001101001100000";
        ram[27] = "0b1000011001011010011101111";
        ram[28] = "0b1000110010000000001001001";
        ram[29] = "0b1001001010111110100110011";
        ram[30] = "0b1001100100010110001110110";
        ram[31] = "0b1001111110000111011011101";


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


SC_MODULE(exp_16_8_s_exp_x_msb_2_m_1_tabl) {


static const unsigned DataWidth = 25;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


exp_16_8_s_exp_x_msb_2_m_1_tabl_ram* meminst;


SC_CTOR(exp_16_8_s_exp_x_msb_2_m_1_tabl) {
meminst = new exp_16_8_s_exp_x_msb_2_m_1_tabl_ram("exp_16_8_s_exp_x_msb_2_m_1_tabl_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~exp_16_8_s_exp_x_msb_2_m_1_tabl() {
    delete meminst;
}


};//endmodule
#endif
