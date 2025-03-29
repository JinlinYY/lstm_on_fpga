// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_1_0_H__
#define __infer_Weight0_f_1_0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_1_0_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_1_0_ram) {
        ram[0] = "0b00111110100000001001010100000111";
        ram[1] = "0b00111110110110000001010111100100";
        ram[2] = "0b10111101001111111111111011110100";
        ram[3] = "0b10111101010000101010100010000111";
        ram[4] = "0b10111101100110100010001101111101";
        ram[5] = "0b00111110111001000110100011101100";
        ram[6] = "0b00111110000011111110001010100100";
        ram[7] = "0b00111111000101010010101110110010";
        ram[8] = "0b00111111010001100100001000111001";
        ram[9] = "0b00111111101011000100010111101101";
        ram[10] = "0b10111110001010100111010101000111";
        ram[11] = "0b00111110110110101010111000001000";
        ram[12] = "0b10111101011100101011000000100001";
        ram[13] = "0b00111110110111011001101011011000";
        ram[14] = "0b10111110100001010011101000011101";
        ram[15] = "0b00111110111101011111101101110010";
        ram[16] = "0b10111111000010011100011100000100";
        ram[17] = "0b00111101111000111001110001010010";
        ram[18] = "0b00111110110100111101011010100110";
        ram[19] = "0b10111110100110011010011101111110";
        ram[20] = "0b00111111000001111011000000101101";
        ram[21] = "0b00111110000001101011011111101101";
        ram[22] = "0b00111111000001100001001101011110";
        ram[23] = "0b00111100110111101101000001110000";
        ram[24] = "0b00111110101100101100100011000101";
        ram[25] = "0b00111111010100001111010100101100";
        ram[26] = "0b00111110100001001100001110100000";
        ram[27] = "0b10111110001110101001010000110110";
        ram[28] = "0b00111101100011101010000001110111";
        ram[29] = "0b10111100101111110011000101101110";
        ram[30] = "0b10111110001111001010000011000011";
        ram[31] = "0b00111111100011111111110011111100";


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


SC_MODULE(infer_Weight0_f_1_0) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_1_0_ram* meminst;


SC_CTOR(infer_Weight0_f_1_0) {
meminst = new infer_Weight0_f_1_0_ram("infer_Weight0_f_1_0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_1_0() {
    delete meminst;
}


};//endmodule
#endif
