// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_0bkl_H__
#define __infer_Weight0_i_0bkl_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_0bkl_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_0bkl_ram) {
        ram[0] = "0b10111110000111101110111110100010";
        ram[1] = "0b00111110000100010011011011100111";
        ram[2] = "0b00111111001001111010011110111001";
        ram[3] = "0b00111111001101100111000001011101";
        ram[4] = "0b00111101100010100001011000011110";
        ram[5] = "0b10111111011010000000101110101010";
        ram[6] = "0b00111110111001110111101100011000";
        ram[7] = "0b00111111100100010000110001111000";
        ram[8] = "0b00111011111100101111000100100100";
        ram[9] = "0b10111111010101110100011011101101";
        ram[10] = "0b00111101101110010011001111100011";
        ram[11] = "0b10111111011110011001001011011010";
        ram[12] = "0b00111111001100110110110010111110";
        ram[13] = "0b00111110100011000110001101001001";
        ram[14] = "0b10111101011000111110100011011110";
        ram[15] = "0b10111111001000100100011111011100";
        ram[16] = "0b00111110101011011110111111101001";
        ram[17] = "0b10111110000000110110011101011110";
        ram[18] = "0b00111111001110001001001011001101";
        ram[19] = "0b10111101101000101101100111001111";
        ram[20] = "0b10111110101011010110000111010100";
        ram[21] = "0b00111111011010100001100110111001";
        ram[22] = "0b00111111000100111000001100010111";
        ram[23] = "0b10111110101100011001110010011101";
        ram[24] = "0b00111110010001011001100110101010";
        ram[25] = "0b10111111010111000011110001011100";
        ram[26] = "0b10111110101011011110101001000110";
        ram[27] = "0b00111110111010000011101100111111";
        ram[28] = "0b10111110100111010101001111101111";
        ram[29] = "0b10111111010010010110010000110000";
        ram[30] = "0b10111110100101100100101100100011";
        ram[31] = "0b10111101100010000010010000001011";


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


SC_MODULE(infer_Weight0_i_0bkl) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_0bkl_ram* meminst;


SC_CTOR(infer_Weight0_i_0bkl) {
meminst = new infer_Weight0_i_0bkl_ram("infer_Weight0_i_0bkl_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_0bkl() {
    delete meminst;
}


};//endmodule
#endif
