// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_0_8_H__
#define __infer_Weight0_c_0_8_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_0_8_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_0_8_ram) {
        ram[0] = "0b00111110100010100010000101000010";
        ram[1] = "0b10111101100110011011010101100011";
        ram[2] = "0b00111101000100001000010011101000";
        ram[3] = "0b10111110111010010100110000100011";
        ram[4] = "0b10111101110011111110110001010111";
        ram[5] = "0b10111100110001011110111101100011";
        ram[6] = "0b00111111010000111111011111001111";
        ram[7] = "0b00111110001110010000011101010011";
        ram[8] = "0b00111101011111001000101100000000";
        ram[9] = "0b00111110010010111001110001110011";
        ram[10] = "0b00111110011100001110100010000110";
        ram[11] = "0b00111110000000110110000111011101";
        ram[12] = "0b10111101000000001100001100001001";
        ram[13] = "0b10111110000110011000011011111101";
        ram[14] = "0b00111101100100111011101110000100";
        ram[15] = "0b00111110111010011010110111101011";
        ram[16] = "0b10111101110101110011100111110011";
        ram[17] = "0b00111100110000011110001101100101";
        ram[18] = "0b00111101101001100010111001001101";
        ram[19] = "0b10111110000111110010100001000001";
        ram[20] = "0b00111100000111101101011111000111";
        ram[21] = "0b00111101011000010010101001010010";
        ram[22] = "0b00111110001101011010100000010101";
        ram[23] = "0b10111110001100110000100000110101";
        ram[24] = "0b00111111001010010000000100001000";
        ram[25] = "0b00111100110111001000101110000111";
        ram[26] = "0b00111110100111110010000011101010";
        ram[27] = "0b10111110100011111101101011000111";
        ram[28] = "0b00111110000110000110001011110110";
        ram[29] = "0b00111101011010101010001010100001";
        ram[30] = "0b10111110011111101010001100010110";
        ram[31] = "0b10111111000010010100011111100000";


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


SC_MODULE(infer_Weight0_c_0_8) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_0_8_ram* meminst;


SC_CTOR(infer_Weight0_c_0_8) {
meminst = new infer_Weight0_c_0_8_ram("infer_Weight0_c_0_8_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_0_8() {
    delete meminst;
}


};//endmodule
#endif
