// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Bias0_f_1_H__
#define __infer_Bias0_f_1_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Bias0_f_1_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Bias0_f_1_ram) {
        ram[0] = "0b00111111110000010001001101110011";
        ram[1] = "0b00111111010101011011011100111001";
        ram[2] = "0b00111111010010110110001001100011";
        ram[3] = "0b00111111110010011001101000100000";
        ram[4] = "0b01000000001001100000011011001000";
        ram[5] = "0b00111110110001100001101001100001";
        ram[6] = "0b00111110110100110000111101001001";
        ram[7] = "0b00111111100000010011001011110000";
        ram[8] = "0b00111110111011100110010101111100";
        ram[9] = "0b00111111000111110100001101010010";
        ram[10] = "0b00111110100001101010011000111011";
        ram[11] = "0b00111111001010000101100111011010";
        ram[12] = "0b00111111010001011010110011101111";
        ram[13] = "0b00111110100101000001110110001111";
        ram[14] = "0b00111111000111101001001011010101";
        ram[15] = "0b00111110101110101111111000111111";


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


SC_MODULE(infer_Bias0_f_1) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Bias0_f_1_ram* meminst;


SC_CTOR(infer_Bias0_f_1) {
meminst = new infer_Bias0_f_1_ram("infer_Bias0_f_1_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~infer_Bias0_f_1() {
    delete meminst;
}


};//endmodule
#endif
