// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_1bun_H__
#define __infer_Weight0_i_1bun_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_1bun_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_1bun_ram) {
        ram[0] = "0b00111110110111100010111100111000";
        ram[1] = "0b10111111000001100100001001011011";
        ram[2] = "0b10111110011111000101100111111011";
        ram[3] = "0b10111111101011010110111011110000";
        ram[4] = "0b00111110111100010110100101011110";
        ram[5] = "0b10111111000101001110100000010000";
        ram[6] = "0b10111110000100100000111101101111";
        ram[7] = "0b10111111010111001111001010011101";
        ram[8] = "0b00111110111010100110110111110000";
        ram[9] = "0b00111111010100110111100010001001";
        ram[10] = "0b00111101100011010110011001101011";
        ram[11] = "0b00111110110001010100001100101000";
        ram[12] = "0b10111110111001111101011010010101";
        ram[13] = "0b00111110110100001111101101000100";
        ram[14] = "0b00111101101111101010101100110110";
        ram[15] = "0b10111110001101011001100101100111";
        ram[16] = "0b00111110001111000100101100001010";
        ram[17] = "0b10111110111000101100011001000111";
        ram[18] = "0b10111110100011000101110101000010";
        ram[19] = "0b00111111000111110011000001100010";
        ram[20] = "0b00111110111001100010011101111100";
        ram[21] = "0b00111100101001010010101011000111";
        ram[22] = "0b00111010101011010010010101101000";
        ram[23] = "0b00111110100011111110001110110000";
        ram[24] = "0b10111110001011011111111010111001";
        ram[25] = "0b00111110001111111100110001011100";
        ram[26] = "0b00111111000011110001000110000100";
        ram[27] = "0b10111110001111100100010111000011";
        ram[28] = "0b00111111011001001000101111101011";
        ram[29] = "0b00111110000001111100011011111100";
        ram[30] = "0b10111110100110111100111101110000";
        ram[31] = "0b00111110111100001000110101101101";


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


SC_MODULE(infer_Weight0_i_1bun) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_1bun_ram* meminst;


SC_CTOR(infer_Weight0_i_1bun) {
meminst = new infer_Weight0_i_1bun_ram("infer_Weight0_i_1bun_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_1bun() {
    delete meminst;
}


};//endmodule
#endif
