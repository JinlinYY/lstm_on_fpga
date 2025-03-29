// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_1_6_H__
#define __infer_Weight0_i_1_6_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_1_6_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_1_6_ram) {
        ram[0] = "0b00111101111101011000010110111110";
        ram[1] = "0b00111111101010110000001101001011";
        ram[2] = "0b10111111010000001000110100001001";
        ram[3] = "0b10111101110010110000000100000000";
        ram[4] = "0b00111110111000001111110111000001";
        ram[5] = "0b10111101101100010111110101101011";
        ram[6] = "0b00111111001100010100100010111011";
        ram[7] = "0b10111101111101100010011100111001";
        ram[8] = "0b10111110111000011100111111011101";
        ram[9] = "0b10111110000010011100011110111101";
        ram[10] = "0b10111110101000010110010101101111";
        ram[11] = "0b10111110100101101010111001011100";
        ram[12] = "0b10111110100011000101101110101111";
        ram[13] = "0b00111110110101111001100100011100";
        ram[14] = "0b00111110001111011110000010010011";
        ram[15] = "0b10111110110101100001011000001110";
        ram[16] = "0b00111101110000101100000110110001";
        ram[17] = "0b00111110010101110001110001010100";
        ram[18] = "0b10111111100000101011010010110111";
        ram[19] = "0b00111110110001101110110000011000";
        ram[20] = "0b10111110000010010001010000101011";
        ram[21] = "0b10111111010111110001100111000110";
        ram[22] = "0b10111110010100001111000110110010";
        ram[23] = "0b00111110100100111010010010110101";
        ram[24] = "0b00111110000111100111110011010000";
        ram[25] = "0b10111110110001110011001111001010";
        ram[26] = "0b00111110110111011000000101001001";
        ram[27] = "0b00111110001100111001001111101110";
        ram[28] = "0b10111101110100110101000000001001";
        ram[29] = "0b10111110111100010000010001001111";
        ram[30] = "0b00111111000000000000000011011010";
        ram[31] = "0b00111110011100011011000001000111";


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


SC_MODULE(infer_Weight0_i_1_6) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_1_6_ram* meminst;


SC_CTOR(infer_Weight0_i_1_6) {
meminst = new infer_Weight0_i_1_6_ram("infer_Weight0_i_1_6_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_1_6() {
    delete meminst;
}


};//endmodule
#endif
