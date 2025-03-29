// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Bias0_c_0_H__
#define __infer_Bias0_c_0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Bias0_c_0_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Bias0_c_0_ram) {
        ram[0] = "0b10111101000101101111001000011111";
        ram[1] = "0b00111101010101101101010011000011";
        ram[2] = "0b10111111001101110011111110010110";
        ram[3] = "0b00111110010010011011110110000100";
        ram[4] = "0b00111111010100100000100111111111";
        ram[5] = "0b00111100011100001111000101101111";
        ram[6] = "0b00111101100011001100100000010101";
        ram[7] = "0b10111111011001001110100010010110";
        ram[8] = "0b00111111000001111010000001000000";
        ram[9] = "0b00111110011100101011011010101110";
        ram[10] = "0b10111101111110000101111100000111";
        ram[11] = "0b00111101110100010001101001010100";
        ram[12] = "0b10111110100011111111101100000101";
        ram[13] = "0b10111110110110111100001101100001";
        ram[14] = "0b00111110100110110101101110010010";
        ram[15] = "0b10111101011011001111000011111010";


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


SC_MODULE(infer_Bias0_c_0) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Bias0_c_0_ram* meminst;


SC_CTOR(infer_Bias0_c_0) {
meminst = new infer_Bias0_c_0_ram("infer_Bias0_c_0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~infer_Bias0_c_0() {
    delete meminst;
}


};//endmodule
#endif
