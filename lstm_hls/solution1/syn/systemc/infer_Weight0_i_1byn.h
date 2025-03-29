// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_1byn_H__
#define __infer_Weight0_i_1byn_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_1byn_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_1byn_ram) {
        ram[0] = "0b00111111001101010000110110011101";
        ram[1] = "0b00111110100110100110000110111111";
        ram[2] = "0b00111101001110101000110001011000";
        ram[3] = "0b00111101110100111100101111000101";
        ram[4] = "0b00111110111111000111000000000000";
        ram[5] = "0b10111110110011110101011110010011";
        ram[6] = "0b00111110001101101001001100111010";
        ram[7] = "0b10111110111001000101110111101010";
        ram[8] = "0b10111111100010001000101011000110";
        ram[9] = "0b10111110111001011100101101111001";
        ram[10] = "0b00111110011000110011101011001101";
        ram[11] = "0b00111111011001101010010110000011";
        ram[12] = "0b00111111010000111100100110101100";
        ram[13] = "0b10111111001100101100001110000111";
        ram[14] = "0b00111110100000101011110101011110";
        ram[15] = "0b00111111010001000011101100011101";
        ram[16] = "0b10111101011101101101111111000110";
        ram[17] = "0b00111111001110000101101110101111";
        ram[18] = "0b00111111100110110010010111010101";
        ram[19] = "0b10111111001010100000011111100110";
        ram[20] = "0b00111101001111110001100101010000";
        ram[21] = "0b00111110101011101011000111100110";
        ram[22] = "0b10111111101111010101011111000101";
        ram[23] = "0b00111111010100100110111001110110";
        ram[24] = "0b00111101011011110001100110010011";
        ram[25] = "0b10111110000011111100011010010111";
        ram[26] = "0b10111110000001111011010111110010";
        ram[27] = "0b10111110100101011101101001001001";
        ram[28] = "0b10111111001000100011111101111001";
        ram[29] = "0b00111111000111001001001001111001";
        ram[30] = "0b00111110011111010010100111011100";
        ram[31] = "0b10111110011101110001111010110000";


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


SC_MODULE(infer_Weight0_i_1byn) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_1byn_ram* meminst;


SC_CTOR(infer_Weight0_i_1byn) {
meminst = new infer_Weight0_i_1byn_ram("infer_Weight0_i_1byn_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_1byn() {
    delete meminst;
}


};//endmodule
#endif
