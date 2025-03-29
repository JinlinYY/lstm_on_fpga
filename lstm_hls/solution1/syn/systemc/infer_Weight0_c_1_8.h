// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_1_8_H__
#define __infer_Weight0_c_1_8_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_1_8_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_1_8_ram) {
        ram[0] = "0b00111110011111011001000001011100";
        ram[1] = "0b00111110110000100100110010100101";
        ram[2] = "0b00111100110011100110110000001001";
        ram[3] = "0b10111101000100101101011101110011";
        ram[4] = "0b10111110100011101111111101111110";
        ram[5] = "0b10111110011001001100000011011111";
        ram[6] = "0b00111101111100111100100010011111";
        ram[7] = "0b00111110100111001010001011111101";
        ram[8] = "0b10111101110010000111000000010001";
        ram[9] = "0b10111101001101010101111111111110";
        ram[10] = "0b10111100010110010001101010111001";
        ram[11] = "0b00111100111101010011110001011000";
        ram[12] = "0b00111100101101110000100010101011";
        ram[13] = "0b10111110001111100111011101001111";
        ram[14] = "0b10111110001100101110110110111011";
        ram[15] = "0b10111110110010001001110010100010";
        ram[16] = "0b10111111000011101010000001010101";
        ram[17] = "0b10111110011001101110110110101011";
        ram[18] = "0b00111110000000110101111001110100";
        ram[19] = "0b00111110011111010001000110111110";
        ram[20] = "0b10111110011011000011011111100111";
        ram[21] = "0b10111110000000101000000000101000";
        ram[22] = "0b10111101100111010010011100111101";
        ram[23] = "0b00111101011001100000101000100000";
        ram[24] = "0b00111110001110001001010101001010";
        ram[25] = "0b10111110100100100000011101110000";
        ram[26] = "0b00111100100010001100111001110000";
        ram[27] = "0b00111010010101010110001010011110";
        ram[28] = "0b10111101101100011100001110101101";
        ram[29] = "0b00111101000101100011001101001000";
        ram[30] = "0b10111101101001100001010110101001";
        ram[31] = "0b10111110001100100110110110001011";


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


SC_MODULE(infer_Weight0_c_1_8) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_1_8_ram* meminst;


SC_CTOR(infer_Weight0_c_1_8) {
meminst = new infer_Weight0_c_1_8_ram("infer_Weight0_c_1_8_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_1_8() {
    delete meminst;
}


};//endmodule
#endif
