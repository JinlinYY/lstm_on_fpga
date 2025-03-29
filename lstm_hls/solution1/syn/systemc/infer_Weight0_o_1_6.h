// ==============================================================
// File generated on Fri Mar 28 13:00:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_1_6_H__
#define __infer_Weight0_o_1_6_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_1_6_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_1_6_ram) {
        ram[0] = "0b10111110010011001110101010101111";
        ram[1] = "0b00111101110010100110010000111101";
        ram[2] = "0b10111100110000111001100110110011";
        ram[3] = "0b00111110011001000011010110101101";
        ram[4] = "0b10111111000010111000011110101101";
        ram[5] = "0b10111110011001100100110101111111";
        ram[6] = "0b00111111100110000001101101111110";
        ram[7] = "0b00111110100011001110110110110011";
        ram[8] = "0b00111101101010001100001101101110";
        ram[9] = "0b10111101110001010010110001011010";
        ram[10] = "0b00111111000100011110100111110010";
        ram[11] = "0b10111110101100000001010111100100";
        ram[12] = "0b00111110101000001010100111011111";
        ram[13] = "0b10111110100101100100100001000001";
        ram[14] = "0b00111110000111110001001100000110";
        ram[15] = "0b00111110100111011101001010101111";
        ram[16] = "0b10111110100010111110101000101101";
        ram[17] = "0b00111110101001010100011000001011";
        ram[18] = "0b00111110101111101110011101100000";
        ram[19] = "0b00111111010101000001101101000011";
        ram[20] = "0b00111110010111010000001110010111";
        ram[21] = "0b00111111010000010101010000100010";
        ram[22] = "0b00111111011110110110110000010110";
        ram[23] = "0b00111111010110100000111010010101";
        ram[24] = "0b00111111100011101011101101110111";
        ram[25] = "0b00111101000011011100101110011011";
        ram[26] = "0b10111110111000110101011010111000";
        ram[27] = "0b00111110110000011100010101100001";
        ram[28] = "0b10111111000111101001110010111011";
        ram[29] = "0b00111111001101101010010100101111";
        ram[30] = "0b10111110001111100101010011111000";
        ram[31] = "0b10111110111010110001101001101101";


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


SC_MODULE(infer_Weight0_o_1_6) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_1_6_ram* meminst;


SC_CTOR(infer_Weight0_o_1_6) {
meminst = new infer_Weight0_o_1_6_ram("infer_Weight0_o_1_6_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_1_6() {
    delete meminst;
}


};//endmodule
#endif
