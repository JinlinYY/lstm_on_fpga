// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_1_7_H__
#define __infer_Weight0_i_1_7_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_1_7_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_1_7_ram) {
        ram[0] = "0b10111111001101111011101110000100";
        ram[1] = "0b00111101110011010011100001000111";
        ram[2] = "0b00111111011001101000000011010000";
        ram[3] = "0b10111110101011111100000011110100";
        ram[4] = "0b00111110010001000101000100110011";
        ram[5] = "0b00111101101011011000101000010001";
        ram[6] = "0b00111101010101001000000000011111";
        ram[7] = "0b10111110110011010001101000100010";
        ram[8] = "0b00111111000000101110100111101110";
        ram[9] = "0b00111111010100100011010001000100";
        ram[10] = "0b00111111001001110111010000010101";
        ram[11] = "0b00111110010111100110100010100001";
        ram[12] = "0b10111110101000000101011110001110";
        ram[13] = "0b10111111000001001110000001100101";
        ram[14] = "0b10111110100101111001000011011010";
        ram[15] = "0b00111111001110110010000011001001";
        ram[16] = "0b00111110001000100000111010100110";
        ram[17] = "0b00111111000000110010110011111001";
        ram[18] = "0b10111111000000010001011010101001";
        ram[19] = "0b00111110100110001101001101001010";
        ram[20] = "0b00111110111001001000111000000100";
        ram[21] = "0b00111110100100001010010000011010";
        ram[22] = "0b10111111100010111011111101001000";
        ram[23] = "0b00111110011010000001010111100100";
        ram[24] = "0b00111110111101100100101010111110";
        ram[25] = "0b00111110110111100011001110101101";
        ram[26] = "0b00111111001111001101010100110000";
        ram[27] = "0b10111111000001000101010100110010";
        ram[28] = "0b10111110011100011110010001110001";
        ram[29] = "0b00111111011011010000001101000011";
        ram[30] = "0b10111110011111110110010000000110";
        ram[31] = "0b00111110101010100010000101100100";


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


SC_MODULE(infer_Weight0_i_1_7) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_1_7_ram* meminst;


SC_CTOR(infer_Weight0_i_1_7) {
meminst = new infer_Weight0_i_1_7_ram("infer_Weight0_i_1_7_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_1_7() {
    delete meminst;
}


};//endmodule
#endif
