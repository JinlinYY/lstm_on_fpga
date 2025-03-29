// ==============================================================
// File generated on Fri Mar 28 13:00:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_1ceu_H__
#define __infer_Weight0_o_1ceu_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_1ceu_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_1ceu_ram) {
        ram[0] = "0b00111111011010011001001110000001";
        ram[1] = "0b00111101110001010101001010100000";
        ram[2] = "0b00111101101010111101000000011000";
        ram[3] = "0b00111101100101101101000100011000";
        ram[4] = "0b00111110001011111010101000000100";
        ram[5] = "0b00111101000001011001110010001101";
        ram[6] = "0b10111110100110101111101110100000";
        ram[7] = "0b10111101110101000100110111001011";
        ram[8] = "0b10111110010110101000100100110011";
        ram[9] = "0b00111100100111000000101010001101";
        ram[10] = "0b10111111010111111000000000110100";
        ram[11] = "0b00111110101111111000010000100011";
        ram[12] = "0b00111110001101000101010011011110";
        ram[13] = "0b00111110100111111101111000001101";
        ram[14] = "0b10111110000011101010001000001010";
        ram[15] = "0b00111101001101100011010011011011";
        ram[16] = "0b00111110000110110100111110100101";
        ram[17] = "0b10111100101000010110111001111010";
        ram[18] = "0b00111101000110010001001001010101";
        ram[19] = "0b00111101101110110000010101110101";
        ram[20] = "0b10111101110001110111011100001000";
        ram[21] = "0b10111110110100000000110001110100";
        ram[22] = "0b10111110110010010100100001110111";
        ram[23] = "0b10111111101001100000001000110010";
        ram[24] = "0b00111111001000001110100111010101";
        ram[25] = "0b10111111101100101101001100001111";
        ram[26] = "0b10111110100100101100000000011110";
        ram[27] = "0b10111110101011011011011100000111";
        ram[28] = "0b10111110001100110000010101010011";
        ram[29] = "0b10111100010001000101010001011000";
        ram[30] = "0b10111110110000101010100001000100";
        ram[31] = "0b00111101111001010011100001101001";


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


SC_MODULE(infer_Weight0_o_1ceu) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_1ceu_ram* meminst;


SC_CTOR(infer_Weight0_o_1ceu) {
meminst = new infer_Weight0_o_1ceu_ram("infer_Weight0_o_1ceu_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_1ceu() {
    delete meminst;
}


};//endmodule
#endif
