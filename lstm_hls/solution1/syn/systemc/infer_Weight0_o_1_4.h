// ==============================================================
// File generated on Fri Mar 28 13:00:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_1_4_H__
#define __infer_Weight0_o_1_4_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_1_4_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_1_4_ram) {
        ram[0] = "0b00111110000000000111010010100111";
        ram[1] = "0b10111101111011010100011011110110";
        ram[2] = "0b00111101101000111111100110100101";
        ram[3] = "0b10111101000011110110111100001001";
        ram[4] = "0b10111110101010110010100101011111";
        ram[5] = "0b00111100100100011111001011011100";
        ram[6] = "0b00111110101001100101010011010110";
        ram[7] = "0b10111110011111001110000000110011";
        ram[8] = "0b10111110010100110111010101000011";
        ram[9] = "0b00111111001101110000001010000010";
        ram[10] = "0b10111101101010010011011000111111";
        ram[11] = "0b10111110100000001101011101011010";
        ram[12] = "0b00111110010001000101110001111001";
        ram[13] = "0b00111110101001110000010101100100";
        ram[14] = "0b10111101100001100001010010011100";
        ram[15] = "0b10111111001011010001011000010010";
        ram[16] = "0b10111110110100111101111110001111";
        ram[17] = "0b00111100001101000001011111001010";
        ram[18] = "0b00111101011010001101101001111111";
        ram[19] = "0b10111101101000001011111001010001";
        ram[20] = "0b10111101110111010011000010101101";
        ram[21] = "0b00111110100101110000110011111110";
        ram[22] = "0b00111111000001000010011101110100";
        ram[23] = "0b10111110001100110000001011110111";
        ram[24] = "0b00111110100000111000001010100001";
        ram[25] = "0b00111111000011011111010110111110";
        ram[26] = "0b10111110011110111100111011001000";
        ram[27] = "0b10111110000011000011000101011001";
        ram[28] = "0b00111110001001010111011011001101";
        ram[29] = "0b10111110111001010010000110011011";
        ram[30] = "0b00111111010000001101110000000001";
        ram[31] = "0b00111110001110001011000111011101";


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


SC_MODULE(infer_Weight0_o_1_4) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_1_4_ram* meminst;


SC_CTOR(infer_Weight0_o_1_4) {
meminst = new infer_Weight0_o_1_4_ram("infer_Weight0_o_1_4_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_1_4() {
    delete meminst;
}


};//endmodule
#endif
