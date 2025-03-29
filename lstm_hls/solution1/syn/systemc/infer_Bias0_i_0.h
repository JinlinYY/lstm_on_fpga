// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Bias0_i_0_H__
#define __infer_Bias0_i_0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Bias0_i_0_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Bias0_i_0_ram) {
        ram[0] = "0b00111110101010000010100110001101";
        ram[1] = "0b10111100110000010101100011111011";
        ram[2] = "0b10111110000100110001110111110111";
        ram[3] = "0b00111110011100110000000010011011";
        ram[4] = "0b10111111011011001111001011100000";
        ram[5] = "0b10111111000111101011001110001001";
        ram[6] = "0b00111110100011100101101000110110";
        ram[7] = "0b00111110110111001110001011110011";
        ram[8] = "0b00111110101011101111010110001000";
        ram[9] = "0b00111110101000111100100001111110";
        ram[10] = "0b10111111101101010010111000010111";
        ram[11] = "0b10111111011100010100010010011010";
        ram[12] = "0b10111111011010011101000000001111";
        ram[13] = "0b10111110001011100001101110001111";
        ram[14] = "0b10111110001111100111111001100011";
        ram[15] = "0b10111110110100001111110001110010";


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


SC_MODULE(infer_Bias0_i_0) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Bias0_i_0_ram* meminst;


SC_CTOR(infer_Bias0_i_0) {
meminst = new infer_Bias0_i_0_ram("infer_Bias0_i_0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~infer_Bias0_i_0() {
    delete meminst;
}


};//endmodule
#endif
