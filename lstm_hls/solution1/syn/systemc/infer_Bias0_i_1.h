// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Bias0_i_1_H__
#define __infer_Bias0_i_1_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Bias0_i_1_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 16;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(infer_Bias0_i_1_ram) {
        ram[0] = "0b00111111000001111101111100111011";
        ram[1] = "0b00111101111111100011100111110111";
        ram[2] = "0b10111110011011001011010100110101";
        ram[3] = "0b00111111110010110110011011101000";
        ram[4] = "0b11000000000101001010100011000001";
        ram[5] = "0b10111110110011110001011100010110";
        ram[6] = "0b10111101110001010111010000101110";
        ram[7] = "0b00111110111100100001100010111101";
        ram[8] = "0b00111110011010111110111011000100";
        ram[9] = "0b10111110110001111011110100000110";
        ram[10] = "0b00111110100011101111000011010000";
        ram[11] = "0b00111110100101001011111110110001";
        ram[12] = "0b10111111110001001011000000001000";
        ram[13] = "0b00111111001111010101011010110000";
        ram[14] = "0b10111111001101101100100100011001";
        ram[15] = "0b10111111010111000100110000111000";


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


SC_MODULE(infer_Bias0_i_1) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Bias0_i_1_ram* meminst;


SC_CTOR(infer_Bias0_i_1) {
meminst = new infer_Bias0_i_1_ram("infer_Bias0_i_1_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~infer_Bias0_i_1() {
    delete meminst;
}


};//endmodule
#endif
