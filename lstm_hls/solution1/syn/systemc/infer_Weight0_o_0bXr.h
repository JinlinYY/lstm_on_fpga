// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_0bXr_H__
#define __infer_Weight0_o_0bXr_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_0bXr_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_0bXr_ram) {
        ram[0] = "0b10111111011110000100001010110111";
        ram[1] = "0b00111110101010000010100001011111";
        ram[2] = "0b10111110000010000011101111100110";
        ram[3] = "0b00111101101101101100011110101000";
        ram[4] = "0b10111110111010000000010011011010";
        ram[5] = "0b10111110011001001100010000000101";
        ram[6] = "0b10111100011011110000111100010111";
        ram[7] = "0b00111101010110001011111001110011";
        ram[8] = "0b00111110100011000100010100100100";
        ram[9] = "0b10111111000110101100000010010100";
        ram[10] = "0b10111111011100010010100011110010";
        ram[11] = "0b10111110010001010100000111011001";
        ram[12] = "0b10111111000101011111010110011101";
        ram[13] = "0b00111110001001010001000011010100";
        ram[14] = "0b10111111001000110101000100010110";
        ram[15] = "0b00111111011101000100010110101010";
        ram[16] = "0b10111110000011000110101011000010";
        ram[17] = "0b10111101101111010100001100000111";
        ram[18] = "0b10111001011111011100000101100001";
        ram[19] = "0b00111100001000001010110110001010";
        ram[20] = "0b00111101111101001000111101010100";
        ram[21] = "0b00111111011111010110101110011000";
        ram[22] = "0b00111110100101010010100111011100";
        ram[23] = "0b00111111000001111100000001001101";
        ram[24] = "0b10111110001011101000011001000000";
        ram[25] = "0b00111110001010111011111011001011";
        ram[26] = "0b10111101101100111111111000011001";
        ram[27] = "0b10111111100001110011000001100010";
        ram[28] = "0b10111110101000000010100010100010";
        ram[29] = "0b00111110100011010010001000100001";
        ram[30] = "0b00111110111001011100110001000010";
        ram[31] = "0b10111110110111110010001101101000";


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


SC_MODULE(infer_Weight0_o_0bXr) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_0bXr_ram* meminst;


SC_CTOR(infer_Weight0_o_0bXr) {
meminst = new infer_Weight0_o_0bXr_ram("infer_Weight0_o_0bXr_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_0bXr() {
    delete meminst;
}


};//endmodule
#endif
