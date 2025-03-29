// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_1_8_H__
#define __infer_Weight0_i_1_8_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_1_8_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_1_8_ram) {
        ram[0] = "0b00111100100111100100010011111010";
        ram[1] = "0b10111110011101010110000011001000";
        ram[2] = "0b00111110101111000100111011111001";
        ram[3] = "0b10111110101110011001100110011010";
        ram[4] = "0b00111110010010011100010111100111";
        ram[5] = "0b10111111000001110001010110000011";
        ram[6] = "0b10111111000110001011001100101101";
        ram[7] = "0b10111110110001001111001001101011";
        ram[8] = "0b10111110110010100010000110000110";
        ram[9] = "0b10111110101111101001100010111011";
        ram[10] = "0b00111110010111100101111111111010";
        ram[11] = "0b10111110101001111000101100110111";
        ram[12] = "0b00111110111101100001011111000010";
        ram[13] = "0b00111110011011111111000111011000";
        ram[14] = "0b00111111000011010010110001011010";
        ram[15] = "0b00111110010000000011100001011100";
        ram[16] = "0b00111101100010110110010000010111";
        ram[17] = "0b00111101111110011001111001010010";
        ram[18] = "0b00111110000100001000100110100000";
        ram[19] = "0b00111110100110010110001011010000";
        ram[20] = "0b10111110001000100111111000001111";
        ram[21] = "0b10111111001000110001011101011001";
        ram[22] = "0b10111111001000101100110001001111";
        ram[23] = "0b00111110100110100111100001001011";
        ram[24] = "0b00111101011011011001011110110011";
        ram[25] = "0b10111101010000101010111011010001";
        ram[26] = "0b00111101101100000111010000100001";
        ram[27] = "0b10111110101010010101110100001011";
        ram[28] = "0b00111110100011100110100110001100";
        ram[29] = "0b10111110100111010001101001100101";
        ram[30] = "0b10111101100111011001010111011101";
        ram[31] = "0b10111110110001011000010011010011";


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


SC_MODULE(infer_Weight0_i_1_8) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_1_8_ram* meminst;


SC_CTOR(infer_Weight0_i_1_8) {
meminst = new infer_Weight0_i_1_8_ram("infer_Weight0_i_1_8_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_1_8() {
    delete meminst;
}


};//endmodule
#endif
