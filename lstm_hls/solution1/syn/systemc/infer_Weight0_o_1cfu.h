// ==============================================================
// File generated on Fri Mar 28 13:00:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_1cfu_H__
#define __infer_Weight0_o_1cfu_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_1cfu_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_1cfu_ram) {
        ram[0] = "0b10111110000110110111110101000001";
        ram[1] = "0b00111110110001110101000111001110";
        ram[2] = "0b00111100101010000001001101000101";
        ram[3] = "0b00111111010011110011101111101011";
        ram[4] = "0b00111101000010001001100011110110";
        ram[5] = "0b00111110000111100000101111010100";
        ram[6] = "0b00111100111010100101101101010011";
        ram[7] = "0b00111111000111011110000110001111";
        ram[8] = "0b00111110111010001000011110101001";
        ram[9] = "0b10111100110001101010010111010111";
        ram[10] = "0b10111110011101100011011001101101";
        ram[11] = "0b00111110110110011000101011101100";
        ram[12] = "0b10111110110111011000000011100101";
        ram[13] = "0b10111110110100111110010111011010";
        ram[14] = "0b00111110110011101110000000101010";
        ram[15] = "0b10111110101001111010111111101010";
        ram[16] = "0b00111100111110111110011101101101";
        ram[17] = "0b00111111010010001000001111111101";
        ram[18] = "0b10111101101110100100011110101010";
        ram[19] = "0b00111110010111010100110001110111";
        ram[20] = "0b00111100011011010011110110000110";
        ram[21] = "0b10111110110001011100001010110001";
        ram[22] = "0b00111110011101100110111101010000";
        ram[23] = "0b00111111011001110111100001010111";
        ram[24] = "0b00111101001111110000110111000111";
        ram[25] = "0b00111110101100101001000111111011";
        ram[26] = "0b00111111001101000001110111100010";
        ram[27] = "0b10111111100010011011010101010010";
        ram[28] = "0b10111110100001101010000101100010";
        ram[29] = "0b10111110011001000111100001000010";
        ram[30] = "0b10111110001111110000011001110000";
        ram[31] = "0b00111110001000101001101101101011";


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


SC_MODULE(infer_Weight0_o_1cfu) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_1cfu_ram* meminst;


SC_CTOR(infer_Weight0_o_1cfu) {
meminst = new infer_Weight0_o_1cfu_ram("infer_Weight0_o_1cfu_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_1cfu() {
    delete meminst;
}


};//endmodule
#endif
