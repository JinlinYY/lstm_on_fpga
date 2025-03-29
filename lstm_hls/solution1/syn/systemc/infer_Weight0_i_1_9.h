// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_1_9_H__
#define __infer_Weight0_i_1_9_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_1_9_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_1_9_ram) {
        ram[0] = "0b00111101001000111101000111001100";
        ram[1] = "0b00111110000100001000101000100110";
        ram[2] = "0b10111101100001100111110011110010";
        ram[3] = "0b10111110111101100011100000100010";
        ram[4] = "0b10111101000000110110110010011100";
        ram[5] = "0b00111110101001001011000100100101";
        ram[6] = "0b10111111001101101000111100101010";
        ram[7] = "0b00111111100001011100011010110000";
        ram[8] = "0b00111101000001000010110010000000";
        ram[9] = "0b00111101100001011111010000011011";
        ram[10] = "0b00111110111110101010111111011110";
        ram[11] = "0b00111110100100111000001011100100";
        ram[12] = "0b10111111010000011010001110010000";
        ram[13] = "0b00111111100001011011111011110101";
        ram[14] = "0b00111110101001001000110001110010";
        ram[15] = "0b10111110110111010110100100001010";
        ram[16] = "0b10111111000011000011111001010011";
        ram[17] = "0b00111101101110110111011010110100";
        ram[18] = "0b00111101100010100001010010001100";
        ram[19] = "0b00111110000010101010110011011010";
        ram[20] = "0b10111110011001100001111010010011";
        ram[21] = "0b10111101000110001111011000000110";
        ram[22] = "0b00111110100110110011100101111110";
        ram[23] = "0b10111110101100000011011110110101";
        ram[24] = "0b10111111100001001001010101011011";
        ram[25] = "0b10111111010011110010100100111101";
        ram[26] = "0b00111110100111010011011001010000";
        ram[27] = "0b00111111000110011011001111010000";
        ram[28] = "0b10111110100111011000011101110010";
        ram[29] = "0b10111110001001000111100001000010";
        ram[30] = "0b00111111100011110101011010001111";
        ram[31] = "0b10111110000001001000100101001100";


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


SC_MODULE(infer_Weight0_i_1_9) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_1_9_ram* meminst;


SC_CTOR(infer_Weight0_i_1_9) {
meminst = new infer_Weight0_i_1_9_ram("infer_Weight0_i_1_9_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_1_9() {
    delete meminst;
}


};//endmodule
#endif
