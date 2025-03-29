// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_0_5_H__
#define __infer_Weight0_o_0_5_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_0_5_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_0_5_ram) {
        ram[0] = "0b10111111010100011110110010000001";
        ram[1] = "0b00111111001000110011000111010011";
        ram[2] = "0b00111111001001000100110100110100";
        ram[3] = "0b10111110110000001110101110101011";
        ram[4] = "0b10111110001111000101101100001000";
        ram[5] = "0b10111111001010100011110110110100";
        ram[6] = "0b10111111010001000111010001010100";
        ram[7] = "0b00111110100101001111110010100100";
        ram[8] = "0b00111101101000100011111000011000";
        ram[9] = "0b00111100000001110000100101110100";
        ram[10] = "0b00111110110011010111110110011110";
        ram[11] = "0b10111110100010110111000010001011";
        ram[12] = "0b10111110100000011110110010010010";
        ram[13] = "0b00111101101000111100010010110001";
        ram[14] = "0b10111110001100101011001001111101";
        ram[15] = "0b00111111001110110010111000000110";
        ram[16] = "0b00111110111110110111011011110111";
        ram[17] = "0b00111110010011011111010110001100";
        ram[18] = "0b00111110100100010101101011110011";
        ram[19] = "0b00111101111101001010001010111010";
        ram[20] = "0b00111101101001111001001011010001";
        ram[21] = "0b10111110110111101010000101000000";
        ram[22] = "0b10111110011001111010111101100100";
        ram[23] = "0b00111111001100001111001011010000";
        ram[24] = "0b00111111001111011001011101110000";
        ram[25] = "0b10111110110101000011110101101000";
        ram[26] = "0b10111111000010010110000000001111";
        ram[27] = "0b00111110101010101111011111010011";
        ram[28] = "0b00111110011010011100010001010100";
        ram[29] = "0b00111110101010001011000011110010";
        ram[30] = "0b10111110001000010000110011110110";
        ram[31] = "0b10111111011010010010111111000010";


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


SC_MODULE(infer_Weight0_o_0_5) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_0_5_ram* meminst;


SC_CTOR(infer_Weight0_o_0_5) {
meminst = new infer_Weight0_o_0_5_ram("infer_Weight0_o_0_5_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_0_5() {
    delete meminst;
}


};//endmodule
#endif
