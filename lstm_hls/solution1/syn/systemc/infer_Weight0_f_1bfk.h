// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_1bfk_H__
#define __infer_Weight0_f_1bfk_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_1bfk_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_1bfk_ram) {
        ram[0] = "0b00111110100001100010011001001110";
        ram[1] = "0b00111110110000101000000010001101";
        ram[2] = "0b00111110101010101011100100101100";
        ram[3] = "0b10111110100010110100110000011011";
        ram[4] = "0b00111110001011000001011100100010";
        ram[5] = "0b10111110111101101011000011011001";
        ram[6] = "0b00111110110100001110001010100000";
        ram[7] = "0b10111110110000110010011111001100";
        ram[8] = "0b00111111000000000100101010010100";
        ram[9] = "0b00111111000010101110111101001110";
        ram[10] = "0b00111110100111000101101101101100";
        ram[11] = "0b10111111011110010100011010010001";
        ram[12] = "0b10111110010100110011101000000100";
        ram[13] = "0b10111110110000011001001000100001";
        ram[14] = "0b10111110110000110001110000000000";
        ram[15] = "0b10111110010000111100101100111110";
        ram[16] = "0b00111110010111011111010000111100";
        ram[17] = "0b10111100011001110001110011011010";
        ram[18] = "0b10111110101000001100110100100001";
        ram[19] = "0b00111111011000101011001000000111";
        ram[20] = "0b00111111001010101100010001100001";
        ram[21] = "0b00111111010000011100011010001111";
        ram[22] = "0b00111110010101000111111011010000";
        ram[23] = "0b10111110000011100011100111110111";
        ram[24] = "0b00111110101010111101010101010110";
        ram[25] = "0b10111101010110100001100110000111";
        ram[26] = "0b10111111000111000010100110111111";
        ram[27] = "0b00111101010010000011101010010111";
        ram[28] = "0b10111111001010000111001110111101";
        ram[29] = "0b00111110101001110010000010000110";
        ram[30] = "0b10111111011111100111000110101100";
        ram[31] = "0b00111111110101011100111011001000";


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


SC_MODULE(infer_Weight0_f_1bfk) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_1bfk_ram* meminst;


SC_CTOR(infer_Weight0_f_1bfk) {
meminst = new infer_Weight0_f_1bfk_ram("infer_Weight0_f_1bfk_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_1bfk() {
    delete meminst;
}


};//endmodule
#endif
