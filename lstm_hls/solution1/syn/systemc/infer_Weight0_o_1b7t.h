// ==============================================================
// File generated on Fri Mar 28 13:00:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_1b7t_H__
#define __infer_Weight0_o_1b7t_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_1b7t_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_1b7t_ram) {
        ram[0] = "0b10111111000110011100101100110110";
        ram[1] = "0b10111101000101000100011110000000";
        ram[2] = "0b10111110011001101101000100011000";
        ram[3] = "0b10111100010000110000000010011011";
        ram[4] = "0b10111100101010011000011001110111";
        ram[5] = "0b10111101100011110100000111110010";
        ram[6] = "0b00111110010101111100111000010000";
        ram[7] = "0b10111101000001001011001010110111";
        ram[8] = "0b00111111011011011100101000111010";
        ram[9] = "0b10111111100001001111101110011000";
        ram[10] = "0b10111101001100111110111111110010";
        ram[11] = "0b10111110110101000010000010110100";
        ram[12] = "0b10111110101001101110010001111110";
        ram[13] = "0b00111101111000101011000111110111";
        ram[14] = "0b00111110111011100100000010000101";
        ram[15] = "0b10111110010101101111011001010001";
        ram[16] = "0b10111100011110010001000111001111";
        ram[17] = "0b00111110011011010011001010000011";
        ram[18] = "0b10111110100101000110011100010111";
        ram[19] = "0b00111110100001101100111100100000";
        ram[20] = "0b10111101100101010011000011001111";
        ram[21] = "0b10111110010100111011100101101011";
        ram[22] = "0b10111110100001100011000100101111";
        ram[23] = "0b00111111000101001111001100000010";
        ram[24] = "0b00111111001111000100001111100101";
        ram[25] = "0b10111100110011000010100100111001";
        ram[26] = "0b10111101100110001010101010000110";
        ram[27] = "0b10111111000100001000010100101011";
        ram[28] = "0b10111110101101011100011111101111";
        ram[29] = "0b10111110100110111101000011100001";
        ram[30] = "0b10111111000110100010110100001110";
        ram[31] = "0b10111110111101111110100111011001";


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


SC_MODULE(infer_Weight0_o_1b7t) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_1b7t_ram* meminst;


SC_CTOR(infer_Weight0_o_1b7t) {
meminst = new infer_Weight0_o_1b7t_ram("infer_Weight0_o_1b7t_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_1b7t() {
    delete meminst;
}


};//endmodule
#endif
