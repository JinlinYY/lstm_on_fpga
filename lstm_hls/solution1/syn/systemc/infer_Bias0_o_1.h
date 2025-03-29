// ==============================================================
// File generated on Fri Mar 28 13:00:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Bias0_o_1_H__
#define __infer_Bias0_o_1_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Bias0_o_1_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Bias0_o_1_ram) {
        ram[0] = "0b10111110010101010001001011101100";
        ram[1] = "0b00111101101011100010001010100011";
        ram[2] = "0b10111011100100001100110101000010";
        ram[3] = "0b00111110011011001101101100111000";
        ram[4] = "0b00111111101110000100111110100000";
        ram[5] = "0b00111110100101101000110111011010";
        ram[6] = "0b00111110010101111101001110010001";
        ram[7] = "0b10111101111101101010111100000100";
        ram[8] = "0b10111100101101111100010101101001";
        ram[9] = "0b00111101100101111100110011000000";
        ram[10] = "0b00111100010100101011001011000000";
        ram[11] = "0b10111110110110111100001001010101";
        ram[12] = "0b10111101100110010110010010100110";
        ram[13] = "0b00111111011011011110010100001000";
        ram[14] = "0b10111110011011111111111011110100";
        ram[15] = "0b00111111010001100100110000011111";


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


SC_MODULE(infer_Bias0_o_1) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Bias0_o_1_ram* meminst;


SC_CTOR(infer_Bias0_o_1) {
meminst = new infer_Bias0_o_1_ram("infer_Bias0_o_1_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~infer_Bias0_o_1() {
    delete meminst;
}


};//endmodule
#endif
