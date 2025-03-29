// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_1_7_H__
#define __infer_Weight0_f_1_7_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_1_7_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_1_7_ram) {
        ram[0] = "0b10111110011100011101110010010100";
        ram[1] = "0b10111111010000111000001111110001";
        ram[2] = "0b10111111000011011110010010010011";
        ram[3] = "0b10111110111011111101011000001111";
        ram[4] = "0b10111110010111011000101011011011";
        ram[5] = "0b10111110010001110111110000000011";
        ram[6] = "0b10111110100101111111001110101110";
        ram[7] = "0b10111111100001101101000011100101";
        ram[8] = "0b00111101111110000101101011010101";
        ram[9] = "0b10111111101100001111000111110101";
        ram[10] = "0b10111111000110101010000001110111";
        ram[11] = "0b10111111000011111000111100110110";
        ram[12] = "0b10111111001011001010010001001100";
        ram[13] = "0b10111110010101100011110111000101";
        ram[14] = "0b10111111000001001110110011011001";
        ram[15] = "0b10111111000110001101011001101111";
        ram[16] = "0b10111101101001011001101011111010";
        ram[17] = "0b10111111001000101001010100010000";
        ram[18] = "0b10111111000101101111011111100100";
        ram[19] = "0b10111111001101100111110100110101";
        ram[20] = "0b10111111011110000001110110001111";
        ram[21] = "0b10111110010110100010110110110110";
        ram[22] = "0b10111111010101011000111101010000";
        ram[23] = "0b10111110101010110101111000001111";
        ram[24] = "0b10111110101110001010001010101001";
        ram[25] = "0b10111110111010101001101010000000";
        ram[26] = "0b10111110100100001100100000000100";
        ram[27] = "0b10111110000110001000001111111101";
        ram[28] = "0b10111111001111010100011011110110";
        ram[29] = "0b10111110011100000110011000111100";
        ram[30] = "0b10111101101111000001000011011000";
        ram[31] = "0b00111110010000100000111100101100";


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


SC_MODULE(infer_Weight0_f_1_7) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_1_7_ram* meminst;


SC_CTOR(infer_Weight0_f_1_7) {
meminst = new infer_Weight0_f_1_7_ram("infer_Weight0_f_1_7_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_1_7() {
    delete meminst;
}


};//endmodule
#endif
