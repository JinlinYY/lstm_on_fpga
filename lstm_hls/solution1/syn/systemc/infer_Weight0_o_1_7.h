// ==============================================================
// File generated on Fri Mar 28 13:00:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_1_7_H__
#define __infer_Weight0_o_1_7_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_1_7_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_1_7_ram) {
        ram[0] = "0b00111110100011010110011010101110";
        ram[1] = "0b00111110101111011011011100000111";
        ram[2] = "0b10111110101010110110010101100111";
        ram[3] = "0b10111110010010100000000000011001";
        ram[4] = "0b00111110100000100100111101000100";
        ram[5] = "0b00111110101100011110111011001100";
        ram[6] = "0b00111101010000011101000110010001";
        ram[7] = "0b10111110110101111011010011000100";
        ram[8] = "0b00111111010000010111010100101001";
        ram[9] = "0b10111111100010010101111000001111";
        ram[10] = "0b10111111000000101010000000010010";
        ram[11] = "0b10111110010110111010100101001100";
        ram[12] = "0b10111110100110001111000010000100";
        ram[13] = "0b00111101111001010011111100111010";
        ram[14] = "0b10111101111110111100001000110011";
        ram[15] = "0b10111110111111011000101110000010";
        ram[16] = "0b10111101011011100000010111001101";
        ram[17] = "0b10111100100001000110100001000101";
        ram[18] = "0b10111101010001000011011011111100";
        ram[19] = "0b10111110101110110000000100000000";
        ram[20] = "0b00111110001101011000000010000000";
        ram[21] = "0b00111110001001101011101101010110";
        ram[22] = "0b10111110010001010011010001111010";
        ram[23] = "0b00111100100100101010001100000101";
        ram[24] = "0b00111110010011110111110101110100";
        ram[25] = "0b10111110110000001000011001011001";
        ram[26] = "0b00111101010011000100100010101110";
        ram[27] = "0b10111111000101111010111101000010";
        ram[28] = "0b10111111000000100010100010101010";
        ram[29] = "0b00111101100100111100011110010011";
        ram[30] = "0b10111101110110110011001000000101";
        ram[31] = "0b10111111001111011101110110110001";


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


SC_MODULE(infer_Weight0_o_1_7) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_1_7_ram* meminst;


SC_CTOR(infer_Weight0_o_1_7) {
meminst = new infer_Weight0_o_1_7_ram("infer_Weight0_o_1_7_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_1_7() {
    delete meminst;
}


};//endmodule
#endif
