// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_0_1_H__
#define __infer_Weight0_o_0_1_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_0_1_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_0_1_ram) {
        ram[0] = "0b00111110101100011100000011001010";
        ram[1] = "0b10111110111111001011000000111010";
        ram[2] = "0b00111111011100011101100001010001";
        ram[3] = "0b00111110011001111001000110000010";
        ram[4] = "0b00111110011111001111000011111010";
        ram[5] = "0b00111110110100011010010110000111";
        ram[6] = "0b10111110000110000010001011111111";
        ram[7] = "0b10111011111010100001100000110111";
        ram[8] = "0b10111101110011000010100010110011";
        ram[9] = "0b10111110001010111101001011111010";
        ram[10] = "0b00111110001010001101000100001111";
        ram[11] = "0b10111101000001100100011001101011";
        ram[12] = "0b10111111000101111001111110101001";
        ram[13] = "0b00111111010001110010100111100101";
        ram[14] = "0b00111100101100001111001001111100";
        ram[15] = "0b00111111000001100110010111110001";
        ram[16] = "0b00111110110011011000100011100011";
        ram[17] = "0b10111110011111010100000100110001";
        ram[18] = "0b00111101001001001100001011111000";
        ram[19] = "0b00111110101100001000100000001110";
        ram[20] = "0b10111101101100001111010100011011";
        ram[21] = "0b10111100010010100010010101010011";
        ram[22] = "0b00111111010011010001001010111010";
        ram[23] = "0b10111111101110110000101010001001";
        ram[24] = "0b10111110100110101100010001110010";
        ram[25] = "0b00111110101111011001010011110010";
        ram[26] = "0b10111101111011010100000010101011";
        ram[27] = "0b10111101110101000001101001101001";
        ram[28] = "0b10111110111100101100001111001010";
        ram[29] = "0b00111110000010000011011101110010";
        ram[30] = "0b10111111101100000110100010110010";
        ram[31] = "0b00111110100111010110110111000010";


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


SC_MODULE(infer_Weight0_o_0_1) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_0_1_ram* meminst;


SC_CTOR(infer_Weight0_o_0_1) {
meminst = new infer_Weight0_o_0_1_ram("infer_Weight0_o_0_1_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_0_1() {
    delete meminst;
}


};//endmodule
#endif
