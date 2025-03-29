// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_0bYs_H__
#define __infer_Weight0_o_0bYs_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_0bYs_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_0bYs_ram) {
        ram[0] = "0b00111110100111010010010011100001";
        ram[1] = "0b10111110101001111100110011000000";
        ram[2] = "0b00111010111110010110111000010110";
        ram[3] = "0b10111110111010100101110010000001";
        ram[4] = "0b00111110110000100110010000011011";
        ram[5] = "0b10111110100101000001101011001110";
        ram[6] = "0b00111110101101110110101001110010";
        ram[7] = "0b10111110100111101010000010011001";
        ram[8] = "0b00111110000100010100110001100110";
        ram[9] = "0b10111110011100001110011111111111";
        ram[10] = "0b00111111010010000100110000000110";
        ram[11] = "0b10111110111010000110111010100000";
        ram[12] = "0b00111111010111110011110100101001";
        ram[13] = "0b00111101000001101001101001001110";
        ram[14] = "0b00111110010101011000000100000110";
        ram[15] = "0b10111111010110000111110001110100";
        ram[16] = "0b00111110110100010101010111111000";
        ram[17] = "0b10111110001011101110111001010010";
        ram[18] = "0b10111110010010100110101101010001";
        ram[19] = "0b00111101100101010011101111010001";
        ram[20] = "0b10111100110000111110011101001011";
        ram[21] = "0b00111111001001101100110011000100";
        ram[22] = "0b00111101110101100100100001000001";
        ram[23] = "0b10111111000110100110000011110110";
        ram[24] = "0b00111110010011101101100011010011";
        ram[25] = "0b00111110100111100111100010011110";
        ram[26] = "0b10111110011111101110010011100010";
        ram[27] = "0b00111110110000000001010100011010";
        ram[28] = "0b10111101110100111110110011001100";
        ram[29] = "0b10111110000101001000110111000001";
        ram[30] = "0b10111101101001111111000110110111";
        ram[31] = "0b00111110100000000101011011100111";


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


SC_MODULE(infer_Weight0_o_0bYs) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_0bYs_ram* meminst;


SC_CTOR(infer_Weight0_o_0bYs) {
meminst = new infer_Weight0_o_0bYs_ram("infer_Weight0_o_0bYs_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_0bYs() {
    delete meminst;
}


};//endmodule
#endif
