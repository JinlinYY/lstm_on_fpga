// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_1_3_H__
#define __infer_Weight0_i_1_3_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_1_3_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_1_3_ram) {
        ram[0] = "0b10111101110010000001001010111110";
        ram[1] = "0b10111111000110011111011110110110";
        ram[2] = "0b00111110111111000010010111110010";
        ram[3] = "0b00111110100111010010111010110110";
        ram[4] = "0b10111110100001111011011110000100";
        ram[5] = "0b00111111001001011111001011101101";
        ram[6] = "0b00111110001101111001111011100000";
        ram[7] = "0b00111101101110101011100101101111";
        ram[8] = "0b10111110011010100010010111011001";
        ram[9] = "0b00111110011100001010101011101011";
        ram[10] = "0b10111111001101001011111101001101";
        ram[11] = "0b00111111010010011100011000001001";
        ram[12] = "0b10111111000000100000010111111111";
        ram[13] = "0b00111110000100111010111000100101";
        ram[14] = "0b10111101101000001001111111101000";
        ram[15] = "0b00111110011011011011010110010101";
        ram[16] = "0b00111101101100111110110101010010";
        ram[17] = "0b10111110110010011100010000010001";
        ram[18] = "0b10111111001100011111100110011100";
        ram[19] = "0b00111111001000000100010101100111";
        ram[20] = "0b10111101101101010000111111000111";
        ram[21] = "0b10111101111000100110111111100111";
        ram[22] = "0b00111110000111001111001111011100";
        ram[23] = "0b00111110110001110011101000110110";
        ram[24] = "0b10111110011100001001101110110111";
        ram[25] = "0b10111111000011111111101110101101";
        ram[26] = "0b00111110101001111110111110011110";
        ram[27] = "0b00111111000011000110001110011101";
        ram[28] = "0b00111111001110101111010100110100";
        ram[29] = "0b00111100010111011000001011111101";
        ram[30] = "0b10111111010010000101010111001001";
        ram[31] = "0b00111110101011100001010101100110";


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


SC_MODULE(infer_Weight0_i_1_3) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_1_3_ram* meminst;


SC_CTOR(infer_Weight0_i_1_3) {
meminst = new infer_Weight0_i_1_3_ram("infer_Weight0_i_1_3_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_1_3() {
    delete meminst;
}


};//endmodule
#endif
