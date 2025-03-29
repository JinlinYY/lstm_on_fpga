// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_1bxn_H__
#define __infer_Weight0_i_1bxn_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_1bxn_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_1bxn_ram) {
        ram[0] = "0b00111110110011001010101011111100";
        ram[1] = "0b00111110100101110011101000110110";
        ram[2] = "0b00111101110010101101111011101100";
        ram[3] = "0b00111101001101000110011001101111";
        ram[4] = "0b10111110010111101010100000010001";
        ram[5] = "0b00111011100001001001010001001111";
        ram[6] = "0b00111110100010010010001110100011";
        ram[7] = "0b00111110010111100111100001011011";
        ram[8] = "0b00111111001000100100100100111101";
        ram[9] = "0b10111110001010010001111100101110";
        ram[10] = "0b10111111011111011111001000100100";
        ram[11] = "0b10111111010010011100100111010110";
        ram[12] = "0b00111101101001101011110111110101";
        ram[13] = "0b00111110000000101000001110010000";
        ram[14] = "0b00111110110010000100001101011111";
        ram[15] = "0b10111111010111100111111100011011";
        ram[16] = "0b10111110111110010000011001000110";
        ram[17] = "0b10111111001100011000010100000110";
        ram[18] = "0b00111111000001111110001001110001";
        ram[19] = "0b00111111000100001111000111100101";
        ram[20] = "0b00111101101001011110001001001000";
        ram[21] = "0b00111110110010101011010000001111";
        ram[22] = "0b00111110100010110111111001001110";
        ram[23] = "0b10111110110110111101100101000101";
        ram[24] = "0b00111110100000011011011111100001";
        ram[25] = "0b10111101010111010001110101000111";
        ram[26] = "0b10111111001100001100111010100011";
        ram[27] = "0b00111110111001011111010110101110";
        ram[28] = "0b10111110111111000111000100101110";
        ram[29] = "0b10111111101011000101011001011000";
        ram[30] = "0b10111111010110100000000110101100";
        ram[31] = "0b10111110100011000001110010100100";


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


SC_MODULE(infer_Weight0_i_1bxn) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_1bxn_ram* meminst;


SC_CTOR(infer_Weight0_i_1bxn) {
meminst = new infer_Weight0_i_1bxn_ram("infer_Weight0_i_1bxn_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_1bxn() {
    delete meminst;
}


};//endmodule
#endif
