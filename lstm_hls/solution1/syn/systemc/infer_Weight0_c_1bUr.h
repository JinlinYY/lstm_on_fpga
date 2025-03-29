// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_1bUr_H__
#define __infer_Weight0_c_1bUr_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_1bUr_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_1bUr_ram) {
        ram[0] = "0b10111110001011000001110011100111";
        ram[1] = "0b10111111001110110000100110110111";
        ram[2] = "0b00111110100001010011100111011010";
        ram[3] = "0b00111101010101011011011110001101";
        ram[4] = "0b00111100111100011010110000010101";
        ram[5] = "0b10111110101111010110111100110011";
        ram[6] = "0b00111101111110101100100100101010";
        ram[7] = "0b10111101100101110001110010010111";
        ram[8] = "0b00111110001000101010011011110100";
        ram[9] = "0b00111110010000110101000001001100";
        ram[10] = "0b00111110101000001011010000011000";
        ram[11] = "0b10111111010011111100000011010011";
        ram[12] = "0b10111110001111000001010111010011";
        ram[13] = "0b00111101101010010111110110001101";
        ram[14] = "0b10111110011001011001010000101001";
        ram[15] = "0b10111111000010010000111011101101";
        ram[16] = "0b00111110110111110010111101110111";
        ram[17] = "0b10111110101101001101100001010110";
        ram[18] = "0b10111111011111010101000100001101";
        ram[19] = "0b00111101110001000001001111011011";
        ram[20] = "0b00111110110011001000101100000000";
        ram[21] = "0b10111101101011100001100100110011";
        ram[22] = "0b00111110010010010001101010111001";
        ram[23] = "0b10111100011110101011110110100001";
        ram[24] = "0b10111110100010100100000101011111";
        ram[25] = "0b10111110000111010010010101101000";
        ram[26] = "0b10111110000010011101011011110001";
        ram[27] = "0b10111101111011001100101010110100";
        ram[28] = "0b00111110001100100111000000101010";
        ram[29] = "0b00111110100011110001000010101010";
        ram[30] = "0b00111110010101111100101101110001";
        ram[31] = "0b10111100011000001100111000001100";


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


SC_MODULE(infer_Weight0_c_1bUr) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_1bUr_ram* meminst;


SC_CTOR(infer_Weight0_c_1bUr) {
meminst = new infer_Weight0_c_1bUr_ram("infer_Weight0_c_1bUr_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_1bUr() {
    delete meminst;
}


};//endmodule
#endif
