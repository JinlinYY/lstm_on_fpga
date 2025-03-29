// ==============================================================
// File generated on Fri Mar 28 13:00:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_1_9_H__
#define __infer_Weight0_o_1_9_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_1_9_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_1_9_ram) {
        ram[0] = "0b10111110101111100001000111011100";
        ram[1] = "0b10111101100101011010001000001110";
        ram[2] = "0b00111110111110111100110000101001";
        ram[3] = "0b00111111100011101011110001011010";
        ram[4] = "0b10111110100000001111010011011000";
        ram[5] = "0b10111110101000101010010001110110";
        ram[6] = "0b00111111000111000101100010111100";
        ram[7] = "0b00111110010000101101100101001001";
        ram[8] = "0b10111110001010010101001100010101";
        ram[9] = "0b10111101000010010010100110101010";
        ram[10] = "0b00111110100110001001000111100010";
        ram[11] = "0b00111111000000100000110101000101";
        ram[12] = "0b10111111110001001001111000111101";
        ram[13] = "0b10111100110110011000011111000110";
        ram[14] = "0b00111111000000110101101101100000";
        ram[15] = "0b00111110001010110000101101111100";
        ram[16] = "0b00111110110001110101001101100001";
        ram[17] = "0b00111111000111010011111111100010";
        ram[18] = "0b00111111010100101000011111000010";
        ram[19] = "0b00111111001101001001010100000111";
        ram[20] = "0b00111111001001000111111111011100";
        ram[21] = "0b00111110100101000001000100011011";
        ram[22] = "0b10111111000000010001000101011010";
        ram[23] = "0b00111111001110011000101110110101";
        ram[24] = "0b10111111000111100100101000010111";
        ram[25] = "0b10111110001110110101100001001011";
        ram[26] = "0b10111110011100111111000101000001";
        ram[27] = "0b00111110101000010111010011100110";
        ram[28] = "0b10111110111011111010110000111111";
        ram[29] = "0b00111110111001010000111001010110";
        ram[30] = "0b00111111010000110000011001110000";
        ram[31] = "0b00111110110000010101001100010101";


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


SC_MODULE(infer_Weight0_o_1_9) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_1_9_ram* meminst;


SC_CTOR(infer_Weight0_o_1_9) {
meminst = new infer_Weight0_o_1_9_ram("infer_Weight0_o_1_9_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_1_9() {
    delete meminst;
}


};//endmodule
#endif
