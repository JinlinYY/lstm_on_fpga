// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_1_6_H__
#define __infer_Weight0_c_1_6_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_1_6_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_1_6_ram) {
        ram[0] = "0b10111110101011001000011000100111";
        ram[1] = "0b00111110100100100000110100110101";
        ram[2] = "0b10111110101100011101110000001110";
        ram[3] = "0b10111101000011110001110000110010";
        ram[4] = "0b10111110100001101101001101110100";
        ram[5] = "0b10111011111111000111101000111010";
        ram[6] = "0b10111110101010111000001110001100";
        ram[7] = "0b10111110000100111001111010101110";
        ram[8] = "0b10111110010010100101111010111011";
        ram[9] = "0b00111101010001111101000110111011";
        ram[10] = "0b00111110110001011110011100100001";
        ram[11] = "0b00111111000101111000011001101110";
        ram[12] = "0b10111101101010001001010000111110";
        ram[13] = "0b10111110001011111111011000001010";
        ram[14] = "0b10111110110010001111100100001001";
        ram[15] = "0b10111110110001001110000111000110";
        ram[16] = "0b10111110011100110011101010001010";
        ram[17] = "0b00111110101011010100011100010111";
        ram[18] = "0b00111110010000011010100100110011";
        ram[19] = "0b10111111010010001000100010110101";
        ram[20] = "0b00111110101110010010100010111111";
        ram[21] = "0b10111110110010000110111111101111";
        ram[22] = "0b10111101011101110100111011101100";
        ram[23] = "0b00111101110010011100100110010011";
        ram[24] = "0b00111110101000000111101000101001";
        ram[25] = "0b10111110001011000100001111110110";
        ram[26] = "0b10111100000001000000000110000010";
        ram[27] = "0b00111100010101100101111001000110";
        ram[28] = "0b00111101001010011001110110001000";
        ram[29] = "0b10111101111101001111011010011101";
        ram[30] = "0b00111101110101100010001110001110";
        ram[31] = "0b00111101101011110010100111010100";


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


SC_MODULE(infer_Weight0_c_1_6) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_1_6_ram* meminst;


SC_CTOR(infer_Weight0_c_1_6) {
meminst = new infer_Weight0_c_1_6_ram("infer_Weight0_c_1_6_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_1_6() {
    delete meminst;
}


};//endmodule
#endif
