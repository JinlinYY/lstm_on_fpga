// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_0_3_H__
#define __infer_Weight0_i_0_3_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_0_3_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_0_3_ram) {
        ram[0] = "0b00111110100010100001010100110011";
        ram[1] = "0b00111110110110111100000010100000";
        ram[2] = "0b00111110100010111100111010000101";
        ram[3] = "0b00111101111111010000111110100110";
        ram[4] = "0b10111100000010011010100010001011";
        ram[5] = "0b10111110000011011011001100111001";
        ram[6] = "0b10111111000110011110001111011010";
        ram[7] = "0b00111110111010011101110111100011";
        ram[8] = "0b10111101011011101001110011001011";
        ram[9] = "0b00111101010011100010011111100001";
        ram[10] = "0b00111101100010100110111010111001";
        ram[11] = "0b10111101111101101011100001110011";
        ram[12] = "0b10111110010101011011101010110010";
        ram[13] = "0b00111110001100011100110100011100";
        ram[14] = "0b00111101100100001000010011101000";
        ram[15] = "0b00111101101101100100101001011010";
        ram[16] = "0b10111110100110101110011000000000";
        ram[17] = "0b00111110100001010101011000101010";
        ram[18] = "0b10111101000010000111011101101000";
        ram[19] = "0b10111110001101001010101111100111";
        ram[20] = "0b00111101001001001110010010000110";
        ram[21] = "0b10111110101000011011011101011010";
        ram[22] = "0b10111101010001101110011011011010";
        ram[23] = "0b00111110101000011111001000110100";
        ram[24] = "0b00111110000111110001001110001100";
        ram[25] = "0b00111101000001100110101100011110";
        ram[26] = "0b00111110000010100101010011000101";
        ram[27] = "0b10111110011011010110101001011001";
        ram[28] = "0b10111101001111101100011110000110";
        ram[29] = "0b01000000001101011101101101101010";
        ram[30] = "0b00111110010011100000011111100110";
        ram[31] = "0b00111101100011101110010110101100";


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


SC_MODULE(infer_Weight0_i_0_3) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_0_3_ram* meminst;


SC_CTOR(infer_Weight0_i_0_3) {
meminst = new infer_Weight0_i_0_3_ram("infer_Weight0_i_0_3_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_0_3() {
    delete meminst;
}


};//endmodule
#endif
