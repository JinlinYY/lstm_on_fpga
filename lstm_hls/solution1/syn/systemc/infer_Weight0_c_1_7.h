// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_1_7_H__
#define __infer_Weight0_c_1_7_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_1_7_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_1_7_ram) {
        ram[0] = "0b00111110001000000100101100111100";
        ram[1] = "0b10111110111111001001111111111001";
        ram[2] = "0b10111110000001011000101111000110";
        ram[3] = "0b00111111001100010101000010111001";
        ram[4] = "0b00111101110111000110011011010011";
        ram[5] = "0b10111100100000011010101111010010";
        ram[6] = "0b00111101100100111111000011111110";
        ram[7] = "0b00111111010100100010101001011110";
        ram[8] = "0b10111111010001001011000000111010";
        ram[9] = "0b10111101111011010111011000100101";
        ram[10] = "0b00111101101001101011100000110000";
        ram[11] = "0b00111110000001101101100100111000";
        ram[12] = "0b00111110100001011000000111001111";
        ram[13] = "0b10111111001000010000101001010111";
        ram[14] = "0b00111111000010110101010001011100";
        ram[15] = "0b10111101110000011101101100000001";
        ram[16] = "0b10111110100001011011010100001111";
        ram[17] = "0b00111110101001010110011000100111";
        ram[18] = "0b10111110110101111111111001101101";
        ram[19] = "0b10111110000010000110100111000110";
        ram[20] = "0b00111110100001101101101000000001";
        ram[21] = "0b10111110010010101110001101100001";
        ram[22] = "0b10111100101101000011001100001101";
        ram[23] = "0b10111110110101011111001101010010";
        ram[24] = "0b10111100100111010100110110000011";
        ram[25] = "0b00111101101011101100110010000001";
        ram[26] = "0b10111101001011101010110010000110";
        ram[27] = "0b00111110011000101110101001010011";
        ram[28] = "0b10111101111111011100100111000101";
        ram[29] = "0b00111110010100110110011111100100";
        ram[30] = "0b10111110011110001110100001100100";
        ram[31] = "0b00111110011000001000000100111101";


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


SC_MODULE(infer_Weight0_c_1_7) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_1_7_ram* meminst;


SC_CTOR(infer_Weight0_c_1_7) {
meminst = new infer_Weight0_c_1_7_ram("infer_Weight0_c_1_7_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_1_7() {
    delete meminst;
}


};//endmodule
#endif
