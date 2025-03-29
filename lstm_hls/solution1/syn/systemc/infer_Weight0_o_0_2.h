// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_0_2_H__
#define __infer_Weight0_o_0_2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_0_2_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_0_2_ram) {
        ram[0] = "0b00111110101010110110001111110101";
        ram[1] = "0b00111110000000011010101111010010";
        ram[2] = "0b10111110000011011110110100101001";
        ram[3] = "0b10111101100111111011101111011000";
        ram[4] = "0b10111110001000011001110111101101";
        ram[5] = "0b10111110001001110010011110011010";
        ram[6] = "0b10111101100100111010011000000101";
        ram[7] = "0b10111110100101100111110101111000";
        ram[8] = "0b00111110001111011110110100101001";
        ram[9] = "0b10111100010110110111011010110100";
        ram[10] = "0b10111110000100100001110101010100";
        ram[11] = "0b10111101100100110000111100000110";
        ram[12] = "0b00111110101011011101110101001100";
        ram[13] = "0b10111011101010000000100011001000";
        ram[14] = "0b00111110100101111010101000100110";
        ram[15] = "0b10111110010100100111100010001110";
        ram[16] = "0b00111111011100110010001110011010";
        ram[17] = "0b00111110110111011110110100000111";
        ram[18] = "0b00111000011001101010111111001101";
        ram[19] = "0b10111101111100000001101110000110";
        ram[20] = "0b00111101100011100111011110010010";
        ram[21] = "0b10111101100100111000100000100010";
        ram[22] = "0b10111100010001100100001101000110";
        ram[23] = "0b10111110010110101110101100111110";
        ram[24] = "0b00111100010100111000110011011010";
        ram[25] = "0b10111110011101000110100100001110";
        ram[26] = "0b10111110100000001001000000001100";
        ram[27] = "0b10111011010111101100000111000010";
        ram[28] = "0b10111110110011110011000101001101";
        ram[29] = "0b10111100101110101011110010010100";
        ram[30] = "0b10111101100011011101000001010011";
        ram[31] = "0b10111100111010101010111100110110";


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


SC_MODULE(infer_Weight0_o_0_2) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_0_2_ram* meminst;


SC_CTOR(infer_Weight0_o_0_2) {
meminst = new infer_Weight0_o_0_2_ram("infer_Weight0_o_0_2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_0_2() {
    delete meminst;
}


};//endmodule
#endif
