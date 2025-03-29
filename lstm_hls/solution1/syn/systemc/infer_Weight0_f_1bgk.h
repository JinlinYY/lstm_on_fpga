// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_1bgk_H__
#define __infer_Weight0_f_1bgk_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_1bgk_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_1bgk_ram) {
        ram[0] = "0b10111110110101100111101101011111";
        ram[1] = "0b10111111001101111100000011100100";
        ram[2] = "0b00111111000001001100011011111000";
        ram[3] = "0b00111100000100100011010111111000";
        ram[4] = "0b00111111010001011110111100001111";
        ram[5] = "0b00111111000111100101111111001000";
        ram[6] = "0b10111111001000000001010001100010";
        ram[7] = "0b10111111001001100100011001011010";
        ram[8] = "0b00111110100100001101101110101101";
        ram[9] = "0b00111110000101010100110100011111";
        ram[10] = "0b10111101100110000100111101001100";
        ram[11] = "0b00111111000101111001000010000110";
        ram[12] = "0b10111101100000100101001110010111";
        ram[13] = "0b10111110100010111000011010110001";
        ram[14] = "0b00111110001001101001000010011011";
        ram[15] = "0b00111111001101011111011101010001";
        ram[16] = "0b10111101000000010000101101100011";
        ram[17] = "0b00111110100010001000110001100001";
        ram[18] = "0b10111111001000111110100000010100";
        ram[19] = "0b10111110011100101110011110110100";
        ram[20] = "0b00111101110010100100010011001000";
        ram[21] = "0b10111110100101011000000100000110";
        ram[22] = "0b00111111000000011000100001001100";
        ram[23] = "0b00111110000001001000100101001100";
        ram[24] = "0b00111111001101011000110010001111";
        ram[25] = "0b10111111000111000000001101000111";
        ram[26] = "0b10111110010100110100111010111010";
        ram[27] = "0b00111101010001111101100100010010";
        ram[28] = "0b10111111010011101011101010001100";
        ram[29] = "0b00111110000001000101000001101010";
        ram[30] = "0b00111100101100001001101001100111";
        ram[31] = "0b10111111000011001000110111110011";


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


SC_MODULE(infer_Weight0_f_1bgk) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_1bgk_ram* meminst;


SC_CTOR(infer_Weight0_f_1bgk) {
meminst = new infer_Weight0_f_1bgk_ram("infer_Weight0_f_1bgk_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_1bgk() {
    delete meminst;
}


};//endmodule
#endif
