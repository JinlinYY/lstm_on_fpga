// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_0_0_H__
#define __infer_Weight0_o_0_0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_0_0_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_0_0_ram) {
        ram[0] = "0b00111101111001110110110110011000";
        ram[1] = "0b10111101110100100000010110111100";
        ram[2] = "0b00111110010101100101100000111111";
        ram[3] = "0b10111100110010111110101001001111";
        ram[4] = "0b00111111000100010100001100011000";
        ram[5] = "0b00111100110101110001000010001000";
        ram[6] = "0b10111101111001100111000011100011";
        ram[7] = "0b10111101110011010101101101101000";
        ram[8] = "0b10111101101100010000001101000011";
        ram[9] = "0b00111101110100001110101010011110";
        ram[10] = "0b10111110100010000000101001111100";
        ram[11] = "0b10111101100011111010001111111101";
        ram[12] = "0b00111101110001111110001110001111";
        ram[13] = "0b00111101101000111000101001111110";
        ram[14] = "0b10111110000000000001111101110101";
        ram[15] = "0b10111101110010010111100001001111";
        ram[16] = "0b00111110010100111100100001011100";
        ram[17] = "0b10111101010100000010011010001001";
        ram[18] = "0b00111100100100100001011010000011";
        ram[19] = "0b00111101110100101111100001111011";
        ram[20] = "0b00111100100000111000001110101110";
        ram[21] = "0b00111110101101110110011011000111";
        ram[22] = "0b00111101101011100100101001111011";
        ram[23] = "0b10111011101011110100011010101010";
        ram[24] = "0b10111110001110110011010000011110";
        ram[25] = "0b10111101100100001011111110100001";
        ram[26] = "0b01000000001100000011010000010001";
        ram[27] = "0b10111110000000010100011111110001";
        ram[28] = "0b00111101100011100110011011001011";
        ram[29] = "0b10111100010111000001011000010110";
        ram[30] = "0b10111101000110000010100110001101";
        ram[31] = "0b00111100000010010101000001110110";


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


SC_MODULE(infer_Weight0_o_0_0) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_0_0_ram* meminst;


SC_CTOR(infer_Weight0_o_0_0) {
meminst = new infer_Weight0_o_0_0_ram("infer_Weight0_o_0_0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_0_0() {
    delete meminst;
}


};//endmodule
#endif
