// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_1_1_H__
#define __infer_Weight0_i_1_1_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_1_1_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_1_1_ram) {
        ram[0] = "0b00111111000000111101010010111111";
        ram[1] = "0b10111111100011001000000000001111";
        ram[2] = "0b10111111010001111000010001000101";
        ram[3] = "0b00111111011100101100001101010100";
        ram[4] = "0b00111111001100101100111000110110";
        ram[5] = "0b00111110111111010000110110101110";
        ram[6] = "0b00111110111100100101011000010101";
        ram[7] = "0b10111111101100011101100001011010";
        ram[8] = "0b10111111010110111111110010101000";
        ram[9] = "0b00111100101010000110001011110110";
        ram[10] = "0b00111110001100010100010011001100";
        ram[11] = "0b00111111010001010111111100110000";
        ram[12] = "0b00111110100111100011101101000111";
        ram[13] = "0b10111110101001001000111101110101";
        ram[14] = "0b00111110010001101011010001000010";
        ram[15] = "0b00111101111000011110110111100001";
        ram[16] = "0b10111111111011001100000101110110";
        ram[17] = "0b10111101110100010111000111100011";
        ram[18] = "0b10111110101111111011011001010110";
        ram[19] = "0b10111111000101001010010101101010";
        ram[20] = "0b00111101001111100100000101001110";
        ram[21] = "0b10111111000111101111010001011010";
        ram[22] = "0b00111111100011011001001000001000";
        ram[23] = "0b00111110111001001001101010011001";
        ram[24] = "0b10111110111100110101111010110111";
        ram[25] = "0b00111111010111100000010110111100";
        ram[26] = "0b00111111000000011011000110111000";
        ram[27] = "0b10111110010100001100011101111110";
        ram[28] = "0b10111011000111011100111110001001";
        ram[29] = "0b10111111101000100100111000010110";
        ram[30] = "0b10111110101010011111011101010001";
        ram[31] = "0b10111111001100011001011110110011";


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


SC_MODULE(infer_Weight0_i_1_1) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_1_1_ram* meminst;


SC_CTOR(infer_Weight0_i_1_1) {
meminst = new infer_Weight0_i_1_1_ram("infer_Weight0_i_1_1_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_1_1() {
    delete meminst;
}


};//endmodule
#endif
