// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_1bsm_H__
#define __infer_Weight0_i_1bsm_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_1bsm_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_1bsm_ram) {
        ram[0] = "0b10111100000001001111000010010101";
        ram[1] = "0b10111110000100110000010010001010";
        ram[2] = "0b10111111001111110110000010011110";
        ram[3] = "0b10111110010011111111001000011011";
        ram[4] = "0b10111110010100111110000000110111";
        ram[5] = "0b00111110000111100111100101101000";
        ram[6] = "0b00111110010110101010001001011110";
        ram[7] = "0b10111110111010110111000010001011";
        ram[8] = "0b10111110101010010110011010111110";
        ram[9] = "0b10111110100010010110111000110111";
        ram[10] = "0b10111111000011110110000011010000";
        ram[11] = "0b00111110101100101001001101001011";
        ram[12] = "0b10111110110110100111010110101011";
        ram[13] = "0b00111111001101111000111110101100";
        ram[14] = "0b10111101011000111100110110011010";
        ram[15] = "0b10111111011010010011011000011110";
        ram[16] = "0b00111101100000111011101010111010";
        ram[17] = "0b10111100101001011101001010001101";
        ram[18] = "0b00111101100110011101000100101101";
        ram[19] = "0b00111110001000011001110010011101";
        ram[20] = "0b10111101111110010000010000101110";
        ram[21] = "0b00111110101011001110001011010010";
        ram[22] = "0b10111110001111000100111000101111";
        ram[23] = "0b00111111001010010010000111011110";
        ram[24] = "0b10111101001100011011101011000011";
        ram[25] = "0b00111111010110011110101001101000";
        ram[26] = "0b10111111001010011001001001100100";
        ram[27] = "0b10111110100010011100110001110101";
        ram[28] = "0b10111110111100100101000101011101";
        ram[29] = "0b10111110101001101101111001010101";
        ram[30] = "0b10111110111010011010101100001000";
        ram[31] = "0b00111110011100001010111000010000";


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


SC_MODULE(infer_Weight0_i_1bsm) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_1bsm_ram* meminst;


SC_CTOR(infer_Weight0_i_1bsm) {
meminst = new infer_Weight0_i_1bsm_ram("infer_Weight0_i_1bsm_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_1bsm() {
    delete meminst;
}


};//endmodule
#endif
