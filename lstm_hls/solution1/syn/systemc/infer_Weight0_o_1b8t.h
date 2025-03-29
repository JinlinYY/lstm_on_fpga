// ==============================================================
// File generated on Fri Mar 28 13:00:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_1b8t_H__
#define __infer_Weight0_o_1b8t_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_1b8t_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_1b8t_ram) {
        ram[0] = "0b10111101000111010100111110011100";
        ram[1] = "0b00111110010110010001100100100110";
        ram[2] = "0b10111111010001100010101100000110";
        ram[3] = "0b00111110010111011110110100101001";
        ram[4] = "0b10111101100000100001011011000110";
        ram[5] = "0b00111111000110100011000101100010";
        ram[6] = "0b10111111001100100110110111001110";
        ram[7] = "0b00111101110101001110100001110101";
        ram[8] = "0b10111110100010111111110111111000";
        ram[9] = "0b00111110110111101000100101000100";
        ram[10] = "0b10111111010010010010100010001101";
        ram[11] = "0b00111111010101111110011010110100";
        ram[12] = "0b10111111101110101010000100100111";
        ram[13] = "0b10111101000110010101011110001010";
        ram[14] = "0b00111101110100100100110110010000";
        ram[15] = "0b00111110001101001110010100001100";
        ram[16] = "0b00111110010110011111111010000111";
        ram[17] = "0b10111110110000010101010110110100";
        ram[18] = "0b10111110001111001111010100101100";
        ram[19] = "0b00111110011010111000010101100010";
        ram[20] = "0b10111101010001100111010010001110";
        ram[21] = "0b00111110111011010111100000111110";
        ram[22] = "0b00111111000110100111000001001100";
        ram[23] = "0b00111110101001110010100001100011";
        ram[24] = "0b00111111011010011110100001100000";
        ram[25] = "0b10111110100100111001010000010000";
        ram[26] = "0b10111110110000010010010000101001";
        ram[27] = "0b10111110100001010100001110101111";
        ram[28] = "0b00111111001001111001111011100000";
        ram[29] = "0b00111110100000011100001000111011";
        ram[30] = "0b10111110100101011011101011010100";
        ram[31] = "0b10111110110110001111011111111101";


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


SC_MODULE(infer_Weight0_o_1b8t) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_1b8t_ram* meminst;


SC_CTOR(infer_Weight0_o_1b8t) {
meminst = new infer_Weight0_o_1b8t_ram("infer_Weight0_o_1b8t_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_1b8t() {
    delete meminst;
}


};//endmodule
#endif
