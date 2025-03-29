// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Bias0_c_1_H__
#define __infer_Bias0_c_1_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Bias0_c_1_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Bias0_c_1_ram) {
        ram[0] = "0b00111110010110101101110110011100";
        ram[1] = "0b10111111001110000011110000011001";
        ram[2] = "0b10111101110111110001111000001000";
        ram[3] = "0b10111111100000111110001110110000";
        ram[4] = "0b00111101011000100001010000100111";
        ram[5] = "0b00111110101010000101011110001110";
        ram[6] = "0b00111111001101010000111110000100";
        ram[7] = "0b10111111000110110100110100000101";
        ram[8] = "0b10111111000100011111001100110000";
        ram[9] = "0b00111110010110010010011110010001";
        ram[10] = "0b00111100110000101110111111010100";
        ram[11] = "0b00111101010111101001010110111000";
        ram[12] = "0b10111110000111110011111011001101";
        ram[13] = "0b10111110100100101101011001100111";
        ram[14] = "0b10111101110010110001000010111010";
        ram[15] = "0b10111111010000000011101100001100";


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


SC_MODULE(infer_Bias0_c_1) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Bias0_c_1_ram* meminst;


SC_CTOR(infer_Bias0_c_1) {
meminst = new infer_Bias0_c_1_ram("infer_Bias0_c_1_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~infer_Bias0_c_1() {
    delete meminst;
}


};//endmodule
#endif
