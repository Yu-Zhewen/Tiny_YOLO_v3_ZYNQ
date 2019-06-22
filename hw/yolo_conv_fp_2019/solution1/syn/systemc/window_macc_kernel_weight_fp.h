// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __window_macc_kernel_weight_fp_H__
#define __window_macc_kernel_weight_fp_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct window_macc_kernel_weight_fp_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 14;
  static const unsigned AddressRange = 432;
  static const unsigned AddressWidth = 9;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in <sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in <sc_lv<AddressWidth> > address2;
sc_core::sc_in <sc_logic> ce2;
sc_core::sc_out <sc_lv<DataWidth> > q2;
sc_core::sc_in <sc_lv<AddressWidth> > address3;
sc_core::sc_in <sc_logic> ce3;
sc_core::sc_out <sc_lv<DataWidth> > q3;
sc_core::sc_in <sc_lv<AddressWidth> > address4;
sc_core::sc_in <sc_logic> ce4;
sc_core::sc_out <sc_lv<DataWidth> > q4;
sc_core::sc_in <sc_lv<AddressWidth> > address5;
sc_core::sc_in <sc_logic> ce5;
sc_core::sc_out <sc_lv<DataWidth> > q5;
sc_core::sc_in <sc_lv<AddressWidth> > address6;
sc_core::sc_in <sc_logic> ce6;
sc_core::sc_out <sc_lv<DataWidth> > q6;
sc_core::sc_in <sc_lv<AddressWidth> > address7;
sc_core::sc_in <sc_logic> ce7;
sc_core::sc_out <sc_lv<DataWidth> > q7;
sc_core::sc_in <sc_lv<AddressWidth> > address8;
sc_core::sc_in <sc_logic> ce8;
sc_core::sc_out <sc_lv<DataWidth> > q8;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(window_macc_kernel_weight_fp_ram) {
        ram[0] = "0b00000110000111";
        ram[1] = "0b00001101011101";
        ram[2] = "0b00000111010001";
        ram[3] = "0b00010000000111";
        ram[4] = "0b11111000101100";
        ram[5] = "0b11110001001110";
        ram[6] = "0b11111111100001";
        ram[7] = "0b11100101000000";
        ram[8] = "0b11111100000110";
        ram[9] = "0b00000110000111";
        ram[10] = "0b00001010001010";
        ram[11] = "0b00000000000010";
        ram[12] = "0b00001000111110";
        ram[13] = "0b11110100100010";
        ram[14] = "0b11101110011000";
        ram[15] = "0b00000001101101";
        ram[16] = "0b11101101010001";
        ram[17] = "0b00000000101101";
        ram[18] = "0b11110110100101";
        ram[19] = "0b11111111111111";
        ram[20] = "0b11111011111100";
        ram[21] = "0b00000000000000";
        ram[22] = "0b11111111111110";
        ram[23] = "0b11111100100101";
        ram[24] = "0b11111111010011";
        ram[25] = "0b11111001101110";
        ram[26] = "0b00000010000111";
        ram[27] = "0b11101100111010";
        ram[28] = "0b11110111110100";
        ram[29] = "0b00100010001100";
        ram[30] = "0b00001000101110";
        ram[31] = "0b00000011011100";
        ram[32] = "0b11110000111111";
        ram[33] = "0b00001100010111";
        ram[34] = "0b00001111110001";
        ram[35] = "0b11101111110011";
        ram[36] = "0b00000110000111";
        ram[37] = "0b11100110100011";
        ram[38] = "0b00100010000011";
        ram[39] = "0b11011100001100";
        ram[40] = "0b00010100010101";
        ram[41] = "0b11110100001000";
        ram[42] = "0b00100010111110";
        ram[43] = "0b11111100100100";
        ram[44] = "0b00001011100110";
        ram[45] = "0b00100010101000";
        ram[46] = "0b00010010010011";
        ram[47] = "0b11001101111001";
        ram[48] = "0b00001000111011";
        ram[49] = "0b00100111011011";
        ram[50] = "0b00010000100110";
        ram[51] = "0b11101011010101";
        ram[52] = "0b11100100001110";
        ram[53] = "0b00001001110000";
        ram[54] = "0b00000001011010";
        ram[55] = "0b00000011001100";
        ram[56] = "0b00000000101011";
        ram[57] = "0b00000011000010";
        ram[58] = "0b00000011100101";
        ram[59] = "0b00000001011101";
        ram[60] = "0b00000001000001";
        ram[61] = "0b00000010000101";
        ram[62] = "0b00000000001110";
        ram[63] = "0b00000001000000";
        ram[64] = "0b00000100010100";
        ram[65] = "0b00000010111111";
        ram[66] = "0b00000001111001";
        ram[67] = "0b00000011010010";
        ram[68] = "0b00000010100111";
        ram[69] = "0b00000001100011";
        ram[70] = "0b00000010101101";
        ram[71] = "0b00000001000010";
        ram[72] = "0b11111100100101";
        ram[73] = "0b11111101010010";
        ram[74] = "0b11111110100101";
        ram[75] = "0b11111000111010";
        ram[76] = "0b11110111000001";
        ram[77] = "0b11111001000001";
        ram[78] = "0b11111101111110";
        ram[79] = "0b11111101001111";
        ram[80] = "0b11111100000001";
        ram[81] = "0b00000011100110";
        ram[82] = "0b00000100000000";
        ram[83] = "0b11111111101010";
        ram[84] = "0b00001011000001";
        ram[85] = "0b00001100101110";
        ram[86] = "0b00000110101001";
        ram[87] = "0b00000110111100";
        ram[88] = "0b00001000101110";
        ram[89] = "0b00000101100000";
        ram[90] = "0b11111100110000";
        ram[91] = "0b11111100111100";
        ram[92] = "0b00000000011010";
        ram[93] = "0b11110110111010";
        ram[94] = "0b11110101111110";
        ram[95] = "0b11111011000110";
        ram[96] = "0b11111001010101";
        ram[97] = "0b11110111111100";
        ram[98] = "0b11111011010001";
        ram[99] = "0b11111111111010";
        ram[100] = "0b11111111010011";
        ram[101] = "0b00000000000011";
        ram[102] = "0b11111101111101";
        ram[103] = "0b11111101000101";
        ram[104] = "0b11111110100000";
        ram[105] = "0b11111111001011";
        ram[106] = "0b11111110011101";
        ram[107] = "0b11111110111100";
        ram[108] = "0b11100011101000";
        ram[109] = "0b11010011011101";
        ram[110] = "0b11100100001001";
        ram[111] = "0b00001000111011";
        ram[112] = "0b11111111110111";
        ram[113] = "0b00000010110010";
        ram[114] = "0b00011011001011";
        ram[115] = "0b00100100011011";
        ram[116] = "0b00010101111001";
        ram[117] = "0b11100001000010";
        ram[118] = "0b11010011111011";
        ram[119] = "0b11101001011101";
        ram[120] = "0b00000100000110";
        ram[121] = "0b00001010101001";
        ram[122] = "0b00000010111101";
        ram[123] = "0b00010110100011";
        ram[124] = "0b00100111011100";
        ram[125] = "0b00010001010011";
        ram[126] = "0b11101111010110";
        ram[127] = "0b11011111110101";
        ram[128] = "0b11110010100010";
        ram[129] = "0b00000110111000";
        ram[130] = "0b00000110101000";
        ram[131] = "0b00000010111110";
        ram[132] = "0b00001100101000";
        ram[133] = "0b00010101111010";
        ram[134] = "0b00001100011100";
        ram[135] = "0b01010101010011";
        ram[136] = "0b00001011100011";
        ram[137] = "0b11001101100111";
        ram[138] = "0b00111100001000";
        ram[139] = "0b11110001111011";
        ram[140] = "0b11000100001100";
        ram[141] = "0b00011100011000";
        ram[142] = "0b11110011111010";
        ram[143] = "0b10111001100111";
        ram[144] = "0b11010101110000";
        ram[145] = "0b11110100011011";
        ram[146] = "0b00011000100111";
        ram[147] = "0b11110101000010";
        ram[148] = "0b11111111001000";
        ram[149] = "0b00100011101001";
        ram[150] = "0b11111111011010";
        ram[151] = "0b00000111101011";
        ram[152] = "0b00010101011011";
        ram[153] = "0b11001010100011";
        ram[154] = "0b11111000101011";
        ram[155] = "0b00010101011011";
        ram[156] = "0b11001001101001";
        ram[157] = "0b00000110111111";
        ram[158] = "0b00101011100011";
        ram[159] = "0b11100110100100";
        ram[160] = "0b00001111111011";
        ram[161] = "0b00110010111111";
        ram[162] = "0b00011100111011";
        ram[163] = "0b00111100001010";
        ram[164] = "0b00001000011100";
        ram[165] = "0b11111100000100";
        ram[166] = "0b00010000111100";
        ram[167] = "0b11100101001011";
        ram[168] = "0b11101000000001";
        ram[169] = "0b11100100000110";
        ram[170] = "0b11011111100110";
        ram[171] = "0b00010000011110";
        ram[172] = "0b00110101001110";
        ram[173] = "0b00000011010010";
        ram[174] = "0b11111100111011";
        ram[175] = "0b00011000001110";
        ram[176] = "0b11101000010111";
        ram[177] = "0b11101011010001";
        ram[178] = "0b11101010010111";
        ram[179] = "0b11100000100101";
        ram[180] = "0b00001010111101";
        ram[181] = "0b00011001110000";
        ram[182] = "0b00001001101000";
        ram[183] = "0b11111001100101";
        ram[184] = "0b00001000010011";
        ram[185] = "0b11111000000101";
        ram[186] = "0b11110011110100";
        ram[187] = "0b11110001000011";
        ram[188] = "0b11110011100110";
        ram[189] = "0b11111001001111";
        ram[190] = "0b11101100111110";
        ram[191] = "0b00000101100010";
        ram[192] = "0b11111001010100";
        ram[193] = "0b11100010101101";
        ram[194] = "0b11111100001010";
        ram[195] = "0b00000011000111";
        ram[196] = "0b00000100000001";
        ram[197] = "0b11111110110010";
        ram[198] = "0b00000101100000";
        ram[199] = "0b11101111111111";
        ram[200] = "0b00000101010000";
        ram[201] = "0b11111111011001";
        ram[202] = "0b11100111111111";
        ram[203] = "0b11111111001100";
        ram[204] = "0b11111100010101";
        ram[205] = "0b00000100000010";
        ram[206] = "0b11111011000110";
        ram[207] = "0b00000011010111";
        ram[208] = "0b11111010100001";
        ram[209] = "0b00000110110101";
        ram[210] = "0b11111101010001";
        ram[211] = "0b11101011001011";
        ram[212] = "0b00000000110001";
        ram[213] = "0b11111110011010";
        ram[214] = "0b00000101010001";
        ram[215] = "0b11111000010001";
        ram[216] = "0b11100100101011";
        ram[217] = "0b00000110000100";
        ram[218] = "0b00101000011001";
        ram[219] = "0b11100111011110";
        ram[220] = "0b11001100000100";
        ram[221] = "0b01000000110001";
        ram[222] = "0b00001110000100";
        ram[223] = "0b11001011011010";
        ram[224] = "0b00011110011101";
        ram[225] = "0b11111011000010";
        ram[226] = "0b11111011000001";
        ram[227] = "0b00010110100000";
        ram[228] = "0b00001001110100";
        ram[229] = "0b11000010001111";
        ram[230] = "0b00100011100101";
        ram[231] = "0b00101110101011";
        ram[232] = "0b11010110000111";
        ram[233] = "0b11111111000111";
        ram[234] = "0b00001000000101";
        ram[235] = "0b11111110000001";
        ram[236] = "0b11111000101100";
        ram[237] = "0b00010101001001";
        ram[238] = "0b11100100111010";
        ram[239] = "0b11111010100011";
        ram[240] = "0b00100111001000";
        ram[241] = "0b11110111111010";
        ram[242] = "0b11101100011111";
        ram[243] = "0b11100110011101";
        ram[244] = "0b11111000111001";
        ram[245] = "0b00011000101011";
        ram[246] = "0b11011011001100";
        ram[247] = "0b11111110001111";
        ram[248] = "0b00100110101100";
        ram[249] = "0b11100101101000";
        ram[250] = "0b00001010101001";
        ram[251] = "0b00011001001100";
        ram[252] = "0b11101010000111";
        ram[253] = "0b11111011101100";
        ram[254] = "0b00010100101101";
        ram[255] = "0b11011101011010";
        ram[256] = "0b11111110100101";
        ram[257] = "0b00100010111101";
        ram[258] = "0b11101001111010";
        ram[259] = "0b00001010101100";
        ram[260] = "0b00010000011010";
        ram[261] = "0b11110010101011";
        ram[262] = "0b00000000110010";
        ram[263] = "0b00001011101100";
        ram[264] = "0b11101001001001";
        ram[265] = "0b00000010011001";
        ram[266] = "0b00010100001110";
        ram[267] = "0b11101101111000";
        ram[268] = "0b00001010111001";
        ram[269] = "0b00001001101110";
        ram[270] = "0b00010110111101";
        ram[271] = "0b00100101001011";
        ram[272] = "0b00010110001011";
        ram[273] = "0b11111101111101";
        ram[274] = "0b00000000000111";
        ram[275] = "0b11111111101000";
        ram[276] = "0b11101010011000";
        ram[277] = "0b11011111110101";
        ram[278] = "0b11100110101110";
        ram[279] = "0b00010011010010";
        ram[280] = "0b00100100001010";
        ram[281] = "0b00010000101100";
        ram[282] = "0b11111100101011";
        ram[283] = "0b00000000011101";
        ram[284] = "0b00000000011101";
        ram[285] = "0b11101101001101";
        ram[286] = "0b11100001101000";
        ram[287] = "0b11101011010001";
        ram[288] = "0b00001011101001";
        ram[289] = "0b00010101001110";
        ram[290] = "0b00001000001011";
        ram[291] = "0b11111111000010";
        ram[292] = "0b00000010111011";
        ram[293] = "0b00000010100000";
        ram[294] = "0b11110011000010";
        ram[295] = "0b11101011101000";
        ram[296] = "0b11110010111000";
        ram[297] = "0b00010101100011";
        ram[298] = "0b00000000000010";
        ram[299] = "0b11101001011100";
        ram[300] = "0b00100100100000";
        ram[301] = "0b11110110011101";
        ram[302] = "0b11100000101000";
        ram[303] = "0b00011001001000";
        ram[304] = "0b11111110011011";
        ram[305] = "0b11101111000101";
        ram[306] = "0b00010111100110";
        ram[307] = "0b00000001000100";
        ram[308] = "0b11100111101100";
        ram[309] = "0b00100101100011";
        ram[310] = "0b11110111001010";
        ram[311] = "0b11011110100011";
        ram[312] = "0b00010011011111";
        ram[313] = "0b00000000000000";
        ram[314] = "0b11110000110000";
        ram[315] = "0b00001110010011";
        ram[316] = "0b00000100000100";
        ram[317] = "0b11101110110010";
        ram[318] = "0b00011001011100";
        ram[319] = "0b11111101000100";
        ram[320] = "0b11100110110110";
        ram[321] = "0b00001111100000";
        ram[322] = "0b00000010101111";
        ram[323] = "0b11110000000111";
        ram[324] = "0b11110111100110";
        ram[325] = "0b11110110111110";
        ram[326] = "0b11110101101010";
        ram[327] = "0b11110100100010";
        ram[328] = "0b11110000101111";
        ram[329] = "0b11110100011010";
        ram[330] = "0b11111011110011";
        ram[331] = "0b11110001010101";
        ram[332] = "0b11111100000111";
        ram[333] = "0b00000110110011";
        ram[334] = "0b00000111110010";
        ram[335] = "0b00000000111111";
        ram[336] = "0b00000100111011";
        ram[337] = "0b00000010111111";
        ram[338] = "0b00000010100111";
        ram[339] = "0b00000100100010";
        ram[340] = "0b11111110111001";
        ram[341] = "0b00000011110100";
        ram[342] = "0b00000101000100";
        ram[343] = "0b00001000110000";
        ram[344] = "0b00000011111110";
        ram[345] = "0b00000100100110";
        ram[346] = "0b00000101011010";
        ram[347] = "0b00001000000001";
        ram[348] = "0b00000100100010";
        ram[349] = "0b00000011110000";
        ram[350] = "0b00001000011110";
        ram[351] = "0b00000111101101";
        ram[352] = "0b00001101101101";
        ram[353] = "0b00001001100110";
        ram[354] = "0b11110011001110";
        ram[355] = "0b11010110100001";
        ram[356] = "0b11011010001101";
        ram[357] = "0b00000101010001";
        ram[358] = "0b00010100101101";
        ram[359] = "0b00100011010010";
        ram[360] = "0b00001010011011";
        ram[361] = "0b00010100010101";
        ram[362] = "0b00001111010000";
        ram[363] = "0b11110011001110";
        ram[364] = "0b11010100100110";
        ram[365] = "0b11010101110101";
        ram[366] = "0b00000010111001";
        ram[367] = "0b00010010010110";
        ram[368] = "0b00011111101010";
        ram[369] = "0b00001001101111";
        ram[370] = "0b00001110011000";
        ram[371] = "0b00001011100100";
        ram[372] = "0b11111001101110";
        ram[373] = "0b11100100110011";
        ram[374] = "0b11100011101011";
        ram[375] = "0b00000000000000";
        ram[376] = "0b00000110100101";
        ram[377] = "0b00010011010010";
        ram[378] = "0b11100100000011";
        ram[379] = "0b11011000001011";
        ram[380] = "0b11101011001101";
        ram[381] = "0b00000110000100";
        ram[382] = "0b11111111010110";
        ram[383] = "0b11111111000001";
        ram[384] = "0b00011000100111";
        ram[385] = "0b00100111011000";
        ram[386] = "0b00010100101110";
        ram[387] = "0b11101010010010";
        ram[388] = "0b11011011100101";
        ram[389] = "0b11101110110100";
        ram[390] = "0b00001001001001";
        ram[391] = "0b00000000111010";
        ram[392] = "0b00000000100110";
        ram[393] = "0b00010000100101";
        ram[394] = "0b00100001111011";
        ram[395] = "0b00001101101000";
        ram[396] = "0b11101111100111";
        ram[397] = "0b11100110001100";
        ram[398] = "0b11110010011100";
        ram[399] = "0b00001000100011";
        ram[400] = "0b00000010001001";
        ram[401] = "0b00000000011011";
        ram[402] = "0b00001011110001";
        ram[403] = "0b00010111110100";
        ram[404] = "0b00001001101110";
        ram[405] = "0b00000000100101";
        ram[406] = "0b00000011001100";
        ram[407] = "0b00000001100111";
        ram[408] = "0b11111011111011";
        ram[409] = "0b11111010101111";
        ram[410] = "0b00000000011101";
        ram[411] = "0b11111111011010";
        ram[412] = "0b11111001101101";
        ram[413] = "0b11111100111000";
        ram[414] = "0b11111011001111";
        ram[415] = "0b11111010011111";
        ram[416] = "0b11110110010000";
        ram[417] = "0b11111000101011";
        ram[418] = "0b11110111100110";
        ram[419] = "0b11111100100101";
        ram[420] = "0b11111011011010";
        ram[421] = "0b11110111010001";
        ram[422] = "0b11111011111111";
        ram[423] = "0b00000111010100";
        ram[424] = "0b00001000010111";
        ram[425] = "0b00000000010100";
        ram[426] = "0b00001000101001";
        ram[427] = "0b00001100001100";
        ram[428] = "0b00001001110100";
        ram[429] = "0b00000110000010";
        ram[430] = "0b00001000111110";
        ram[431] = "0b00001000000101";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();


SC_METHOD(prc_write_1);
  sensitive<<clk.pos();


SC_METHOD(prc_write_2);
  sensitive<<clk.pos();


SC_METHOD(prc_write_3);
  sensitive<<clk.pos();


SC_METHOD(prc_write_4);
  sensitive<<clk.pos();


SC_METHOD(prc_write_5);
  sensitive<<clk.pos();


SC_METHOD(prc_write_6);
  sensitive<<clk.pos();


SC_METHOD(prc_write_7);
  sensitive<<clk.pos();


SC_METHOD(prc_write_8);
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


void prc_write_1()
{
    if (ce1.read() == sc_dt::Log_1) 
    {
            if(address1.read().is_01() && address1.read().to_uint()<AddressRange)
              q1 = ram[address1.read().to_uint()];
            else
              q1 = sc_lv<DataWidth>();
    }
}


void prc_write_2()
{
    if (ce2.read() == sc_dt::Log_1) 
    {
            if(address2.read().is_01() && address2.read().to_uint()<AddressRange)
              q2 = ram[address2.read().to_uint()];
            else
              q2 = sc_lv<DataWidth>();
    }
}


void prc_write_3()
{
    if (ce3.read() == sc_dt::Log_1) 
    {
            if(address3.read().is_01() && address3.read().to_uint()<AddressRange)
              q3 = ram[address3.read().to_uint()];
            else
              q3 = sc_lv<DataWidth>();
    }
}


void prc_write_4()
{
    if (ce4.read() == sc_dt::Log_1) 
    {
            if(address4.read().is_01() && address4.read().to_uint()<AddressRange)
              q4 = ram[address4.read().to_uint()];
            else
              q4 = sc_lv<DataWidth>();
    }
}


void prc_write_5()
{
    if (ce5.read() == sc_dt::Log_1) 
    {
            if(address5.read().is_01() && address5.read().to_uint()<AddressRange)
              q5 = ram[address5.read().to_uint()];
            else
              q5 = sc_lv<DataWidth>();
    }
}


void prc_write_6()
{
    if (ce6.read() == sc_dt::Log_1) 
    {
            if(address6.read().is_01() && address6.read().to_uint()<AddressRange)
              q6 = ram[address6.read().to_uint()];
            else
              q6 = sc_lv<DataWidth>();
    }
}


void prc_write_7()
{
    if (ce7.read() == sc_dt::Log_1) 
    {
            if(address7.read().is_01() && address7.read().to_uint()<AddressRange)
              q7 = ram[address7.read().to_uint()];
            else
              q7 = sc_lv<DataWidth>();
    }
}


void prc_write_8()
{
    if (ce8.read() == sc_dt::Log_1) 
    {
            if(address8.read().is_01() && address8.read().to_uint()<AddressRange)
              q8 = ram[address8.read().to_uint()];
            else
              q8 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(window_macc_kernel_weight_fp) {


static const unsigned DataWidth = 14;
static const unsigned AddressRange = 432;
static const unsigned AddressWidth = 9;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in<sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in <sc_lv<AddressWidth> > address2;
sc_core::sc_in<sc_logic> ce2;
sc_core::sc_out <sc_lv<DataWidth> > q2;
sc_core::sc_in <sc_lv<AddressWidth> > address3;
sc_core::sc_in<sc_logic> ce3;
sc_core::sc_out <sc_lv<DataWidth> > q3;
sc_core::sc_in <sc_lv<AddressWidth> > address4;
sc_core::sc_in<sc_logic> ce4;
sc_core::sc_out <sc_lv<DataWidth> > q4;
sc_core::sc_in <sc_lv<AddressWidth> > address5;
sc_core::sc_in<sc_logic> ce5;
sc_core::sc_out <sc_lv<DataWidth> > q5;
sc_core::sc_in <sc_lv<AddressWidth> > address6;
sc_core::sc_in<sc_logic> ce6;
sc_core::sc_out <sc_lv<DataWidth> > q6;
sc_core::sc_in <sc_lv<AddressWidth> > address7;
sc_core::sc_in<sc_logic> ce7;
sc_core::sc_out <sc_lv<DataWidth> > q7;
sc_core::sc_in <sc_lv<AddressWidth> > address8;
sc_core::sc_in<sc_logic> ce8;
sc_core::sc_out <sc_lv<DataWidth> > q8;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


window_macc_kernel_weight_fp_ram* meminst;


SC_CTOR(window_macc_kernel_weight_fp) {
meminst = new window_macc_kernel_weight_fp_ram("window_macc_kernel_weight_fp_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->address2(address2);
meminst->ce2(ce2);
meminst->q2(q2);

meminst->address3(address3);
meminst->ce3(ce3);
meminst->q3(q3);

meminst->address4(address4);
meminst->ce4(ce4);
meminst->q4(q4);

meminst->address5(address5);
meminst->ce5(ce5);
meminst->q5(q5);

meminst->address6(address6);
meminst->ce6(ce6);
meminst->q6(q6);

meminst->address7(address7);
meminst->ce7(ce7);
meminst->q7(q7);

meminst->address8(address8);
meminst->ce8(ce8);
meminst->q8(q8);

meminst->reset(reset);
meminst->clk(clk);
}
~window_macc_kernel_weight_fp() {
    delete meminst;
}


};//endmodule
#endif
