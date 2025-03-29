// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_1bVr_H__
#define __infer_Weight0_c_1bVr_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_1bVr_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_1bVr_ram) {
        ram[0] = "0b10111110000001110100000100000111";
        ram[1] = "0b10111110000011110101001011111100";
        ram[2] = "0b10111110100101111000011111110000";
        ram[3] = "0b10111110100110001011001110010010";
        ram[4] = "0b10111111000011011000110100110111";
        ram[5] = "0b10111110110111011101100101111111";
        ram[6] = "0b00111110111100101000101000011110";
        ram[7] = "0b00111110111001110001110010010111";
        ram[8] = "0b00111110001110101011011110011001";
        ram[9] = "0b00111110111110001000111001011000";
        ram[10] = "0b10111110100110000000001000111010";
        ram[11] = "0b00111110101010000000111010001101";
        ram[12] = "0b00111101001101001001000101101101";
        ram[13] = "0b00111110111101010000101000100100";
        ram[14] = "0b10111111000111111010111011011110";
        ram[15] = "0b00111100110111111011100100111001";
        ram[16] = "0b00111110100101011100001001001100";
        ram[17] = "0b10111110001110010001010101111011";
        ram[18] = "0b00111101000110111001110110000000";
        ram[19] = "0b10111101000011001110111001011011";
        ram[20] = "0b10111111001011101100101111111011";
        ram[21] = "0b00111110000000100010001111100010";
        ram[22] = "0b00111110001100100111010111101111";
        ram[23] = "0b00111011100101011111001001000101";
        ram[24] = "0b10111110101110110110101001100010";
        ram[25] = "0b10111110011010011101110100111100";
        ram[26] = "0b10111101100000101000001101001101";
        ram[27] = "0b00111110110010010110001101111000";
        ram[28] = "0b10111110111000110101010101000111";
        ram[29] = "0b10111110000001010100111100110111";
        ram[30] = "0b10111110111000010110101111111101";
        ram[31] = "0b00111101101101100110010110011101";


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


SC_MODULE(infer_Weight0_c_1bVr) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_1bVr_ram* meminst;


SC_CTOR(infer_Weight0_c_1bVr) {
meminst = new infer_Weight0_c_1bVr_ram("infer_Weight0_c_1bVr_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_1bVr() {
    delete meminst;
}


};//endmodule
#endif
