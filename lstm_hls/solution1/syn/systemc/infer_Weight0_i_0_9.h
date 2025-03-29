// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_0_9_H__
#define __infer_Weight0_i_0_9_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_0_9_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_0_9_ram) {
        ram[0] = "0b00111111010000111011000001001111";
        ram[1] = "0b10111110100101010001011000110011";
        ram[2] = "0b10111111011001110010000001010011";
        ram[3] = "0b10111110110000110001101001101101";
        ram[4] = "0b10111110011110011101111000000101";
        ram[5] = "0b10111110001110101011111001101010";
        ram[6] = "0b00111110110011010101101000111010";
        ram[7] = "0b10111101000111111010010101001100";
        ram[8] = "0b10111110101000011010001100101011";
        ram[9] = "0b10111111101011000000011110010010";
        ram[10] = "0b00111101111100111111110000000001";
        ram[11] = "0b10111110011101010010100010101110";
        ram[12] = "0b00111111100101001110001111011110";
        ram[13] = "0b10111111100001111100100011111100";
        ram[14] = "0b00111110101000010001010010110001";
        ram[15] = "0b00111111010000000100000100000011";
        ram[16] = "0b00111110100111101001100010011010";
        ram[17] = "0b10111110110001110101000001111111";
        ram[18] = "0b10111110000101110010001010011111";
        ram[19] = "0b00111111010100110001010000000001";
        ram[20] = "0b10111110010101111111100011001011";
        ram[21] = "0b00111111001010101110000000101010";
        ram[22] = "0b00111111000100011100110110100011";
        ram[23] = "0b10111110111100000100110010101101";
        ram[24] = "0b00111110010011111000100011111101";
        ram[25] = "0b00111111001101101100011010001011";
        ram[26] = "0b00111110000000111100110101010111";
        ram[27] = "0b10111100001011000011101010000110";
        ram[28] = "0b10111110000000011001111110000000";
        ram[29] = "0b00111110111111100011111010001110";
        ram[30] = "0b10111101011101001001010010010010";
        ram[31] = "0b10111111000010101010000111101000";


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


SC_MODULE(infer_Weight0_i_0_9) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_0_9_ram* meminst;


SC_CTOR(infer_Weight0_i_0_9) {
meminst = new infer_Weight0_i_0_9_ram("infer_Weight0_i_0_9_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_0_9() {
    delete meminst;
}


};//endmodule
#endif
