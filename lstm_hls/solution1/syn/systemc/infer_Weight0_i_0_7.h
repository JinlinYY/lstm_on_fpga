// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_0_7_H__
#define __infer_Weight0_i_0_7_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_0_7_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_0_7_ram) {
        ram[0] = "0b00111110011110001001001011101111";
        ram[1] = "0b10111111010100100011011011000001";
        ram[2] = "0b00111101001101001001100111010000";
        ram[3] = "0b00111101110010000110011010100001";
        ram[4] = "0b10111111000000101011111100000001";
        ram[5] = "0b10111110011110000010000000011101";
        ram[6] = "0b10111111001010011000001100110000";
        ram[7] = "0b10111101111101000110110101000000";
        ram[8] = "0b10111110101011110010110110100001";
        ram[9] = "0b10111111001100010110011110011001";
        ram[10] = "0b00111011110100101010101001011100";
        ram[11] = "0b10111110101111100101010101011100";
        ram[12] = "0b10111101001001000011010001011101";
        ram[13] = "0b00111110101011011101000000001111";
        ram[14] = "0b00111011000001101000101110100000";
        ram[15] = "0b00111101110001100010111011010011";
        ram[16] = "0b00111101110000110110100001101010";
        ram[17] = "0b10111111000001010110001101000101";
        ram[18] = "0b00111100111000101111100111001010";
        ram[19] = "0b10111111010010010110011010101110";
        ram[20] = "0b10111110101000001111011000000110";
        ram[21] = "0b00111101111111110011001110000111";
        ram[22] = "0b00111101011110100000100101000110";
        ram[23] = "0b10111110101111010111111010001001";
        ram[24] = "0b00111110101001000001100100111011";
        ram[25] = "0b10111111010011101100000110010000";
        ram[26] = "0b10111110110101010101011011110011";
        ram[27] = "0b10111101110011011110010111010010";
        ram[28] = "0b10111110010010100110001010101010";
        ram[29] = "0b10111111001001100110100001101110";
        ram[30] = "0b10111111001011010101100010010111";
        ram[31] = "0b10111110111101100111110010101111";


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


SC_MODULE(infer_Weight0_i_0_7) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_0_7_ram* meminst;


SC_CTOR(infer_Weight0_i_0_7) {
meminst = new infer_Weight0_i_0_7_ram("infer_Weight0_i_0_7_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_0_7() {
    delete meminst;
}


};//endmodule
#endif
