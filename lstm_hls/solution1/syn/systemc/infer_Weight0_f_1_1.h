// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_1_1_H__
#define __infer_Weight0_f_1_1_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_1_1_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_1_1_ram) {
        ram[0] = "0b00111110011100011101000101001110";
        ram[1] = "0b10111111000101110000100011101110";
        ram[2] = "0b10111111011100110011100110011111";
        ram[3] = "0b00111111111011101011101110110010";
        ram[4] = "0b00111111000011001010100001111110";
        ram[5] = "0b00111111011100111001001011100010";
        ram[6] = "0b10111111000100011011010110000101";
        ram[7] = "0b00111110100001101111110010011100";
        ram[8] = "0b00111101010000010111010000111111";
        ram[9] = "0b00111111000010101001001101101100";
        ram[10] = "0b00111110111011001011101111000011";
        ram[11] = "0b00111111010010000100010010111111";
        ram[12] = "0b10111111111000001110111000111001";
        ram[13] = "0b10111110101101100011110110100011";
        ram[14] = "0b00111111001100000001011101100101";
        ram[15] = "0b00111111001011100010111011100100";
        ram[16] = "0b10111110100011000111100100101101";
        ram[17] = "0b00111111101001101101010101011010";
        ram[18] = "0b10111101110100010101101101010111";
        ram[19] = "0b10111111110010110110001010101110";
        ram[20] = "0b00111110100111100010001000111110";
        ram[21] = "0b10111110000101010011101101001011";
        ram[22] = "0b10111111000101100000101000001111";
        ram[23] = "0b10111111100001100111000000100010";
        ram[24] = "0b00111110100011010011110001011000";
        ram[25] = "0b10111111011000000001010101111111";
        ram[26] = "0b10111110101111111011000001001111";
        ram[27] = "0b10111111010000110010110111010011";
        ram[28] = "0b10111110110010001010101111110111";
        ram[29] = "0b10111111001001100101010001100001";
        ram[30] = "0b00111110111010111000010111101000";
        ram[31] = "0b00111110100011110111100111101010";


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


SC_MODULE(infer_Weight0_f_1_1) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_1_1_ram* meminst;


SC_CTOR(infer_Weight0_f_1_1) {
meminst = new infer_Weight0_f_1_1_ram("infer_Weight0_f_1_1_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_1_1() {
    delete meminst;
}


};//endmodule
#endif
