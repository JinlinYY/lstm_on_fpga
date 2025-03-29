// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_0bjl_H__
#define __infer_Weight0_i_0bjl_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_0bjl_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_0bjl_ram) {
        ram[0] = "0b00111110101110111001000011001001";
        ram[1] = "0b10111110011011101010010011101100";
        ram[2] = "0b10111111100011101100101010001010";
        ram[3] = "0b10111110101000100000101111000100";
        ram[4] = "0b10111110011111100111011100001100";
        ram[5] = "0b00111100000111100000101001000010";
        ram[6] = "0b00111111000111011101100001100010";
        ram[7] = "0b10111110001100101001101100101000";
        ram[8] = "0b00111101000110001000110000011110";
        ram[9] = "0b10111101100011100111011010000110";
        ram[10] = "0b00111101000110100101101110010110";
        ram[11] = "0b00111101011111001011000011000000";
        ram[12] = "0b10111110101001011110011010011011";
        ram[13] = "0b10111110111000110111111011110110";
        ram[14] = "0b10111111000000101000100101000100";
        ram[15] = "0b10111110000010111100111011001000";
        ram[16] = "0b00111110001000001001111101100010";
        ram[17] = "0b10111110111101100101110000001100";
        ram[18] = "0b00111101010111101001110100001111";
        ram[19] = "0b10111101100000000001101000110111";
        ram[20] = "0b00111111011011000000011100010100";
        ram[21] = "0b00111111001100000001111111001001";
        ram[22] = "0b00111110110111011011010100001111";
        ram[23] = "0b10111111001010000110001010100010";
        ram[24] = "0b00111011101010001011000010001110";
        ram[25] = "0b01000000000101100111101000011100";
        ram[26] = "0b10111111010111100110011000110100";
        ram[27] = "0b10111110100011111001110111010100";
        ram[28] = "0b00111110010000000110101011110100";
        ram[29] = "0b00111111000010110110010101100111";
        ram[30] = "0b00111111010110000010010000111110";
        ram[31] = "0b00111111000111100101100010000010";


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


SC_MODULE(infer_Weight0_i_0bjl) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_0bjl_ram* meminst;


SC_CTOR(infer_Weight0_i_0bjl) {
meminst = new infer_Weight0_i_0bjl_ram("infer_Weight0_i_0bjl_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_0bjl() {
    delete meminst;
}


};//endmodule
#endif
