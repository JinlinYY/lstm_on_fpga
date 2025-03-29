// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_0_8_H__
#define __infer_Weight0_i_0_8_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_0_8_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_0_8_ram) {
        ram[0] = "0b00111101100010011011101111110001";
        ram[1] = "0b00111111100110001001101000011100";
        ram[2] = "0b10111110000100000000110011011000";
        ram[3] = "0b00111111000011011100010000010001";
        ram[4] = "0b10111101111000000101000111001010";
        ram[5] = "0b10111111100101101100001101011101";
        ram[6] = "0b10111110111011100001101110001111";
        ram[7] = "0b00111101111000001111001000111001";
        ram[8] = "0b10111101100010010111100111100001";
        ram[9] = "0b00111100110010101111001011011000";
        ram[10] = "0b00111110000011110100101100011111";
        ram[11] = "0b10111110111000010100010101110100";
        ram[12] = "0b10111111101001000111101000111010";
        ram[13] = "0b10111110110111010111111010001001";
        ram[14] = "0b00111110100110111100111101001111";
        ram[15] = "0b10111111001010100010000001101000";
        ram[16] = "0b00111110010000110010101110011001";
        ram[17] = "0b10111111001000110111111010000000";
        ram[18] = "0b10111111011111000001001001101010";
        ram[19] = "0b10111110011000000101010001101001";
        ram[20] = "0b00111110111111100000100110111011";
        ram[21] = "0b10111110111010010100011000111101";
        ram[22] = "0b00111110100101000010011001111000";
        ram[23] = "0b00111111001110011010001100101011";
        ram[24] = "0b00111101010111001101000111001000";
        ram[25] = "0b10111111000011101000111100111011";
        ram[26] = "0b10111101110101010111100000011100";
        ram[27] = "0b00111110100001010111100100101001";
        ram[28] = "0b10111110100101011101101100010010";
        ram[29] = "0b10111110011011001011010110111011";
        ram[30] = "0b10111110010110000111000111100111";
        ram[31] = "0b10111111010001000010100101001010";


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


SC_MODULE(infer_Weight0_i_0_8) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_0_8_ram* meminst;


SC_CTOR(infer_Weight0_i_0_8) {
meminst = new infer_Weight0_i_0_8_ram("infer_Weight0_i_0_8_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_0_8() {
    delete meminst;
}


};//endmodule
#endif
