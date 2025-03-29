// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_0bJp_H__
#define __infer_Weight0_c_0bJp_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_0bJp_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_0bJp_ram) {
        ram[0] = "0b10111110101011010001101101110001";
        ram[1] = "0b10111111011010000011100100110111";
        ram[2] = "0b10111110000011010001011111000110";
        ram[3] = "0b00111110011000011010010110000111";
        ram[4] = "0b00111110111010111101010101010110";
        ram[5] = "0b10111101111000111000001100100111";
        ram[6] = "0b10111111011110100101000101011101";
        ram[7] = "0b10111110000101110101001011011011";
        ram[8] = "0b10111101100000010011010011001110";
        ram[9] = "0b10111110000111111000110001100101";
        ram[10] = "0b10111110011010000101001111000001";
        ram[11] = "0b10111100110100001001011111001000";
        ram[12] = "0b00111110011100100100101011110001";
        ram[13] = "0b00111110001010011001111000001110";
        ram[14] = "0b10111101111110110001001010010000";
        ram[15] = "0b10111110001101001101010100001111";
        ram[16] = "0b10111111011000111011101001110111";
        ram[17] = "0b10111110001001000000111100100100";
        ram[18] = "0b00111110000100011000000100010111";
        ram[19] = "0b00111110011100111100010100110111";
        ram[20] = "0b10111110111001010100001010000001";
        ram[21] = "0b00111110011100001100100001000111";
        ram[22] = "0b00111100100011100000101010000101";
        ram[23] = "0b00111110100001001001101110100110";
        ram[24] = "0b00111101111100011111100000011010";
        ram[25] = "0b00111101101111101110010001011100";
        ram[26] = "0b10111110101000001101100101110011";
        ram[27] = "0b00111100111111100000101011001000";
        ram[28] = "0b10111101101000111001001111101110";
        ram[29] = "0b00111111010101100011101110101100";
        ram[30] = "0b10111110111011001000010100111100";
        ram[31] = "0b10111101111011011010100110000110";


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


SC_MODULE(infer_Weight0_c_0bJp) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_0bJp_ram* meminst;


SC_CTOR(infer_Weight0_c_0bJp) {
meminst = new infer_Weight0_c_0bJp_ram("infer_Weight0_c_0bJp_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_0bJp() {
    delete meminst;
}


};//endmodule
#endif
