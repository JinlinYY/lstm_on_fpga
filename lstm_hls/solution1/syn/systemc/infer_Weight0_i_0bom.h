// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_0bom_H__
#define __infer_Weight0_i_0bom_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_0bom_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_0bom_ram) {
        ram[0] = "0b10111100110100100100011111001011";
        ram[1] = "0b00111101101110101011111010101101";
        ram[2] = "0b10111110001110001000111010111101";
        ram[3] = "0b00111110001110111110010101010100";
        ram[4] = "0b10111101001111010111011111111011";
        ram[5] = "0b10111110111111010100000111011001";
        ram[6] = "0b00111111011111001010100011100011";
        ram[7] = "0b00111110101101000111000000100010";
        ram[8] = "0b00111101100001001011111101001101";
        ram[9] = "0b00111110010100010000110011110110";
        ram[10] = "0b10111111011010000001110001110001";
        ram[11] = "0b00111111011100110000001011100110";
        ram[12] = "0b10111110111000010111001001000111";
        ram[13] = "0b00111111001010100011111101111001";
        ram[14] = "0b00111100101100010000101110100110";
        ram[15] = "0b10111110101010110000110001000110";
        ram[16] = "0b10111111000010101001001101001011";
        ram[17] = "0b10111101110011101010010110110101";
        ram[18] = "0b00111110011111101010111001011100";
        ram[19] = "0b00111111010010110100110101001001";
        ram[20] = "0b00111101110101001110100001110101";
        ram[21] = "0b00111110101000000101101101011011";
        ram[22] = "0b00111101010100001000010111110101";
        ram[23] = "0b00111100100110110110011011111001";
        ram[24] = "0b10111110100101001000101101000100";
        ram[25] = "0b10111110100110110111111101111100";
        ram[26] = "0b00111100101011100011000111010111";
        ram[27] = "0b00111110111110011001001011001001";
        ram[28] = "0b10111111000011000011111101100000";
        ram[29] = "0b00111110001000101101011100110000";
        ram[30] = "0b10111110011111111011011101100011";
        ram[31] = "0b00111110011001000011000010110001";


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


SC_MODULE(infer_Weight0_i_0bom) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_0bom_ram* meminst;


SC_CTOR(infer_Weight0_i_0bom) {
meminst = new infer_Weight0_i_0bom_ram("infer_Weight0_i_0bom_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_0bom() {
    delete meminst;
}


};//endmodule
#endif
