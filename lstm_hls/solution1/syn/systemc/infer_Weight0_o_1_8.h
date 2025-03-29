// ==============================================================
// File generated on Fri Mar 28 13:00:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_1_8_H__
#define __infer_Weight0_o_1_8_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_1_8_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_1_8_ram) {
        ram[0] = "0b00111111010011001111011001111011";
        ram[1] = "0b00111110111101111100010101101001";
        ram[2] = "0b10111110001100100110111110100100";
        ram[3] = "0b00111110010000110101111011111010";
        ram[4] = "0b10111110110110111101001100011100";
        ram[5] = "0b10111111010000101110100000111010";
        ram[6] = "0b00111101000010111101010101010110";
        ram[7] = "0b00111100101001101100101000000100";
        ram[8] = "0b00111101100111110111011100101001";
        ram[9] = "0b00111111000000010111111010001001";
        ram[10] = "0b00111110000111000101111101111100";
        ram[11] = "0b00111111001100001100001110001111";
        ram[12] = "0b00111110111011110100110010110010";
        ram[13] = "0b10111111001100001011100000111001";
        ram[14] = "0b00111110001001100101001000110111";
        ram[15] = "0b00111110011100101011001001111101";
        ram[16] = "0b10111111010000110001101110011011";
        ram[17] = "0b10111111000010010100110000100011";
        ram[18] = "0b00111110010101101000010001001001";
        ram[19] = "0b00111110101111001010000011100100";
        ram[20] = "0b10111110101110001110111010101111";
        ram[21] = "0b00111110111100001100100101110101";
        ram[22] = "0b00111110011111011111111011111100";
        ram[23] = "0b10111110010000111010111010101011";
        ram[24] = "0b00111110000111010001101010101000";
        ram[25] = "0b00111110100100001100110001111001";
        ram[26] = "0b00111111110010000011111011100010";
        ram[27] = "0b10111110000011010010000000101001";
        ram[28] = "0b10111110101110110001001110011101";
        ram[29] = "0b00111110110111001011100101000101";
        ram[30] = "0b00111101101100001000001001001001";
        ram[31] = "0b10111101101111100100010011111010";


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


SC_MODULE(infer_Weight0_o_1_8) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_1_8_ram* meminst;


SC_CTOR(infer_Weight0_o_1_8) {
meminst = new infer_Weight0_o_1_8_ram("infer_Weight0_o_1_8_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_1_8() {
    delete meminst;
}


};//endmodule
#endif
