// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_0brm_H__
#define __infer_Weight0_i_0brm_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_0brm_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_0brm_ram) {
        ram[0] = "0b00111101001101011100010110110101";
        ram[1] = "0b00111110101100000100101011011000";
        ram[2] = "0b10111100100111001101000111001000";
        ram[3] = "0b00111100111000101011010010010110";
        ram[4] = "0b10111111000101100000001000100001";
        ram[5] = "0b10111101101010011101000001100011";
        ram[6] = "0b00111110110100100101010000011110";
        ram[7] = "0b00111110100011000011101011001001";
        ram[8] = "0b10111111000101001110111001101100";
        ram[9] = "0b10111111001111111000000010101010";
        ram[10] = "0b10111110000010110000100011011101";
        ram[11] = "0b00111101101010001011101100001010";
        ram[12] = "0b10111110110111011111000101011010";
        ram[13] = "0b10111101110011000001011111101100";
        ram[14] = "0b10111110011000011000011101100010";
        ram[15] = "0b10111111000001000010100001011111";
        ram[16] = "0b00111101101111000110001110101110";
        ram[17] = "0b10111110111100101100101010111100";
        ram[18] = "0b10111111001011110011101010111101";
        ram[19] = "0b00111111000000000110011111110001";
        ram[20] = "0b00111101111000101100010111100011";
        ram[21] = "0b10111011000110110000111011100101";
        ram[22] = "0b10111111011111011000011100101111";
        ram[23] = "0b10111110110111100110100001011110";
        ram[24] = "0b10111110100000110110000011110010";
        ram[25] = "0b00111111101000110101101001010011";
        ram[26] = "0b00111111001011110000000000110111";
        ram[27] = "0b00111101010111101111110110000111";
        ram[28] = "0b00111111010000010000110000011100";
        ram[29] = "0b10111111100001001010000000110100";
        ram[30] = "0b10111111000100101000101100101010";
        ram[31] = "0b00111110000101100010111001001101";


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


SC_MODULE(infer_Weight0_i_0brm) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_0brm_ram* meminst;


SC_CTOR(infer_Weight0_i_0brm) {
meminst = new infer_Weight0_i_0brm_ram("infer_Weight0_i_0brm_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_0brm() {
    delete meminst;
}


};//endmodule
#endif
