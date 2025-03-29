// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_0_1_H__
#define __infer_Weight0_c_0_1_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_0_1_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_0_1_ram) {
        ram[0] = "0b00111110000011001001101110000100";
        ram[1] = "0b10111111010101001000101010011100";
        ram[2] = "0b00111111101110100111000110101100";
        ram[3] = "0b00111110001001011100101000101010";
        ram[4] = "0b10111110100001111110011101111101";
        ram[5] = "0b10111110100111101110001011101011";
        ram[6] = "0b00111110110000011100111010001110";
        ram[7] = "0b00111110111010010001000110101110";
        ram[8] = "0b10111110011011000100111011111001";
        ram[9] = "0b00111101101101101011100001110011";
        ram[10] = "0b10111111100110110010111010111110";
        ram[11] = "0b10111110111111101101110001111111";
        ram[12] = "0b00111111000011110011000000101111";
        ram[13] = "0b00111110011010111101000101100111";
        ram[14] = "0b00111110001010111000111111011110";
        ram[15] = "0b00111110110111001000110110100000";
        ram[16] = "0b10111110011000000011110111011110";
        ram[17] = "0b00111101100110101101010000101100";
        ram[18] = "0b10111101110110111110100110000101";
        ram[19] = "0b00111101000011100011011110011011";
        ram[20] = "0b10111110110011110011010101111110";
        ram[21] = "0b10111110001000011011010101000010";
        ram[22] = "0b00111111000001010111001111101011";
        ram[23] = "0b00111111000001100010001000001100";
        ram[24] = "0b00111011101100010101011100100110";
        ram[25] = "0b10111111010111010101001011010010";
        ram[26] = "0b00111110101110011000101101110010";
        ram[27] = "0b10111010100111111100011011011010";
        ram[28] = "0b10111110010001110010011110011010";
        ram[29] = "0b10111110010110111001100010000101";
        ram[30] = "0b00111110100000011111010001101111";
        ram[31] = "0b00111110001010110000010100110010";


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


SC_MODULE(infer_Weight0_c_0_1) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_0_1_ram* meminst;


SC_CTOR(infer_Weight0_c_0_1) {
meminst = new infer_Weight0_c_0_1_ram("infer_Weight0_c_0_1_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_0_1() {
    delete meminst;
}


};//endmodule
#endif
