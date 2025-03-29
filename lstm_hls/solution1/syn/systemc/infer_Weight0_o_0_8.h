// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_0_8_H__
#define __infer_Weight0_o_0_8_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_0_8_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_0_8_ram) {
        ram[0] = "0b10111101100100010101110001100100";
        ram[1] = "0b00111110100100010000101000010011";
        ram[2] = "0b00111110001110011110100100001000";
        ram[3] = "0b10111111010010001001111011011100";
        ram[4] = "0b00111110000101111010001100010010";
        ram[5] = "0b10111111000110111001010001100100";
        ram[6] = "0b10111101100001001010000001011110";
        ram[7] = "0b00111101100110000111110111110110";
        ram[8] = "0b10111110110100110001010000000001";
        ram[9] = "0b10111110111010111110100011111111";
        ram[10] = "0b10111111011001101011111001111011";
        ram[11] = "0b10111111000110000110110011011011";
        ram[12] = "0b10111111000011110010001101000110";
        ram[13] = "0b00111110010101111011110000111100";
        ram[14] = "0b00111110100010001101011110111111";
        ram[15] = "0b10111111000111111001110110110010";
        ram[16] = "0b10111110110000010110101110111010";
        ram[17] = "0b10111110100001110010101000010111";
        ram[18] = "0b10111101100000110100111111000110";
        ram[19] = "0b10111110110101111011001000000011";
        ram[20] = "0b00111110100101001001110010010001";
        ram[21] = "0b00111111001011010101010001010100";
        ram[22] = "0b10111111000011001111010101001101";
        ram[23] = "0b00111110101011011110111110000101";
        ram[24] = "0b10111101111100111101110100010010";
        ram[25] = "0b00111101000011111111011101011001";
        ram[26] = "0b10111111010101100000111110100001";
        ram[27] = "0b00111110110011011000001011111101";
        ram[28] = "0b10111110111101001000010010110110";
        ram[29] = "0b10111111000111110011011101010100";
        ram[30] = "0b10111111010000101101111100001101";
        ram[31] = "0b00111111001000111110011000011101";


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


SC_MODULE(infer_Weight0_o_0_8) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_0_8_ram* meminst;


SC_CTOR(infer_Weight0_o_0_8) {
meminst = new infer_Weight0_o_0_8_ram("infer_Weight0_o_0_8_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_0_8() {
    delete meminst;
}


};//endmodule
#endif
