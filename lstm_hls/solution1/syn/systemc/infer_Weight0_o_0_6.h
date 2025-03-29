// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_0_6_H__
#define __infer_Weight0_o_0_6_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_0_6_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_0_6_ram) {
        ram[0] = "0b10111110111100111000011111011111";
        ram[1] = "0b00111100111011001010101010111001";
        ram[2] = "0b10111110101010010111010001100000";
        ram[3] = "0b00111110010010111101010100010011";
        ram[4] = "0b10111111001101011101111110000111";
        ram[5] = "0b10111110110101111011100111100000";
        ram[6] = "0b10111110100000000001001110001000";
        ram[7] = "0b00111110100100101001000101010011";
        ram[8] = "0b10111110011110010001011001000100";
        ram[9] = "0b10111111010100011101000000001111";
        ram[10] = "0b10111110000010111101100100000010";
        ram[11] = "0b00111111010101111000000110110110";
        ram[12] = "0b10111110010000101010100011001010";
        ram[13] = "0b00111110100110110100001001101000";
        ram[14] = "0b10111110100101110100001111001000";
        ram[15] = "0b10111100001011011111001011101101";
        ram[16] = "0b00111101011001111011111101100010";
        ram[17] = "0b00111101100101000110010101100010";
        ram[18] = "0b00111110010100011011101000111101";
        ram[19] = "0b00111111000010001110101111101110";
        ram[20] = "0b00111110110000011101010001110100";
        ram[21] = "0b10111101100100101000010010011101";
        ram[22] = "0b10111110001100101001010111101010";
        ram[23] = "0b00111111101110110001000011101101";
        ram[24] = "0b10111110011010011111111111010110";
        ram[25] = "0b00111011101000000010101110000100";
        ram[26] = "0b10111110100100010101110010000101";
        ram[27] = "0b10111110100010001010111001110101";
        ram[28] = "0b10111100011010100110011111101000";
        ram[29] = "0b10111101111001100101000011100111";
        ram[30] = "0b10111110101001010111011110111000";
        ram[31] = "0b10111110011111111110010111001001";


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


SC_MODULE(infer_Weight0_o_0_6) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_0_6_ram* meminst;


SC_CTOR(infer_Weight0_o_0_6) {
meminst = new infer_Weight0_o_0_6_ram("infer_Weight0_o_0_6_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_0_6() {
    delete meminst;
}


};//endmodule
#endif
