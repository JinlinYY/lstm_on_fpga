// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_0_4_H__
#define __infer_Weight0_i_0_4_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_0_4_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_0_4_ram) {
        ram[0] = "0b10111110011111011000111011001001";
        ram[1] = "0b00111111000001011101100101001101";
        ram[2] = "0b10111110101011010101001111101111";
        ram[3] = "0b10111110111011110101001111000101";
        ram[4] = "0b00111101011111000101000101010101";
        ram[5] = "0b10111110000011010101001110001011";
        ram[6] = "0b10111111000001111011100010000000";
        ram[7] = "0b10111111000111101010010110110101";
        ram[8] = "0b10111110001101011110001111011010";
        ram[9] = "0b10111110100011110010000101001111";
        ram[10] = "0b00111110100101000101011001010000";
        ram[11] = "0b00111101101000110100100101111011";
        ram[12] = "0b00111110100000110000101001110000";
        ram[13] = "0b00111111010111100011011000111011";
        ram[14] = "0b00111111001010111101111010010100";
        ram[15] = "0b10111110100101110100011010101010";
        ram[16] = "0b00111111000011100000011001110101";
        ram[17] = "0b00111111010110011111101011101100";
        ram[18] = "0b00111110000110111010011000100110";
        ram[19] = "0b10111111001001111101011100101100";
        ram[20] = "0b10111110000001010010101011000111";
        ram[21] = "0b00111110100101101101010010100010";
        ram[22] = "0b00111111010100110111000011101111";
        ram[23] = "0b10111110010101001110100011111011";
        ram[24] = "0b00111110111011011111011001110111";
        ram[25] = "0b10111111101110011111100100100111";
        ram[26] = "0b00111110100010010111100101111101";
        ram[27] = "0b10111110110000011100000001000100";
        ram[28] = "0b00111101101100001100111111100001";
        ram[29] = "0b00111110100100000101101101011011";
        ram[30] = "0b00111101110000101111110101110110";
        ram[31] = "0b10111110111101001010001001010101";


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


SC_MODULE(infer_Weight0_i_0_4) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_0_4_ram* meminst;


SC_CTOR(infer_Weight0_i_0_4) {
meminst = new infer_Weight0_i_0_4_ram("infer_Weight0_i_0_4_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_0_4() {
    delete meminst;
}


};//endmodule
#endif
