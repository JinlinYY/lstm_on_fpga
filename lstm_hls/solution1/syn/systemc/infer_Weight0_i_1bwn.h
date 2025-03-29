// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_1bwn_H__
#define __infer_Weight0_i_1bwn_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_1bwn_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_1bwn_ram) {
        ram[0] = "0b10111110000111010010110000111000";
        ram[1] = "0b00111110001100001000000010110110";
        ram[2] = "0b10111010101010111011010001001110";
        ram[3] = "0b10111101100011101001000101000011";
        ram[4] = "0b10111101110000100001101011111000";
        ram[5] = "0b10111110011101001101111100000101";
        ram[6] = "0b00111110100010110111110101100011";
        ram[7] = "0b10111111001111000100010101010110";
        ram[8] = "0b00111101010000001111011101110111";
        ram[9] = "0b00111111000111111000001010100001";
        ram[10] = "0b10111101101001101010101110011011";
        ram[11] = "0b10111111001010100111001111000101";
        ram[12] = "0b10111111100011101010110010000110";
        ram[13] = "0b00111110001111110000101111110010";
        ram[14] = "0b10111110010100111011110010010000";
        ram[15] = "0b10111111111011101111111111001001";
        ram[16] = "0b00111111011101110001110101110001";
        ram[17] = "0b10111110110000011000111110100011";
        ram[18] = "0b00111101000000000010000010000001";
        ram[19] = "0b00111011000000011001000010001110";
        ram[20] = "0b00111110000010111010100101001100";
        ram[21] = "0b10111111001100001110110110110011";
        ram[22] = "0b10111100111111010001010101101010";
        ram[23] = "0b00111111000010000110010111000111";
        ram[24] = "0b00111110100110111010000011101000";
        ram[25] = "0b00111111000010110000011110001110";
        ram[26] = "0b00111110111001111100110110001010";
        ram[27] = "0b00111110110100101110000000111011";
        ram[28] = "0b00111111011111101111001001010010";
        ram[29] = "0b00111111010101010000111101110011";
        ram[30] = "0b10111110111110011111110010001111";
        ram[31] = "0b10111110011101011110011001111001";


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


SC_MODULE(infer_Weight0_i_1bwn) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_1bwn_ram* meminst;


SC_CTOR(infer_Weight0_i_1bwn) {
meminst = new infer_Weight0_i_1bwn_ram("infer_Weight0_i_1bwn_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_1bwn() {
    delete meminst;
}


};//endmodule
#endif
