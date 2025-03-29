// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_0bnm_H__
#define __infer_Weight0_i_0bnm_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_0bnm_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_0bnm_ram) {
        ram[0] = "0b10111111001111001101111101001000";
        ram[1] = "0b00111111010010101100111011011101";
        ram[2] = "0b00111111011100001100000011110000";
        ram[3] = "0b00111110011011110101001011111100";
        ram[4] = "0b10111101000101111010101010101100";
        ram[5] = "0b10111111001100001001010100000111";
        ram[6] = "0b00111110010101101011110101101111";
        ram[7] = "0b10111110100111011110001101010100";
        ram[8] = "0b00111110000100001100100011001101";
        ram[9] = "0b00111101001001001110100010111000";
        ram[10] = "0b00111100110111101100000111000010";
        ram[11] = "0b10111111011010010010011111110110";
        ram[12] = "0b10111110111110001111101011011111";
        ram[13] = "0b00111101110101111100110011000000";
        ram[14] = "0b10111110100000100000000110001010";
        ram[15] = "0b00111111100110100000001001000011";
        ram[16] = "0b00111110010110111100101000010000";
        ram[17] = "0b10111111000010101001000110111000";
        ram[18] = "0b10111110100110111110100000010100";
        ram[19] = "0b00111110101001010101001001011101";
        ram[20] = "0b00111101000101000111010110100011";
        ram[21] = "0b00111111001001010010111111110101";
        ram[22] = "0b00111110110110101010101111001101";
        ram[23] = "0b00111101101101110110010001101011";
        ram[24] = "0b10111110110010111101001011011000";
        ram[25] = "0b10111111000100111010111001011000";
        ram[26] = "0b10111100111011100100010111000011";
        ram[27] = "0b10111111001101111101011011101001";
        ram[28] = "0b00111110010001000010110011000011";
        ram[29] = "0b00111110100101100000110000010111";
        ram[30] = "0b10111111110001000101101010110100";
        ram[31] = "0b00111101100010001110100100101101";


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


SC_MODULE(infer_Weight0_i_0bnm) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_0bnm_ram* meminst;


SC_CTOR(infer_Weight0_i_0bnm) {
meminst = new infer_Weight0_i_0bnm_ram("infer_Weight0_i_0bnm_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_0bnm() {
    delete meminst;
}


};//endmodule
#endif
