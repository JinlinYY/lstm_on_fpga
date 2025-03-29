// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_0_6_H__
#define __infer_Weight0_i_0_6_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_0_6_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_0_6_ram) {
        ram[0] = "0b10111110101111101000110110111001";
        ram[1] = "0b10111111010000100010111100000110";
        ram[2] = "0b10111110111110100101101010101011";
        ram[3] = "0b10111111111010101011101001110011";
        ram[4] = "0b10111100100000010000011000100101";
        ram[5] = "0b10111101101111111110100111111011";
        ram[6] = "0b10111111011001000101101001001111";
        ram[7] = "0b00111111001000010100000101110100";
        ram[8] = "0b10111101100011001001100001011111";
        ram[9] = "0b00111111000010001010011010101000";
        ram[10] = "0b00111110111100100001111110110000";
        ram[11] = "0b00111100001000101110011111110111";
        ram[12] = "0b10111110100011100110000111010000";
        ram[13] = "0b00111100000001110110100111101100";
        ram[14] = "0b10111100100101111110001101001100";
        ram[15] = "0b00111110101011111001010110110011";
        ram[16] = "0b10111110011011100111001110100011";
        ram[17] = "0b10111110010011110010011110111011";
        ram[18] = "0b10111110000011011111001010101010";
        ram[19] = "0b00111110111110100111100101010111";
        ram[20] = "0b00111110111110110111100110110111";
        ram[21] = "0b10111101110000110000000100100001";
        ram[22] = "0b00111101011101000100001111010100";
        ram[23] = "0b10111110010011010111110100111001";
        ram[24] = "0b10111110101100101100111000100101";
        ram[25] = "0b00111111100000001010011111100111";
        ram[26] = "0b10111111100010110111000101011100";
        ram[27] = "0b10111101001110011110000001100001";
        ram[28] = "0b00111110110111010100101001011110";
        ram[29] = "0b00111110111111111100100000001000";
        ram[30] = "0b10111111010010100010100001010110";
        ram[31] = "0b00111110000110101010111111111111";


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


SC_MODULE(infer_Weight0_i_0_6) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_0_6_ram* meminst;


SC_CTOR(infer_Weight0_i_0_6) {
meminst = new infer_Weight0_i_0_6_ram("infer_Weight0_i_0_6_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_0_6() {
    delete meminst;
}


};//endmodule
#endif
