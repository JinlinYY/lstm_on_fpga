// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_1_9_H__
#define __infer_Weight0_f_1_9_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_1_9_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_1_9_ram) {
        ram[0] = "0b10111111000000001111110001010000";
        ram[1] = "0b00111101001001110001011110011100";
        ram[2] = "0b00111111101001011111101010011000";
        ram[3] = "0b10111110000110110011001100010010";
        ram[4] = "0b10111110101110011000101010000111";
        ram[5] = "0b10111110010111100010011000001011";
        ram[6] = "0b00111111011010000000010000100001";
        ram[7] = "0b10111110110001101001100011011101";
        ram[8] = "0b00111110101111100010111011010011";
        ram[9] = "0b00111111100010001100000110110001";
        ram[10] = "0b10111100101011000000111001111100";
        ram[11] = "0b00111111010010000111000111000101";
        ram[12] = "0b10111110001100010110000110100010";
        ram[13] = "0b10111110110111100111010000001000";
        ram[14] = "0b10111110100001000101000100110011";
        ram[15] = "0b00111111000011010011001111010011";
        ram[16] = "0b10111110000111010111100000111110";
        ram[17] = "0b00111110100110011011110000110100";
        ram[18] = "0b00111110110101011011001000001100";
        ram[19] = "0b00111111000100100101001111001010";
        ram[20] = "0b00111110110001101001011110001101";
        ram[21] = "0b00111101010011001010100000011010";
        ram[22] = "0b00111110100000110011000100011010";
        ram[23] = "0b10111101101100110011000100011010";
        ram[24] = "0b00111111000111101111000010011110";
        ram[25] = "0b10111110001001011101000010110111";
        ram[26] = "0b00111101111111101011001100010100";
        ram[27] = "0b10111111000001010111010000001100";
        ram[28] = "0b10111101001101001100010011001110";
        ram[29] = "0b00111110100111010001100110111101";
        ram[30] = "0b00111011101011111001001000101001";
        ram[31] = "0b10111110101011101010111100100101";


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


SC_MODULE(infer_Weight0_f_1_9) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_1_9_ram* meminst;


SC_CTOR(infer_Weight0_f_1_9) {
meminst = new infer_Weight0_f_1_9_ram("infer_Weight0_f_1_9_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_1_9() {
    delete meminst;
}


};//endmodule
#endif
