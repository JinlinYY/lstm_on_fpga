// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_1_4_H__
#define __infer_Weight0_i_1_4_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_1_4_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_1_4_ram) {
        ram[0] = "0b00111110001011000001100010110101";
        ram[1] = "0b10111101010110010111100000001100";
        ram[2] = "0b00111101111111000110011101011010";
        ram[3] = "0b10111110011101000101000000100111";
        ram[4] = "0b10111101000001001111001110111010";
        ram[5] = "0b10111111001001010101100011011010";
        ram[6] = "0b00111110010010010101100100011101";
        ram[7] = "0b00111111010110011011010000100100";
        ram[8] = "0b00111110000001011111001101010010";
        ram[9] = "0b10111010110001010000000001010000";
        ram[10] = "0b00111110111101111101101001100010";
        ram[11] = "0b00111101100000010000110001101111";
        ram[12] = "0b10111110100101000111101001011011";
        ram[13] = "0b00111110101000100110011110100101";
        ram[14] = "0b00111110101111111001100011111010";
        ram[15] = "0b10111110101111101101010100000110";
        ram[16] = "0b10111110000110100001011100101011";
        ram[17] = "0b00111110001111001101011110001100";
        ram[18] = "0b00111110010000101010011010110001";
        ram[19] = "0b10111110001000101110100000111010";
        ram[20] = "0b10111111001001100011101111001101";
        ram[21] = "0b00111111001011000010100100000111";
        ram[22] = "0b10111101110101101101011001010110";
        ram[23] = "0b00111111001011011110100010100011";
        ram[24] = "0b10111110101110100001010101110111";
        ram[25] = "0b00111100000110111000100010000111";
        ram[26] = "0b00111110001010110111001011000101";
        ram[27] = "0b00111110100101100100100110110010";
        ram[28] = "0b00111110100101000011111000010000";
        ram[29] = "0b10111111001101000101100111001001";
        ram[30] = "0b10111110101010100011111110001010";
        ram[31] = "0b10111110001001000110100001000101";


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


SC_MODULE(infer_Weight0_i_1_4) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_1_4_ram* meminst;


SC_CTOR(infer_Weight0_i_1_4) {
meminst = new infer_Weight0_i_1_4_ram("infer_Weight0_i_1_4_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_1_4() {
    delete meminst;
}


};//endmodule
#endif
