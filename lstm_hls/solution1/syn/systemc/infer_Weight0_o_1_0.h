// ==============================================================
// File generated on Fri Mar 28 13:00:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_1_0_H__
#define __infer_Weight0_o_1_0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_1_0_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_1_0_ram) {
        ram[0] = "0b10111101100110010100110010001000";
        ram[1] = "0b10111111000111101010010101000000";
        ram[2] = "0b10111110000001000101001000111111";
        ram[3] = "0b10111111001101001001000001110001";
        ram[4] = "0b00111101111110001001101001000110";
        ram[5] = "0b00111110111000010001100111110000";
        ram[6] = "0b10111111000001010100011010000000";
        ram[7] = "0b10111111010000010011000011001111";
        ram[8] = "0b00111111000010000100111010110101";
        ram[9] = "0b00111111011011101010101110111101";
        ram[10] = "0b10111101100101111100010001011101";
        ram[11] = "0b00111101110010011011111000001010";
        ram[12] = "0b00111110010001100001111010010011";
        ram[13] = "0b00111111010001010011100010111101";
        ram[14] = "0b10111111001110001101010011011100";
        ram[15] = "0b10111111010100100000000011100010";
        ram[16] = "0b10111110001000110111000101010100";
        ram[17] = "0b10111111000000010110100010110110";
        ram[18] = "0b10111111000110011101010010000100";
        ram[19] = "0b10111110101001110101110000101001";
        ram[20] = "0b10111110010011001000111010101100";
        ram[21] = "0b00111110100010010001001001010101";
        ram[22] = "0b10111110001111010101110111000100";
        ram[23] = "0b00111111000101101101101101100010";
        ram[24] = "0b10111101101101010111010001110001";
        ram[25] = "0b00111101110000001100001110001111";
        ram[26] = "0b00111110100001010100001101101100";
        ram[27] = "0b10111110111110011110010011110111";
        ram[28] = "0b10111111000010000101011011000101";
        ram[29] = "0b10111111000000101100101111101010";
        ram[30] = "0b10111111001101011010111100001000";
        ram[31] = "0b00111100110111111010011001011001";


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


SC_MODULE(infer_Weight0_o_1_0) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_1_0_ram* meminst;


SC_CTOR(infer_Weight0_o_1_0) {
meminst = new infer_Weight0_o_1_0_ram("infer_Weight0_o_1_0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_1_0() {
    delete meminst;
}


};//endmodule
#endif
