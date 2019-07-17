// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __exp_16_8_s_f_x_lsb_table_V_H__
#define __exp_16_8_s_f_x_lsb_table_V_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct exp_16_8_s_f_x_lsb_table_V_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 11;
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


   SC_CTOR(exp_16_8_s_f_x_lsb_table_V_ram) {
        ram[0] = "0b00000000000";
        ram[1] = "0b00000000010";
        ram[2] = "0b00000001000";
        ram[3] = "0b00000010010";
        ram[4] = "0b00000100000";
        ram[5] = "0b00000110010";
        ram[6] = "0b00001001000";
        ram[7] = "0b00001100010";
        ram[8] = "0b00010000000";
        ram[9] = "0b00010100010";
        ram[10] = "0b00011001001";
        ram[11] = "0b00011110011";
        ram[12] = "0b00100100001";
        ram[13] = "0b00101010011";
        ram[14] = "0b00110001001";
        ram[15] = "0b00111000011";
        ram[16] = "0b01000000010";
        ram[17] = "0b01001000100";
        ram[18] = "0b01010001010";
        ram[19] = "0b01011010100";
        ram[20] = "0b01100100011";
        ram[21] = "0b01101110101";
        ram[22] = "0b01111001100";
        ram[23] = "0b10000100110";
        ram[24] = "0b10010000101";
        ram[25] = "0b10011100111";
        ram[26] = "0b10101001110";
        ram[27] = "0b10110111001";
        ram[28] = "0b11000100111";
        ram[29] = "0b11010011010";
        ram[30] = "0b11100010001";
        ram[31] = "0b11110001100";


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


SC_MODULE(exp_16_8_s_f_x_lsb_table_V) {


static const unsigned DataWidth = 11;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


exp_16_8_s_f_x_lsb_table_V_ram* meminst;


SC_CTOR(exp_16_8_s_f_x_lsb_table_V) {
meminst = new exp_16_8_s_f_x_lsb_table_V_ram("exp_16_8_s_f_x_lsb_table_V_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~exp_16_8_s_f_x_lsb_table_V() {
    delete meminst;
}


};//endmodule
#endif
