// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_1bAo_H__
#define __infer_Weight0_i_1bAo_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_1bAo_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_1bAo_ram) {
        ram[0] = "0b10111110111011110011001101000100";
        ram[1] = "0b10111110000100011011001110101111";
        ram[2] = "0b00111100000111000011010001111111";
        ram[3] = "0b10111110111101010010001010100111";
        ram[4] = "0b00111110101011111011000011010101";
        ram[5] = "0b00111101111110101011001110101011";
        ram[6] = "0b00111111000110000011101100101110";
        ram[7] = "0b10111111011011110111010111101010";
        ram[8] = "0b10111111010101111100000101001000";
        ram[9] = "0b00111111010100100001100011011111";
        ram[10] = "0b10111111000010100011100110000010";
        ram[11] = "0b10111110100110110101000001101110";
        ram[12] = "0b00111110101001001101011011100100";
        ram[13] = "0b00111110010010001100010100000000";
        ram[14] = "0b10111110100000011000001011101101";
        ram[15] = "0b00111111001010000010011011001100";
        ram[16] = "0b10111110101010111100010000001001";
        ram[17] = "0b10111100110000000000001100100101";
        ram[18] = "0b00111111000010101011111010011101";
        ram[19] = "0b00111110100110011101110011010111";
        ram[20] = "0b10111110101010001000010101001101";
        ram[21] = "0b00111111001011001000010100101011";
        ram[22] = "0b10111111000101001111110111010010";
        ram[23] = "0b10111111011001100111000110011011";
        ram[24] = "0b00111111011000011001111111110101";
        ram[25] = "0b00111110011000111001100011101001";
        ram[26] = "0b00111110111001010100100000000010";
        ram[27] = "0b00111111010101000110001101011010";
        ram[28] = "0b00111111011001001111101111011011";
        ram[29] = "0b00111111000111110110101011010111";
        ram[30] = "0b10111111000011110001011111110000";
        ram[31] = "0b10111110111000011010110111001001";


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


SC_MODULE(infer_Weight0_i_1bAo) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_1bAo_ram* meminst;


SC_CTOR(infer_Weight0_i_1bAo) {
meminst = new infer_Weight0_i_1bAo_ram("infer_Weight0_i_1bAo_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_1bAo() {
    delete meminst;
}


};//endmodule
#endif
