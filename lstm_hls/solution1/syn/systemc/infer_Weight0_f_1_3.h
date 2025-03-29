// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_1_3_H__
#define __infer_Weight0_f_1_3_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_1_3_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_1_3_ram) {
        ram[0] = "0b00111111100100001000010111000010";
        ram[1] = "0b00111110011101100100110111000010";
        ram[2] = "0b10111111000100110100101111101000";
        ram[3] = "0b00111111001110100001001110010000";
        ram[4] = "0b00111100100110010000101011111110";
        ram[5] = "0b10111110100110010100101100111000";
        ram[6] = "0b00111111011001001000001001011010";
        ram[7] = "0b10111110001111100001111001110001";
        ram[8] = "0b10111101111111010001001011001011";
        ram[9] = "0b00111110110111100100001110101010";
        ram[10] = "0b10111110110000010110001110011001";
        ram[11] = "0b10111110101100000100110111111101";
        ram[12] = "0b10111110000101011010100100100010";
        ram[13] = "0b00111111100101010011011100111011";
        ram[14] = "0b10111110000001010111010101111101";
        ram[15] = "0b10111111000010001011110010001100";
        ram[16] = "0b00111111111101110010111000010111";
        ram[17] = "0b10111111001001101001000011001101";
        ram[18] = "0b10111110010100010010100101000101";
        ram[19] = "0b10111111000010000011101000110010";
        ram[20] = "0b10111111001100010111011010111100";
        ram[21] = "0b00111111110101000111110000011000";
        ram[22] = "0b10111101010001000110101001011101";
        ram[23] = "0b00111110101001111100110000111010";
        ram[24] = "0b10111110101001111000001100111000";
        ram[25] = "0b00111111010001111111111101000111";
        ram[26] = "0b10111111111001101011000000001000";
        ram[27] = "0b10111110100101100001100000000101";
        ram[28] = "0b10111110100010011010010100100010";
        ram[29] = "0b00111111001110110010001000001000";
        ram[30] = "0b11000000000110001110000000111111";
        ram[31] = "0b00111110111001011001111100001010";


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


SC_MODULE(infer_Weight0_f_1_3) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_1_3_ram* meminst;


SC_CTOR(infer_Weight0_f_1_3) {
meminst = new infer_Weight0_f_1_3_ram("infer_Weight0_f_1_3_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_1_3() {
    delete meminst;
}


};//endmodule
#endif
