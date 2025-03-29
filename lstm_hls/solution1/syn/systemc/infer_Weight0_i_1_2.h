// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_1_2_H__
#define __infer_Weight0_i_1_2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_1_2_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_1_2_ram) {
        ram[0] = "0b10111011010001010001000100010111";
        ram[1] = "0b10111110001000000011000101001000";
        ram[2] = "0b10111111000101110100110000101011";
        ram[3] = "0b10111110010101101111000101010110";
        ram[4] = "0b00111100110111000010110100101000";
        ram[5] = "0b00111110001011000110101001111111";
        ram[6] = "0b00111101111111011101010001000001";
        ram[7] = "0b00111110101001001111000110000000";
        ram[8] = "0b00111101100001010001110000011001";
        ram[9] = "0b10111110000000111111111011100011";
        ram[10] = "0b00111110100110110111111111100001";
        ram[11] = "0b10111110000011110110111111010010";
        ram[12] = "0b00111101110000101100010001010000";
        ram[13] = "0b10111101000000000010001010011010";
        ram[14] = "0b00111101101101100101110010110011";
        ram[15] = "0b00111110100000001010000011110101";
        ram[16] = "0b10111101111011010011101011100111";
        ram[17] = "0b10111101100000000010100011100101";
        ram[18] = "0b00111100010110110111001010000010";
        ram[19] = "0b00111111101101011000001001000101";
        ram[20] = "0b00111101010011000010000111100010";
        ram[21] = "0b00111110101000011110001000110111";
        ram[22] = "0b10111101110100000110101000101011";
        ram[23] = "0b10111110100001101000001111100100";
        ram[24] = "0b00111110010101110101110100010100";
        ram[25] = "0b10111101100011010101010100011101";
        ram[26] = "0b00111101001110011101010111100101";
        ram[27] = "0b00111110001101001100111011000100";
        ram[28] = "0b10111110000001011101111001011001";
        ram[29] = "0b00111110111101001100000010011100";
        ram[30] = "0b00111101100111110001000101110011";
        ram[31] = "0b10111110100001100010010101000010";


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


SC_MODULE(infer_Weight0_i_1_2) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_1_2_ram* meminst;


SC_CTOR(infer_Weight0_i_1_2) {
meminst = new infer_Weight0_i_1_2_ram("infer_Weight0_i_1_2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_1_2() {
    delete meminst;
}


};//endmodule
#endif
