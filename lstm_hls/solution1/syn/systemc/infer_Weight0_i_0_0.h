// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_0_0_H__
#define __infer_Weight0_i_0_0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_0_0_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_0_0_ram) {
        ram[0] = "0b00111100100100000111100101011111";
        ram[1] = "0b00111110100010000101010101110101";
        ram[2] = "0b00111110000011010011000111111101";
        ram[3] = "0b10111110010110000001010011010111";
        ram[4] = "0b10111101100100101100111110010110";
        ram[5] = "0b10111101100011010000000111000001";
        ram[6] = "0b00111110011000010111010100001000";
        ram[7] = "0b00111110111001000010110101101011";
        ram[8] = "0b10111101001100000000000101010000";
        ram[9] = "0b00111100100000010011011001100001";
        ram[10] = "0b00111101001100001010000110111110";
        ram[11] = "0b00111110001010111011011100110001";
        ram[12] = "0b10111110000110100001001011111001";
        ram[13] = "0b00111101111010010100001111100001";
        ram[14] = "0b10111101110010100010000000010100";
        ram[15] = "0b10111101111000110010000110100011";
        ram[16] = "0b10111110010101101110000011010010";
        ram[17] = "0b00111111000110111001011000111010";
        ram[18] = "0b10111100101001000011011110000010";
        ram[19] = "0b00111101100100111000011100010110";
        ram[20] = "0b10111101111110010111101110110111";
        ram[21] = "0b10111110011000010111001101110101";
        ram[22] = "0b10111101011001101111011000001110";
        ram[23] = "0b10111101100011001001010100111010";
        ram[24] = "0b10111110100100100111111011011000";
        ram[25] = "0b00111100100111011110001001101001";
        ram[26] = "0b10111110010000000100110010001100";
        ram[27] = "0b00111101110100000110100010011000";
        ram[28] = "0b00111100011101010101110111100110";
        ram[29] = "0b10111110100011101011100110100001";
        ram[30] = "0b10111110110001110101100100100101";
        ram[31] = "0b10111101010010001100010100000000";


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


SC_MODULE(infer_Weight0_i_0_0) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_0_0_ram* meminst;


SC_CTOR(infer_Weight0_i_0_0) {
meminst = new infer_Weight0_i_0_0_ram("infer_Weight0_i_0_0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_0_0() {
    delete meminst;
}


};//endmodule
#endif
