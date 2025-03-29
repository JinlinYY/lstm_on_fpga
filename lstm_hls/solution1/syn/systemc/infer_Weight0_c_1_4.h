// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_1_4_H__
#define __infer_Weight0_c_1_4_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_1_4_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_1_4_ram) {
        ram[0] = "0b10111110010000111010100110110000";
        ram[1] = "0b00111110111110011010101100001000";
        ram[2] = "0b10111101001010101011001101101000";
        ram[3] = "0b10111110100101000111110101011111";
        ram[4] = "0b10111000100000100000010111111111";
        ram[5] = "0b00111101011000001001010001100000";
        ram[6] = "0b10111110110010101011010110100010";
        ram[7] = "0b00111101010000011011100101110011";
        ram[8] = "0b00111110100011010110111000000101";
        ram[9] = "0b00111110101110001000001101010110";
        ram[10] = "0b00111101111000000110111010100000";
        ram[11] = "0b10111101000101100011010001010101";
        ram[12] = "0b00111110001101011001100110101010";
        ram[13] = "0b10111100111010100000111111010100";
        ram[14] = "0b10111110001011000100011010010101";
        ram[15] = "0b10111110100010011000001001000101";
        ram[16] = "0b00111111001101101011010010100110";
        ram[17] = "0b10111110010100110101010100000100";
        ram[18] = "0b00111101000000011001010111001101";
        ram[19] = "0b10111110011100001101100101010001";
        ram[20] = "0b00111101111010111110010010001010";
        ram[21] = "0b00111110111111010011100110010111";
        ram[22] = "0b10111100110011000110110001010101";
        ram[23] = "0b00111110001101110001110000010001";
        ram[24] = "0b10111110100011110100010100111001";
        ram[25] = "0b10111101111110110111111110011101";
        ram[26] = "0b00111100110010000110010010001000";
        ram[27] = "0b10111101101101011010100101100101";
        ram[28] = "0b00111101111010001001001010101011";
        ram[29] = "0b10111110100000001101001000011100";
        ram[30] = "0b00111101100000011111001000010011";
        ram[31] = "0b00111100111001111111101100100110";


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


SC_MODULE(infer_Weight0_c_1_4) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_1_4_ram* meminst;


SC_CTOR(infer_Weight0_c_1_4) {
meminst = new infer_Weight0_c_1_4_ram("infer_Weight0_c_1_4_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_1_4() {
    delete meminst;
}


};//endmodule
#endif
