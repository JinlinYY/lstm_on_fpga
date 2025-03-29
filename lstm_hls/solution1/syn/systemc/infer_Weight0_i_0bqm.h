// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_0bqm_H__
#define __infer_Weight0_i_0bqm_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_0bqm_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_0bqm_ram) {
        ram[0] = "0b10111110111011001100100101000011";
        ram[1] = "0b10111111001001110101111101110000";
        ram[2] = "0b10111101100110000001111100010000";
        ram[3] = "0b10111110101110000101000110000111";
        ram[4] = "0b00111100111111001110110110010001";
        ram[5] = "0b00111111011111000110010100110000";
        ram[6] = "0b10111111000100001100110111011001";
        ram[7] = "0b00111100010100000000001011100010";
        ram[8] = "0b00111110011010011010010000010110";
        ram[9] = "0b00111110111101101110111101011111";
        ram[10] = "0b10111110101010011001110010011101";
        ram[11] = "0b00111110100101100011010110000011";
        ram[12] = "0b10111111000101000100010111011101";
        ram[13] = "0b00111100110101001111100111000010";
        ram[14] = "0b00111111101100001110010100101110";
        ram[15] = "0b10111110011111100010001111110010";
        ram[16] = "0b00111110111101110001000010101010";
        ram[17] = "0b00111110110101110000010100100001";
        ram[18] = "0b00111101000000000110001110011101";
        ram[19] = "0b10111110000111001011001110100010";
        ram[20] = "0b10111111000100000001010111000010";
        ram[21] = "0b00111110000111000111010000110010";
        ram[22] = "0b00111111000101000101100000110110";
        ram[23] = "0b10111111011000000011100100000100";
        ram[24] = "0b00111101110000000110000011111110";
        ram[25] = "0b00111111010111001010111101110001";
        ram[26] = "0b00111111010010101011010001110100";
        ram[27] = "0b00111111000010100011110110110100";
        ram[28] = "0b10111110001110111001011101111000";
        ram[29] = "0b10111111000101010001011100011110";
        ram[30] = "0b10111111000100000110000011011101";
        ram[31] = "0b10111110100010011111110000101011";


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


SC_MODULE(infer_Weight0_i_0bqm) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_0bqm_ram* meminst;


SC_CTOR(infer_Weight0_i_0bqm) {
meminst = new infer_Weight0_i_0bqm_ram("infer_Weight0_i_0bqm_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_0bqm() {
    delete meminst;
}


};//endmodule
#endif
