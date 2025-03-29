// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_0bWr_H__
#define __infer_Weight0_o_0bWr_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_0bWr_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_0bWr_ram) {
        ram[0] = "0b00111110111010010011001101111111";
        ram[1] = "0b00111101000111100100000011001000";
        ram[2] = "0b00111110110010100110101010101001";
        ram[3] = "0b00111101100010100011011010100000";
        ram[4] = "0b10111111110111111000100010111001";
        ram[5] = "0b10111110110011111000110111010110";
        ram[6] = "0b10111111000010010100011010100010";
        ram[7] = "0b10111101001110101100011000000100";
        ram[8] = "0b00111111010001100100000100101101";
        ram[9] = "0b10111110100110000100011010000100";
        ram[10] = "0b10111111101011101000001000001110";
        ram[11] = "0b00111110101111101101010111110001";
        ram[12] = "0b00111110100001010010101110110010";
        ram[13] = "0b00111110100011010000001011101111";
        ram[14] = "0b00111110000011001111101111111100";
        ram[15] = "0b10111111100011111110111101111100";
        ram[16] = "0b10111111100110101100001011011111";
        ram[17] = "0b00111111000011100111001111000101";
        ram[18] = "0b10111110001010000000001001111110";
        ram[19] = "0b00111110100100010000000001100000";
        ram[20] = "0b10111111001111001111110111100011";
        ram[21] = "0b10111111010011001001001100110010";
        ram[22] = "0b00111110101110110110101100001001";
        ram[23] = "0b10111111001110011101101111001011";
        ram[24] = "0b10111110100101010000011111101010";
        ram[25] = "0b10111110111110111010001111101100";
        ram[26] = "0b10111110101100100010100110100110";
        ram[27] = "0b00111100011110100111011001010011";
        ram[28] = "0b00111110010110100001001000110000";
        ram[29] = "0b00111111000110001000111001111010";
        ram[30] = "0b10111111100011110010111110001000";
        ram[31] = "0b00111110111111110001011010010000";


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


SC_MODULE(infer_Weight0_o_0bWr) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_0bWr_ram* meminst;


SC_CTOR(infer_Weight0_o_0bWr) {
meminst = new infer_Weight0_o_0bWr_ram("infer_Weight0_o_0bWr_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_0bWr() {
    delete meminst;
}


};//endmodule
#endif
