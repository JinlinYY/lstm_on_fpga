// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_1bzo_H__
#define __infer_Weight0_i_1bzo_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_1bzo_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_1bzo_ram) {
        ram[0] = "0b00111111000100000000000010111001";
        ram[1] = "0b10111101110100100011000111000110";
        ram[2] = "0b00111001100110010001011110010100";
        ram[3] = "0b10111111001101101010110111010110";
        ram[4] = "0b00111101111100101000100101010101";
        ram[5] = "0b10111111100011000010001011111111";
        ram[6] = "0b00111111010101010000110011110110";
        ram[7] = "0b10111100110011001011000110001001";
        ram[8] = "0b00111111000111000101100100110010";
        ram[9] = "0b00111110101011011111001100110000";
        ram[10] = "0b10111110011000101101010010010001";
        ram[11] = "0b00111111000000100110010001011110";
        ram[12] = "0b10111110100000011111101101100001";
        ram[13] = "0b00111110100110011001000001101101";
        ram[14] = "0b00111110010001000000110100001011";
        ram[15] = "0b00111111001001111101110110011000";
        ram[16] = "0b00111111001000000010000011010101";
        ram[17] = "0b00111100111010011001011000110001";
        ram[18] = "0b10111111000100001011111010000011";
        ram[19] = "0b10111110100101010110101111101100";
        ram[20] = "0b00111111100010001110001111011110";
        ram[21] = "0b10111110111011000001101010001011";
        ram[22] = "0b10111111000101010000101010111011";
        ram[23] = "0b10111110110100101100101011011110";
        ram[24] = "0b00111101101101111100001001000100";
        ram[25] = "0b00111110100011011101000101011111";
        ram[26] = "0b10111101100101001010101010010111";
        ram[27] = "0b10111101100111000100101100001010";
        ram[28] = "0b00111111011111001010000100010110";
        ram[29] = "0b00111111011111011001001010111000";
        ram[30] = "0b10111110010000001111001010111111";
        ram[31] = "0b00111111000111111001101010011110";


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


SC_MODULE(infer_Weight0_i_1bzo) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_1bzo_ram* meminst;


SC_CTOR(infer_Weight0_i_1bzo) {
meminst = new infer_Weight0_i_1bzo_ram("infer_Weight0_i_1bzo_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_1bzo() {
    delete meminst;
}


};//endmodule
#endif
