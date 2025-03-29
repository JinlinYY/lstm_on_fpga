// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_0bpm_H__
#define __infer_Weight0_i_0bpm_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_0bpm_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_0bpm_ram) {
        ram[0] = "0b10111101010100011111100100100111";
        ram[1] = "0b10111110000101110100001011011101";
        ram[2] = "0b10111110100010111100111011001000";
        ram[3] = "0b10111110000000000001111000100110";
        ram[4] = "0b10111110101100001111011111011011";
        ram[5] = "0b00111101101100101010111110011011";
        ram[6] = "0b10111111000010110000011100000111";
        ram[7] = "0b10111111000001110001111010011111";
        ram[8] = "0b00111110000100110101011011011010";
        ram[9] = "0b00111110101010110011100110011111";
        ram[10] = "0b10111110100001110111011101101100";
        ram[11] = "0b10111111011100110001111000001000";
        ram[12] = "0b10111111000101000010111111010111";
        ram[13] = "0b00111111010100110111101101111100";
        ram[14] = "0b10111101110100011000110010100000";
        ram[15] = "0b10111101111000100111111110100010";
        ram[16] = "0b10111110100101101010101110011011";
        ram[17] = "0b10111110100000111000111111011110";
        ram[18] = "0b00111110100100101010000011001011";
        ram[19] = "0b10111110100100111100001011111100";
        ram[20] = "0b00111110101110101111111011100111";
        ram[21] = "0b00111111001000100001011011000110";
        ram[22] = "0b00111101010010110100010010100010";
        ram[23] = "0b00111110011001111111000101110011";
        ram[24] = "0b10111110001001001110001101111010";
        ram[25] = "0b10111110000101000111101011100001";
        ram[26] = "0b00111110001110011111000110101110";
        ram[27] = "0b10111110000010000010101001010110";
        ram[28] = "0b00111110101100110000111100101000";
        ram[29] = "0b00111111100010111011100001101111";
        ram[30] = "0b10111110101101000111010011011010";
        ram[31] = "0b00111111001011100001000100010010";


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


SC_MODULE(infer_Weight0_i_0bpm) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_0bpm_ram* meminst;


SC_CTOR(infer_Weight0_i_0bpm) {
meminst = new infer_Weight0_i_0bpm_ram("infer_Weight0_i_0bpm_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_0bpm() {
    delete meminst;
}


};//endmodule
#endif
