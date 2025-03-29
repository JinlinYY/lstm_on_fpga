// ==============================================================
// File generated on Fri Mar 28 13:00:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_0b1s_H__
#define __infer_Weight0_o_0b1s_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_0b1s_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_0b1s_ram) {
        ram[0] = "0b00111111000000011011101010100001";
        ram[1] = "0b00111101110111010110100111010011";
        ram[2] = "0b00111111100010000111100100110101";
        ram[3] = "0b10111110110001010011000010001100";
        ram[4] = "0b00111111100110000110011000100011";
        ram[5] = "0b00111110101110101111011101101110";
        ram[6] = "0b00111111010011011000000110101110";
        ram[7] = "0b10111110011011111111101101001000";
        ram[8] = "0b10111111001010110001100101100001";
        ram[9] = "0b10111110101011111100111100011100";
        ram[10] = "0b00111110010100100011100011011010";
        ram[11] = "0b10111111000110001101011100000110";
        ram[12] = "0b00111111011111100011000100001110";
        ram[13] = "0b10111111000100100001101000111111";
        ram[14] = "0b00111101100000010101010111010110";
        ram[15] = "0b10111101111010110111001111010010";
        ram[16] = "0b10111110100011000001110110001111";
        ram[17] = "0b00111110000001101110010011000001";
        ram[18] = "0b00111110000000000011101000110010";
        ram[19] = "0b00111111000010110001001111110000";
        ram[20] = "0b10111110101110100001101100011001";
        ram[21] = "0b00111110101000101000111000101110";
        ram[22] = "0b00111111011010101110110000000111";
        ram[23] = "0b10111111110001011011100111011000";
        ram[24] = "0b00111101101011011100111111001100";
        ram[25] = "0b10111110000001111011000001110000";
        ram[26] = "0b10111110101110110111001000011101";
        ram[27] = "0b00111110110101010000011001010111";
        ram[28] = "0b00111101111010011001110001111100";
        ram[29] = "0b00111101110111101001001110011111";
        ram[30] = "0b10111111100100001110111001110100";
        ram[31] = "0b00111101001001110011001111101100";


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


SC_MODULE(infer_Weight0_o_0b1s) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_0b1s_ram* meminst;


SC_CTOR(infer_Weight0_o_0b1s) {
meminst = new infer_Weight0_o_0b1s_ram("infer_Weight0_o_0b1s_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_0b1s() {
    delete meminst;
}


};//endmodule
#endif
