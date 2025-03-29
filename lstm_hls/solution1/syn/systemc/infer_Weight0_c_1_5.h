// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_1_5_H__
#define __infer_Weight0_c_1_5_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_1_5_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_1_5_ram) {
        ram[0] = "0b00111110100000001111101000110111";
        ram[1] = "0b00111110100010111010100100001001";
        ram[2] = "0b10111100111000000000011011010001";
        ram[3] = "0b00111101100011100111001101100000";
        ram[4] = "0b00111110101110101000001011000111";
        ram[5] = "0b10111100110101110001110100011101";
        ram[6] = "0b10111011101010101100100101101101";
        ram[7] = "0b10111110111001010011111100111010";
        ram[8] = "0b10111110100101000001011001011001";
        ram[9] = "0b10111110111100110110100110111010";
        ram[10] = "0b00111110000010011001010100100101";
        ram[11] = "0b10111110100010110110010101000101";
        ram[12] = "0b00111110100011000100101101101111";
        ram[13] = "0b10111110001000100111000011110100";
        ram[14] = "0b00111110110100110011110111110011";
        ram[15] = "0b00111101111111010101100100001100";
        ram[16] = "0b10111101100011011111010100000110";
        ram[17] = "0b00111110101111000110000010101010";
        ram[18] = "0b10111111000100111110001100001000";
        ram[19] = "0b00111110000000011000111001110101";
        ram[20] = "0b00111110100101000000101000000111";
        ram[21] = "0b00111101101011001000000011000111";
        ram[22] = "0b10111100111010111010110011110111";
        ram[23] = "0b10111101101011011101001001101011";
        ram[24] = "0b00111101100111101010101110111101";
        ram[25] = "0b10111110001101011110001111011010";
        ram[26] = "0b10111111000100110111010011011110";
        ram[27] = "0b00111100100001010000000101011100";
        ram[28] = "0b10111110110001011100000101000000";
        ram[29] = "0b00111110001010011011010001010111";
        ram[30] = "0b10111110011111010100100111011000";
        ram[31] = "0b00111110111111011111100101111011";


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


SC_MODULE(infer_Weight0_c_1_5) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_1_5_ram* meminst;


SC_CTOR(infer_Weight0_c_1_5) {
meminst = new infer_Weight0_c_1_5_ram("infer_Weight0_c_1_5_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_1_5() {
    delete meminst;
}


};//endmodule
#endif
