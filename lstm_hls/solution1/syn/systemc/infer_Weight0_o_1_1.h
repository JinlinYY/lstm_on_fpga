// ==============================================================
// File generated on Fri Mar 28 13:00:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_1_1_H__
#define __infer_Weight0_o_1_1_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_1_1_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_1_1_ram) {
        ram[0] = "0b00111111011110111111101000101011";
        ram[1] = "0b10111100010010011010101110110000";
        ram[2] = "0b10111110111100010101100000110010";
        ram[3] = "0b00111110010110110111011001110001";
        ram[4] = "0b00111111011000110101101100101101";
        ram[5] = "0b00111111101010111001101011100001";
        ram[6] = "0b00111111000001000010110111110001";
        ram[7] = "0b10111111101010111111101001101110";
        ram[8] = "0b00111111011101000001110111100010";
        ram[9] = "0b00111101001100000001010100111100";
        ram[10] = "0b00111110001001100100011000101000";
        ram[11] = "0b10111110101100001000110111110011";
        ram[12] = "0b00111111011001101000110010111101";
        ram[13] = "0b10111111000111000000001111001101";
        ram[14] = "0b00111111111101011111111001100101";
        ram[15] = "0b10111110101010100111011111000100";
        ram[16] = "0b10111111110101001111111111111100";
        ram[17] = "0b00111111010010110110111100011010";
        ram[18] = "0b00111111001000001010011101010000";
        ram[19] = "0b10111111001011110011100011010110";
        ram[20] = "0b10111110001001000011010011100011";
        ram[21] = "0b10111110000100011100110101100000";
        ram[22] = "0b10111101000101101010101011010010";
        ram[23] = "0b00111110100001010011001001000000";
        ram[24] = "0b00111111010111110110101000101111";
        ram[25] = "0b10111111110000111000100110110101";
        ram[26] = "0b10111110111001111100000000101011";
        ram[27] = "0b00111111001101011100111110001001";
        ram[28] = "0b00111111011110111010011101000100";
        ram[29] = "0b00111111110010110001101001111110";
        ram[30] = "0b00111111101011010001101000100010";
        ram[31] = "0b10111110101011100101001010011100";


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


SC_MODULE(infer_Weight0_o_1_1) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_1_1_ram* meminst;


SC_CTOR(infer_Weight0_o_1_1) {
meminst = new infer_Weight0_o_1_1_ram("infer_Weight0_o_1_1_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_1_1() {
    delete meminst;
}


};//endmodule
#endif
