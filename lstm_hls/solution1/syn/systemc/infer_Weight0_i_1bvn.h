// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_1bvn_H__
#define __infer_Weight0_i_1bvn_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_1bvn_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_1bvn_ram) {
        ram[0] = "0b10111111001010100110111110110101";
        ram[1] = "0b00111111000011011110110110101111";
        ram[2] = "0b10111111100001101100011011101111";
        ram[3] = "0b10111111000000110001101011010010";
        ram[4] = "0b00111110111110101111000101100111";
        ram[5] = "0b10111111100011010000010111000000";
        ram[6] = "0b00111110001101000010010010100010";
        ram[7] = "0b10111110001101001011001000110001";
        ram[8] = "0b10111111010100011100001101101001";
        ram[9] = "0b10111110000011110111101001001110";
        ram[10] = "0b00111110100001100011000111010111";
        ram[11] = "0b10111110011110111111101101011001";
        ram[12] = "0b00111111000011001011100010111111";
        ram[13] = "0b00111110000110100110101100001110";
        ram[14] = "0b00111110000001010011010100000001";
        ram[15] = "0b10111101110111111110001010100100";
        ram[16] = "0b10111110001100100001010100110011";
        ram[17] = "0b00111110111100010010000100000100";
        ram[18] = "0b10111110100000010100000110000101";
        ram[19] = "0b10111110010010100110001011101101";
        ram[20] = "0b10111110000010101010010101000000";
        ram[21] = "0b00111110000111010100000100110001";
        ram[22] = "0b00111111010110010110111100010001";
        ram[23] = "0b00111110111011000110101000011010";
        ram[24] = "0b10111110001110010101101101111001";
        ram[25] = "0b10111100100000010001110100110110";
        ram[26] = "0b10111110100101001111111010111101";
        ram[27] = "0b00111111010011001100010101110110";
        ram[28] = "0b00111110101110011010110110000110";
        ram[29] = "0b00111110110100011001110100100100";
        ram[30] = "0b00111110110110100101001001001000";
        ram[31] = "0b10111110111000010111001110111000";


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


SC_MODULE(infer_Weight0_i_1bvn) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_1bvn_ram* meminst;


SC_CTOR(infer_Weight0_i_1bvn) {
meminst = new infer_Weight0_i_1bvn_ram("infer_Weight0_i_1bvn_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_1bvn() {
    delete meminst;
}


};//endmodule
#endif
