// ==============================================================
// File generated on Fri Mar 28 13:00:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_0b0s_H__
#define __infer_Weight0_o_0b0s_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_0b0s_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_0b0s_ram) {
        ram[0] = "0b00111111000010101011110000011111";
        ram[1] = "0b10111110011101100001100110011000";
        ram[2] = "0b00111110001101000110100001000101";
        ram[3] = "0b00111100100110101001011101011011";
        ram[4] = "0b00111111101000011110110010000001";
        ram[5] = "0b10111110100011001111101010101101";
        ram[6] = "0b00111111001110101101111000000001";
        ram[7] = "0b10111101011001100111000111101111";
        ram[8] = "0b10111111000001110001001001111111";
        ram[9] = "0b00111110100001110000001110110000";
        ram[10] = "0b00111110111010011011001101101100";
        ram[11] = "0b10111111001001010111111101110011";
        ram[12] = "0b00111111101100101001110110101110";
        ram[13] = "0b00111110011010100110011100011111";
        ram[14] = "0b00111101111010011110010001010000";
        ram[15] = "0b10111101100010101001000011001101";
        ram[16] = "0b00111110101000000110100000110100";
        ram[17] = "0b10111110101111011000010101111011";
        ram[18] = "0b00111110001100101000010101100110";
        ram[19] = "0b10111110000110010000010000101110";
        ram[20] = "0b00111110011100000110000110000100";
        ram[21] = "0b10111110001010101011011001001010";
        ram[22] = "0b00111111011000100011110110100011";
        ram[23] = "0b00111110000110001100010001111010";
        ram[24] = "0b10111100101001100110110110111101";
        ram[25] = "0b10111110000011101001011010000001";
        ram[26] = "0b10111110001011100111100011100010";
        ram[27] = "0b00111111010010111110001000101110";
        ram[28] = "0b10111101110000100010110101010001";
        ram[29] = "0b00111110011000000010001101100100";
        ram[30] = "0b00111110001010101101100001011110";
        ram[31] = "0b10111110110101100001100001001000";


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


SC_MODULE(infer_Weight0_o_0b0s) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_0b0s_ram* meminst;


SC_CTOR(infer_Weight0_o_0b0s) {
meminst = new infer_Weight0_o_0b0s_ram("infer_Weight0_o_0b0s_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_0b0s() {
    delete meminst;
}


};//endmodule
#endif
