// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_0_4_H__
#define __infer_Weight0_f_0_4_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_0_4_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_0_4_ram) {
        ram[0] = "0b00111110100001010011101011000101";
        ram[1] = "0b10111110001001011011111010100001";
        ram[2] = "0b00111101100011011011000111101010";
        ram[3] = "0b10111101000010001000111001111010";
        ram[4] = "0b00111101110001101001010010001010";
        ram[5] = "0b10111100111000101000010001011010";
        ram[6] = "0b10111110110001010010111111000010";
        ram[7] = "0b10111110100001101111010101100110";
        ram[8] = "0b10111111000100001100101010010010";
        ram[9] = "0b10111111001110100010000000100101";
        ram[10] = "0b10111110101011101000110101110110";
        ram[11] = "0b10111101000011000011101100001100";
        ram[12] = "0b10111101100100011010100101110110";
        ram[13] = "0b00111110001010001101111000101011";
        ram[14] = "0b00111110111011110011101110000110";
        ram[15] = "0b00111101100100100100100001010010";
        ram[16] = "0b00111111000011000010011000010100";
        ram[17] = "0b10111101000111000111111011110001";
        ram[18] = "0b00111110100111011001111011101001";
        ram[19] = "0b00111101111110110100101110110110";
        ram[20] = "0b10111111000101111110011100001000";
        ram[21] = "0b10111110000101001010110010110000";
        ram[22] = "0b10111111001101101111000010001101";
        ram[23] = "0b10111111011101010001000001001101";
        ram[24] = "0b10111111001010100100110111110100";
        ram[25] = "0b10111110001000111110110100001111";
        ram[26] = "0b00111110111111110111110111111010";
        ram[27] = "0b10111110011000100001001000001110";
        ram[28] = "0b00111110011010011000011111000110";
        ram[29] = "0b00111110011101110100110110011100";
        ram[30] = "0b10111110110100000010110010010001";
        ram[31] = "0b00111101110011100011110011011010";


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


SC_MODULE(infer_Weight0_f_0_4) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_0_4_ram* meminst;


SC_CTOR(infer_Weight0_f_0_4) {
meminst = new infer_Weight0_f_0_4_ram("infer_Weight0_f_0_4_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_0_4() {
    delete meminst;
}


};//endmodule
#endif
