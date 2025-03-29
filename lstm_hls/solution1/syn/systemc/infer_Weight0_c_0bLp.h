// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_0bLp_H__
#define __infer_Weight0_c_0bLp_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_0bLp_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_0bLp_ram) {
        ram[0] = "0b00111101111001101110011101100000";
        ram[1] = "0b10111110101101010101111101010111";
        ram[2] = "0b10111110000110010011010000100110";
        ram[3] = "0b10111110110001111000010100001110";
        ram[4] = "0b00111110010110101100011110010111";
        ram[5] = "0b00111110001001011101110111010011";
        ram[6] = "0b10111110011010100011100011111100";
        ram[7] = "0b10111110100101110010111100010010";
        ram[8] = "0b10111110000101111010101111111100";
        ram[9] = "0b10111101101001010001000010010000";
        ram[10] = "0b00111110011011001010100011100011";
        ram[11] = "0b00111110011100101001000001101001";
        ram[12] = "0b10111101010010001001111000110100";
        ram[13] = "0b10111101111000011000001011101101";
        ram[14] = "0b00111110100001101001001110011111";
        ram[15] = "0b10111111001010000110101100100111";
        ram[16] = "0b00111110100000011010001010100101";
        ram[17] = "0b00111110011111001011110101010101";
        ram[18] = "0b00111100100101100110010110011101";
        ram[19] = "0b10111111010110011110110011110110";
        ram[20] = "0b00111101100100101111110010101101";
        ram[21] = "0b10111110110110111111100111101000";
        ram[22] = "0b00111101011101110101101001110101";
        ram[23] = "0b00111110110100100100011000010111";
        ram[24] = "0b00111110011110101001000011001101";
        ram[25] = "0b10111101000111110000100100001111";
        ram[26] = "0b10111101111000011101001100100100";
        ram[27] = "0b00111101100101110001100011101100";
        ram[28] = "0b00111110011110011100110011111011";
        ram[29] = "0b10111110110100000000010011111011";
        ram[30] = "0b00111111000000111100101010000110";
        ram[31] = "0b00111101001011011001110011110001";


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


SC_MODULE(infer_Weight0_c_0bLp) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_0bLp_ram* meminst;


SC_CTOR(infer_Weight0_c_0bLp) {
meminst = new infer_Weight0_c_0bLp_ram("infer_Weight0_c_0bLp_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_0bLp() {
    delete meminst;
}


};//endmodule
#endif
