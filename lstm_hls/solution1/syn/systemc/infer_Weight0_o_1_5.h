// ==============================================================
// File generated on Fri Mar 28 13:00:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_1_5_H__
#define __infer_Weight0_o_1_5_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_1_5_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_1_5_ram) {
        ram[0] = "0b10111111100001101110000110011100";
        ram[1] = "0b00111110011010110011010000011110";
        ram[2] = "0b00111101001101110001100001100101";
        ram[3] = "0b10111101100110001011110011100000";
        ram[4] = "0b00111100010011111100100000101010";
        ram[5] = "0b00111110100111100101101000010100";
        ram[6] = "0b10111110000011010111000100101010";
        ram[7] = "0b00111101011100100000010000101001";
        ram[8] = "0b00111110111110101000111001110001";
        ram[9] = "0b00111100000111001011111011101000";
        ram[10] = "0b10111101100100111010000001000000";
        ram[11] = "0b10111110100000110000110110110111";
        ram[12] = "0b10111110100000011110001111001001";
        ram[13] = "0b00111101111010000001001000111000";
        ram[14] = "0b00111101100111000111101101000110";
        ram[15] = "0b00111101100100100011110011001001";
        ram[16] = "0b00111110001110010001100001011101";
        ram[17] = "0b00111100010010100010110110110110";
        ram[18] = "0b10111110101110011000000110011101";
        ram[19] = "0b00111110100110000111101010101111";
        ram[20] = "0b00111111000110011011001100111001";
        ram[21] = "0b00111110000100101100101011011110";
        ram[22] = "0b10111110010010010000011101010011";
        ram[23] = "0b10111101011101010001111011111011";
        ram[24] = "0b00111110011010101000011011010111";
        ram[25] = "0b00111111001111010000111110100110";
        ram[26] = "0b10111101010110111001110110000000";
        ram[27] = "0b10111110011000101101000110101111";
        ram[28] = "0b10111111001010010111010000001100";
        ram[29] = "0b10111110000001110100111111111000";
        ram[30] = "0b00111101111011111111000000000010";
        ram[31] = "0b10111111001010010101001000011010";


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


SC_MODULE(infer_Weight0_o_1_5) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_1_5_ram* meminst;


SC_CTOR(infer_Weight0_o_1_5) {
meminst = new infer_Weight0_o_1_5_ram("infer_Weight0_o_1_5_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_1_5() {
    delete meminst;
}


};//endmodule
#endif
