// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_0_4_H__
#define __infer_Weight0_o_0_4_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_0_4_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_0_4_ram) {
        ram[0] = "0b10111110111110110101011001110101";
        ram[1] = "0b00111110001110011001110101000101";
        ram[2] = "0b10111110110111000001010110110001";
        ram[3] = "0b00111101111010111110010110010111";
        ram[4] = "0b10111111100101101010100100110111";
        ram[5] = "0b00111111001000100111101111100101";
        ram[6] = "0b00111110100110111100011000100010";
        ram[7] = "0b10111101110010011011001110001101";
        ram[8] = "0b00111101111001110011011000000101";
        ram[9] = "0b10111110111101100010110111000111";
        ram[10] = "0b10111110111010110100111000010010";
        ram[11] = "0b00111111011010110000101001001110";
        ram[12] = "0b10111110100110010011010101010100";
        ram[13] = "0b00111110100000110010101111011100";
        ram[14] = "0b00111111001011000000000000010001";
        ram[15] = "0b10111101100011100110111100101111";
        ram[16] = "0b00111111000111101111110100000000";
        ram[17] = "0b10111101111001010100001111110010";
        ram[18] = "0b00111110010010010101011011000001";
        ram[19] = "0b10111110011101101110001100101110";
        ram[20] = "0b10111110101111100110001101000001";
        ram[21] = "0b00111110100111100100001110101010";
        ram[22] = "0b10111101011110111001000001100100";
        ram[23] = "0b00111101101010111001001101000111";
        ram[24] = "0b00111110100011010011010010011100";
        ram[25] = "0b00111110000110011100111101010111";
        ram[26] = "0b10111110110110000000010000010000";
        ram[27] = "0b10111101110011001111111110101000";
        ram[28] = "0b10111110100001110001011001001100";
        ram[29] = "0b10111111000010011100100110100011";
        ram[30] = "0b10111110100111101011111100100011";
        ram[31] = "0b10111111001001100100000100101101";


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


SC_MODULE(infer_Weight0_o_0_4) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_0_4_ram* meminst;


SC_CTOR(infer_Weight0_o_0_4) {
meminst = new infer_Weight0_o_0_4_ram("infer_Weight0_o_0_4_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_0_4() {
    delete meminst;
}


};//endmodule
#endif
