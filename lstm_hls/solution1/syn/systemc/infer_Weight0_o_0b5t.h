// ==============================================================
// File generated on Fri Mar 28 13:00:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_0b5t_H__
#define __infer_Weight0_o_0b5t_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_0b5t_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_0b5t_ram) {
        ram[0] = "0b00111111000010110101111010000101";
        ram[1] = "0b10111100100010110101100010001110";
        ram[2] = "0b00111110100011110000110100100000";
        ram[3] = "0b00111111000000100001101100001001";
        ram[4] = "0b10111111000111100101111110000101";
        ram[5] = "0b10111101110111000111110011011001";
        ram[6] = "0b00111111100011001001010101010011";
        ram[7] = "0b10111110000011111100000111011111";
        ram[8] = "0b10111111001100110100010110111111";
        ram[9] = "0b10111110101111110010001011000000";
        ram[10] = "0b00111111101101010101011011111100";
        ram[11] = "0b00111111001001100011110001000011";
        ram[12] = "0b00111111011111011101010100001011";
        ram[13] = "0b10111111010101011010101101111110";
        ram[14] = "0b10111110011100010100100110000100";
        ram[15] = "0b00111110000010111010100000111111";
        ram[16] = "0b10111110000101001001111111011000";
        ram[17] = "0b00111110101011000101000101110110";
        ram[18] = "0b00111101001100101101001010111011";
        ram[19] = "0b00111101101101010001000011010100";
        ram[20] = "0b00111110111100011100010111000101";
        ram[21] = "0b10111110111001110101100000111010";
        ram[22] = "0b00111111000101001001011000110101";
        ram[23] = "0b10111110100001011011011000011100";
        ram[24] = "0b10111110111011101111010001011010";
        ram[25] = "0b00111110111110000011110101111001";
        ram[26] = "0b00111111010111010111010110011111";
        ram[27] = "0b00111110111001000110100110010100";
        ram[28] = "0b10111110000001011100001001001100";
        ram[29] = "0b00111110011010000011001111000110";
        ram[30] = "0b10111110001110101011010000110001";
        ram[31] = "0b10111101101000010110110101101110";


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


SC_MODULE(infer_Weight0_o_0b5t) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_0b5t_ram* meminst;


SC_CTOR(infer_Weight0_o_0b5t) {
meminst = new infer_Weight0_o_0b5t_ram("infer_Weight0_o_0b5t_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_0b5t() {
    delete meminst;
}


};//endmodule
#endif
