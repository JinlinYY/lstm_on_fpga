// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_0_8_H__
#define __infer_Weight0_f_0_8_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_0_8_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_0_8_ram) {
        ram[0] = "0b10111110111111000111000010101000";
        ram[1] = "0b00111110100101011001100100000011";
        ram[2] = "0b10111110111101101111100101010101";
        ram[3] = "0b00111101101101100011111111011101";
        ram[4] = "0b00111110100110100101000011010111";
        ram[5] = "0b10111101001111111111110011011011";
        ram[6] = "0b10111110111010111100000101001000";
        ram[7] = "0b00111100101100001011100111011100";
        ram[8] = "0b10111110111101011010010110111001";
        ram[9] = "0b00111111000101111111110101010000";
        ram[10] = "0b10111110100000001111010010110110";
        ram[11] = "0b00111111001101011100101101101000";
        ram[12] = "0b00111100010110110010101100110100";
        ram[13] = "0b10111101111111011000011010101001";
        ram[14] = "0b00111100010100001010011001110110";
        ram[15] = "0b00111101100000111111110101010000";
        ram[16] = "0b10111110011101010111100101101100";
        ram[17] = "0b10111111000000110101010111011110";
        ram[18] = "0b00111101100110000100010101010110";
        ram[19] = "0b10111101111110101111011111010011";
        ram[20] = "0b00111111001010011010111100111010";
        ram[21] = "0b10111111001100100000010100100101";
        ram[22] = "0b00111111000010000100110010001100";
        ram[23] = "0b00111110110000011000100000001001";
        ram[24] = "0b10111110001100001001010000011101";
        ram[25] = "0b00111111010100110001001101111011";
        ram[26] = "0b10111111010111000101010010001011";
        ram[27] = "0b10111110110001010000000111100010";
        ram[28] = "0b10111111010000101010011100000101";
        ram[29] = "0b00111111000010111100100001001011";
        ram[30] = "0b10111101010100001101111100010110";
        ram[31] = "0b10111100000111001011101010110110";


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


SC_MODULE(infer_Weight0_f_0_8) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_0_8_ram* meminst;


SC_CTOR(infer_Weight0_f_0_8) {
meminst = new infer_Weight0_f_0_8_ram("infer_Weight0_f_0_8_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_0_8() {
    delete meminst;
}


};//endmodule
#endif
