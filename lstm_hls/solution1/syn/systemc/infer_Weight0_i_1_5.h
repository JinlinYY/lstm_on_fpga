// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_1_5_H__
#define __infer_Weight0_i_1_5_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_1_5_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_1_5_ram) {
        ram[0] = "0b10111111100100011101101000001110";
        ram[1] = "0b10111110101100111011110001101111";
        ram[2] = "0b00111110000011111101101100001010";
        ram[3] = "0b10111110100110110010000010111000";
        ram[4] = "0b00111110110101101001001011010101";
        ram[5] = "0b00111110100011110111100001010111";
        ram[6] = "0b00111101111110001001111001110111";
        ram[7] = "0b00111110100101010010000001001011";
        ram[8] = "0b00111110010111101110111000001111";
        ram[9] = "0b00111111101111100000101001010010";
        ram[10] = "0b00111111000001001000010010110110";
        ram[11] = "0b00111111010011101101100110001100";
        ram[12] = "0b10111111000001100000100110101011";
        ram[13] = "0b10111111001011000101101101011011";
        ram[14] = "0b00111100100100011101101111001011";
        ram[15] = "0b10111101100010110001001101011001";
        ram[16] = "0b10111101110100100101011100000000";
        ram[17] = "0b10111101101011011110011011011110";
        ram[18] = "0b10111110011111101111011111000010";
        ram[19] = "0b00111110101101011101000111100101";
        ram[20] = "0b00111111010110110100101000010010";
        ram[21] = "0b00111111000000111001110101101111";
        ram[22] = "0b00111111001110100000101011011001";
        ram[23] = "0b00111110010000100011100001010100";
        ram[24] = "0b00111101100001100110011111111001";
        ram[25] = "0b00111111000100000110100000000001";
        ram[26] = "0b00111111100111101101110011001010";
        ram[27] = "0b10111101111110010000010111000000";
        ram[28] = "0b10111101011100100000010000101001";
        ram[29] = "0b00111111001010001101100001110111";
        ram[30] = "0b10111110011011100001010111001010";
        ram[31] = "0b00111110011001110010011111011101";


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


SC_MODULE(infer_Weight0_i_1_5) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_1_5_ram* meminst;


SC_CTOR(infer_Weight0_i_1_5) {
meminst = new infer_Weight0_i_1_5_ram("infer_Weight0_i_1_5_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_1_5() {
    delete meminst;
}


};//endmodule
#endif
