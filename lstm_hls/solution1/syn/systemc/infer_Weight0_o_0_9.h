// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_0_9_H__
#define __infer_Weight0_o_0_9_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_0_9_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_0_9_ram) {
        ram[0] = "0b10111111001010001010001101000000";
        ram[1] = "0b10111110110110111000110001010100";
        ram[2] = "0b10111111100001111001111111011100";
        ram[3] = "0b10111101000011101110010010011111";
        ram[4] = "0b10111110111011111001100001010010";
        ram[5] = "0b10111111001011001001110000101100";
        ram[6] = "0b00111110110000100110101011001010";
        ram[7] = "0b10111110110000011011010101100011";
        ram[8] = "0b10111110111001001111000011111010";
        ram[9] = "0b00111110101101001111110110110001";
        ram[10] = "0b10111111100110110011000001100010";
        ram[11] = "0b00111110110011000010111001110111";
        ram[12] = "0b00111111100100001111011111010011";
        ram[13] = "0b10111101011101111011111000010010";
        ram[14] = "0b00111110110111100100011000000110";
        ram[15] = "0b00111110000011110101111101001110";
        ram[16] = "0b00111101110010101111100100100011";
        ram[17] = "0b00111110001011101111001010000100";
        ram[18] = "0b10111101010011100011001001011101";
        ram[19] = "0b00111111100101010000101001110000";
        ram[20] = "0b10111110000000000101101001110001";
        ram[21] = "0b00111101110111100100110001010001";
        ram[22] = "0b10111110110001010010101110110010";
        ram[23] = "0b00111110101011001001011011001100";
        ram[24] = "0b00111110100110010001100111001110";
        ram[25] = "0b10111110001100000011010010110001";
        ram[26] = "0b10111101111010100001110101110101";
        ram[27] = "0b00111111010000010010111100011011";
        ram[28] = "0b00111111010010011111001001111000";
        ram[29] = "0b00111111000000001100010000100110";
        ram[30] = "0b00111111000100010000111001000101";
        ram[31] = "0b10111110100100110100010100101000";


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


SC_MODULE(infer_Weight0_o_0_9) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_0_9_ram* meminst;


SC_CTOR(infer_Weight0_o_0_9) {
meminst = new infer_Weight0_o_0_9_ram("infer_Weight0_o_0_9_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_0_9() {
    delete meminst;
}


};//endmodule
#endif
