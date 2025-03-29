// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_1bOq_H__
#define __infer_Weight0_c_1bOq_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_1bOq_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_1bOq_ram) {
        ram[0] = "0b00111110110101100100011101111000";
        ram[1] = "0b10111110000001111011101010101010";
        ram[2] = "0b00111101100001101010011111110000";
        ram[3] = "0b00111110100000100001011110110001";
        ram[4] = "0b00111110000000000100101001110011";
        ram[5] = "0b00111110100001001000100111010010";
        ram[6] = "0b00111100100111100100011100010011";
        ram[7] = "0b00111111001001000000010001010011";
        ram[8] = "0b10111110110110010110010010000100";
        ram[9] = "0b10111110110111111111000100110000";
        ram[10] = "0b00111110111000001110000110010011";
        ram[11] = "0b00111110100000100100010010100110";
        ram[12] = "0b00111110010011000111001011100010";
        ram[13] = "0b10111110100010111101100011100000";
        ram[14] = "0b00111110010111010010111000001110";
        ram[15] = "0b10111110011101001110101110011010";
        ram[16] = "0b10111110110101111001010110110011";
        ram[17] = "0b00111111001010010100001111100001";
        ram[18] = "0b10111100010101001101110001100110";
        ram[19] = "0b00111110110001110000110001111000";
        ram[20] = "0b10111110110111001001101010111011";
        ram[21] = "0b00111110000011001010111110110100";
        ram[22] = "0b10111101101111100001011101011101";
        ram[23] = "0b00111110001001001110010101001111";
        ram[24] = "0b00111111001010000100010000101000";
        ram[25] = "0b10111110100001100100100010000100";
        ram[26] = "0b10111101001001011010000101000101";
        ram[27] = "0b00111110000000011010100011101111";
        ram[28] = "0b00111100010101000110111101011000";
        ram[29] = "0b00111101110100100010011011000100";
        ram[30] = "0b10111101110111010111101100100000";
        ram[31] = "0b00111101111101000101100101010011";


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


SC_MODULE(infer_Weight0_c_1bOq) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_1bOq_ram* meminst;


SC_CTOR(infer_Weight0_c_1bOq) {
meminst = new infer_Weight0_c_1bOq_ram("infer_Weight0_c_1bOq_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_1bOq() {
    delete meminst;
}


};//endmodule
#endif
