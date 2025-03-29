// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_1_9_H__
#define __infer_Weight0_c_1_9_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_1_9_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_1_9_ram) {
        ram[0] = "0b00111110001100000001011001001000";
        ram[1] = "0b10111111010010001111011010101101";
        ram[2] = "0b00111100100010010000101101000001";
        ram[3] = "0b00111111001111000001001110001000";
        ram[4] = "0b00111110100101010000011000010100";
        ram[5] = "0b10111110110100011011101010100001";
        ram[6] = "0b00111111000101011111010110111110";
        ram[7] = "0b10111110100101110110001110100010";
        ram[8] = "0b10111101001110011010000001101010";
        ram[9] = "0b10111101001101100100100111010100";
        ram[10] = "0b10111110011000011000000010010001";
        ram[11] = "0b00111110101011000011011110100100";
        ram[12] = "0b00111110111000100111110011100001";
        ram[13] = "0b10111100101010001111000110010001";
        ram[14] = "0b10111101111011100000001000100001";
        ram[15] = "0b00111110110111100111110000000111";
        ram[16] = "0b10111101100011101111001111010100";
        ram[17] = "0b10111110011100110111110110100110";
        ram[18] = "0b00111110100011010000001101010011";
        ram[19] = "0b10111110100101011010101111000001";
        ram[20] = "0b10111110101011110010101000010111";
        ram[21] = "0b10111111011110111100011010111001";
        ram[22] = "0b10111110000111110011011100110011";
        ram[23] = "0b10111110101110101101001110000100";
        ram[24] = "0b00111101001010100111000101011000";
        ram[25] = "0b10111110100100011101000100001011";
        ram[26] = "0b00111111011101000101101100101001";
        ram[27] = "0b10111110101010011011111000001010";
        ram[28] = "0b10111110011001101100011000010101";
        ram[29] = "0b00111101010000001000001000000110";
        ram[30] = "0b00111011111010001010111110000001";
        ram[31] = "0b10111101110110010100100001010110";


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


SC_MODULE(infer_Weight0_c_1_9) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_1_9_ram* meminst;


SC_CTOR(infer_Weight0_c_1_9) {
meminst = new infer_Weight0_c_1_9_ram("infer_Weight0_c_1_9_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_1_9() {
    delete meminst;
}


};//endmodule
#endif
