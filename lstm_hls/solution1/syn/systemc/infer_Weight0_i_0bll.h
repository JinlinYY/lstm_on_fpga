// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_0bll_H__
#define __infer_Weight0_i_0bll_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_0bll_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
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


   SC_CTOR(infer_Weight0_i_0bll_ram) {
        ram[0] = "0b00111110100111001010011111010110";
        ram[1] = "0b10111111011001001010001010101001";
        ram[2] = "0b10111110000101101100111101000010";
        ram[3] = "0b10111110111001010011000100010010";
        ram[4] = "0b00111101110100101000110110000110";
        ram[5] = "0b00111110010001001100001100111011";
        ram[6] = "0b10111110100100110001011011100011";
        ram[7] = "0b10111101110100111101100101100110";
        ram[8] = "0b00111110111011110011100100001000";
        ram[9] = "0b00111111001101110111010101010011";
        ram[10] = "0b00111101101001111110001110001111";
        ram[11] = "0b10111011011100111011101001110111";
        ram[12] = "0b00111110000100100100111001011001";
        ram[13] = "0b10111110111101101001101011110110";
        ram[14] = "0b10111111010101011001100010111111";
        ram[15] = "0b00111111100000001111101001100001";
        ram[16] = "0b10111101011011110000000001101001";
        ram[17] = "0b10111111010100100101010011100111";
        ram[18] = "0b10111111100101010001001011000010";
        ram[19] = "0b00111111001001001010110101011000";
        ram[20] = "0b10111110101111000001001101110111";
        ram[21] = "0b00111111010000000010111011111101";
        ram[22] = "0b00111101101111100000001101110001";
        ram[23] = "0b10111011100101100001001111010011";
        ram[24] = "0b10111111011001001000100111110100";
        ram[25] = "0b00111110100000100100100001110011";
        ram[26] = "0b10111111011100010011000001101010";
        ram[27] = "0b10111110110110010001010110111110";
        ram[28] = "0b10111111010011000111010111110111";
        ram[29] = "0b10111111000111001011110100010010";
        ram[30] = "0b10111110111100111110101000001100";
        ram[31] = "0b00111110111010110011011111101011";


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


SC_MODULE(infer_Weight0_i_0bll) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_0bll_ram* meminst;


SC_CTOR(infer_Weight0_i_0bll) {
meminst = new infer_Weight0_i_0bll_ram("infer_Weight0_i_0bll_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_0bll() {
    delete meminst;
}


};//endmodule
#endif
