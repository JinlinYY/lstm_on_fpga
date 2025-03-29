// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_1bBo_H__
#define __infer_Weight0_i_1bBo_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_1bBo_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_1bBo_ram) {
        ram[0] = "0b00111111000001100111011011101010";
        ram[1] = "0b00111111001110001010000000101100";
        ram[2] = "0b00111101010011111101010111001011";
        ram[3] = "0b00111111000100110101110111011101";
        ram[4] = "0b00111111000001100001101111000001";
        ram[5] = "0b00111111100100001111111010101100";
        ram[6] = "0b10111110111011010010110001111100";
        ram[7] = "0b00111111100011000100010110001001";
        ram[8] = "0b10111110001000111001011110011010";
        ram[9] = "0b00111110110100100011010001000100";
        ram[10] = "0b00111110101100000001101111101011";
        ram[11] = "0b00111101110011100110001100100000";
        ram[12] = "0b00111111000100000100011100111101";
        ram[13] = "0b10111101100000011011111110111110";
        ram[14] = "0b00111111001001100101100110011111";
        ram[15] = "0b00111111011101010111101111111010";
        ram[16] = "0b00111110110001000110101011100100";
        ram[17] = "0b00111111010011110101001110100100";
        ram[18] = "0b00111111000110010000001000110110";
        ram[19] = "0b10111101100000010111101010001001";
        ram[20] = "0b00111011101001000010101011101101";
        ram[21] = "0b00111111000101111101101110110001";
        ram[22] = "0b00111110100110101111111110001111";
        ram[23] = "0b10111110101000001110000001100101";
        ram[24] = "0b00111110101010000101101010010010";
        ram[25] = "0b10111100111010010110010111110101";
        ram[26] = "0b10111100010001100101110001110000";
        ram[27] = "0b10111110111010000100100010111111";
        ram[28] = "0b10111110010010111011110110111110";
        ram[29] = "0b10111111000010100110111100001101";
        ram[30] = "0b00111101011001000100010100100100";
        ram[31] = "0b10111110001000010010001000110010";


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


SC_MODULE(infer_Weight0_i_1bBo) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_1bBo_ram* meminst;


SC_CTOR(infer_Weight0_i_1bBo) {
meminst = new infer_Weight0_i_1bBo_ram("infer_Weight0_i_1bBo_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_1bBo() {
    delete meminst;
}


};//endmodule
#endif
