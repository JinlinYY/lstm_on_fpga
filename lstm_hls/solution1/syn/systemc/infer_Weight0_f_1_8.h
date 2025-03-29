// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_1_8_H__
#define __infer_Weight0_f_1_8_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_1_8_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_1_8_ram) {
        ram[0] = "0b10111110001100101110110100110101";
        ram[1] = "0b00111110111001001001000011000101";
        ram[2] = "0b10111110011111011010011000011110";
        ram[3] = "0b00111110010111010001101011101011";
        ram[4] = "0b10111101001001111111101100100110";
        ram[5] = "0b00111110110001010010000100010100";
        ram[6] = "0b10111110101100100001110100110010";
        ram[7] = "0b00111111010001101101100100010111";
        ram[8] = "0b00111110001100010100010011001100";
        ram[9] = "0b10111100010110101111000001111100";
        ram[10] = "0b00111110001010101000110111101011";
        ram[11] = "0b00111111000101011100010011011011";
        ram[12] = "0b00111110010010000010110001101111";
        ram[13] = "0b00111110110000110000100000110101";
        ram[14] = "0b00111110000001011001100000011000";
        ram[15] = "0b00111110000000101011100111010100";
        ram[16] = "0b10111111000001000001000001100010";
        ram[17] = "0b10111110001110001011010000111001";
        ram[18] = "0b00111111000010001100111110011110";
        ram[19] = "0b10111110011100011111011001000101";
        ram[20] = "0b10111111000000100110000110011110";
        ram[21] = "0b00111101001000011001101110010001";
        ram[22] = "0b10111101111010000110000111101001";
        ram[23] = "0b10111110101110010011110111011001";
        ram[24] = "0b00111110110100111100010011110100";
        ram[25] = "0b10111101111111111101000001001010";
        ram[26] = "0b10111110011000110010001010101111";
        ram[27] = "0b10111111001001100110111101010000";
        ram[28] = "0b00111110100111010001000010010000";
        ram[29] = "0b00111110001100010010001100111110";
        ram[30] = "0b00111111001011010010111000110000";
        ram[31] = "0b10111110100010001010001101010001";


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


SC_MODULE(infer_Weight0_f_1_8) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_1_8_ram* meminst;


SC_CTOR(infer_Weight0_f_1_8) {
meminst = new infer_Weight0_f_1_8_ram("infer_Weight0_f_1_8_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_1_8() {
    delete meminst;
}


};//endmodule
#endif
