// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_1_0_H__
#define __infer_Weight0_i_1_0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_1_0_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_1_0_ram) {
        ram[0] = "0b00111110000101001010101000010001";
        ram[1] = "0b00111111000100001000111001111010";
        ram[2] = "0b10111110001000000111000010111001";
        ram[3] = "0b10111110101000000100110010001100";
        ram[4] = "0b10111110101111001101011100000110";
        ram[5] = "0b10111110110010001110010001110101";
        ram[6] = "0b00111101010101010011000101010101";
        ram[7] = "0b00111111010000011000000101001001";
        ram[8] = "0b10111110001010100100110100101011";
        ram[9] = "0b10111111000010100101110110101111";
        ram[10] = "0b10111111000101010010011100101101";
        ram[11] = "0b10111101101101000011001000000001";
        ram[12] = "0b10111110101100010001100111001110";
        ram[13] = "0b00111100010010110000011111010001";
        ram[14] = "0b10111111000011110010011001101100";
        ram[15] = "0b00111111010011100101001011110000";
        ram[16] = "0b10111111000010110110010000111001";
        ram[17] = "0b00111110110011101101101100001110";
        ram[18] = "0b00111101111111010010001110010010";
        ram[19] = "0b10111110101101010110011111011100";
        ram[20] = "0b10111110101001101000010000100111";
        ram[21] = "0b00111111000100001101000000100100";
        ram[22] = "0b00111101101000000100111010100101";
        ram[23] = "0b00111010111001110111100100100000";
        ram[24] = "0b10111110100101110010011010001101";
        ram[25] = "0b10111110100110001111010011111001";
        ram[26] = "0b00111110110011010111011001101000";
        ram[27] = "0b10111111001100001110110101011111";
        ram[28] = "0b10111110111001010110101011011111";
        ram[29] = "0b00111111100011110011001101110110";
        ram[30] = "0b10111110101111010010000100010100";
        ram[31] = "0b00111110100010110001010101110010";


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


SC_MODULE(infer_Weight0_i_1_0) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_1_0_ram* meminst;


SC_CTOR(infer_Weight0_i_1_0) {
meminst = new infer_Weight0_i_1_0_ram("infer_Weight0_i_1_0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_1_0() {
    delete meminst;
}


};//endmodule
#endif
