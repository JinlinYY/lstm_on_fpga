// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_0_7_H__
#define __infer_Weight0_o_0_7_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_0_7_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_0_7_ram) {
        ram[0] = "0b00111111010111110010001111011101";
        ram[1] = "0b10111110110110011100000001000100";
        ram[2] = "0b10111110101010011101001110001001";
        ram[3] = "0b10111110100000011000000110111111";
        ram[4] = "0b00111110001001110101000100000101";
        ram[5] = "0b00111110010010011110100011000100";
        ram[6] = "0b10111110011000010100000010011010";
        ram[7] = "0b10111110011110100000010000001000";
        ram[8] = "0b10111101111000010010000011100010";
        ram[9] = "0b10111111001110110101011000110010";
        ram[10] = "0b00111110011110111101111011000110";
        ram[11] = "0b00111110110110001011111111000010";
        ram[12] = "0b10111110011000111011011001000110";
        ram[13] = "0b00111101110111101100100100011001";
        ram[14] = "0b00111110101011001001111101010001";
        ram[15] = "0b10111111010110010000010110001110";
        ram[16] = "0b00111110001101001110101000000111";
        ram[17] = "0b00111110100011010100001001011111";
        ram[18] = "0b00111101111010101110011011001001";
        ram[19] = "0b00111101000011100000100101111000";
        ram[20] = "0b00111110000111100100101010111110";
        ram[21] = "0b10111101100001110000010010111100";
        ram[22] = "0b00111101100100111010111011101111";
        ram[23] = "0b10111110110111111001100001110100";
        ram[24] = "0b00111111000111000110111101011000";
        ram[25] = "0b10111110111000011010110101000011";
        ram[26] = "0b10111110100001001001011000000011";
        ram[27] = "0b00111111100001100111010011000001";
        ram[28] = "0b00111110011111001010011010000111";
        ram[29] = "0b10111111011101100100001101000110";
        ram[30] = "0b10111111011111110101000111001110";
        ram[31] = "0b00111111001011100001110001111010";


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


SC_MODULE(infer_Weight0_o_0_7) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_0_7_ram* meminst;


SC_CTOR(infer_Weight0_o_0_7) {
meminst = new infer_Weight0_o_0_7_ram("infer_Weight0_o_0_7_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_0_7() {
    delete meminst;
}


};//endmodule
#endif
