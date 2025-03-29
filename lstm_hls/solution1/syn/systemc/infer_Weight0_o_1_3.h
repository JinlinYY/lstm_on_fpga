// ==============================================================
// File generated on Fri Mar 28 13:00:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_1_3_H__
#define __infer_Weight0_o_1_3_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_1_3_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_1_3_ram) {
        ram[0] = "0b00111110001101000110001011000011";
        ram[1] = "0b00111111000010011000001010111010";
        ram[2] = "0b00111110111110100111111000001111";
        ram[3] = "0b00111111010010100010001110001110";
        ram[4] = "0b00111101111011000110001111110001";
        ram[5] = "0b00111110010010010110111001011001";
        ram[6] = "0b00111111000100101110101110010010";
        ram[7] = "0b00111110001011101010011101001000";
        ram[8] = "0b10111110001101000111001001111110";
        ram[9] = "0b10111110000110010100011101001001";
        ram[10] = "0b10111110111101111110000000100110";
        ram[11] = "0b10111111110101101101101000010010";
        ram[12] = "0b00111111001101011011111010110010";
        ram[13] = "0b10111110111100000001110111100010";
        ram[14] = "0b00111111000010101100010001010000";
        ram[15] = "0b10111101010100100010110010001000";
        ram[16] = "0b00111111001000010011010011110000";
        ram[17] = "0b10111111011111110100001110100110";
        ram[18] = "0b00111110100000010101000111000110";
        ram[19] = "0b10111111111001110101000000011010";
        ram[20] = "0b10111111000100010001111000010001";
        ram[21] = "0b00111101100100001101111010001111";
        ram[22] = "0b00111111000011011001100111001100";
        ram[23] = "0b00111110001001101110110100100100";
        ram[24] = "0b00111110101100011001100110111011";
        ram[25] = "0b00111111000100110011100001100001";
        ram[26] = "0b10111110111011101000000110001000";
        ram[27] = "0b10111111010101001010000101011010";
        ram[28] = "0b00111110100111000100000110011010";
        ram[29] = "0b10111100010000000100110010001100";
        ram[30] = "0b10111111110000111000101011001010";
        ram[31] = "0b10111110010111001101010100110000";


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


SC_MODULE(infer_Weight0_o_1_3) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_1_3_ram* meminst;


SC_CTOR(infer_Weight0_o_1_3) {
meminst = new infer_Weight0_o_1_3_ram("infer_Weight0_o_1_3_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_1_3() {
    delete meminst;
}


};//endmodule
#endif
