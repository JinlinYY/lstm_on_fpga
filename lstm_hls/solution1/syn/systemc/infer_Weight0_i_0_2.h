// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_0_2_H__
#define __infer_Weight0_i_0_2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_0_2_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_0_2_ram) {
        ram[0] = "0b10111110010110001001101100001111";
        ram[1] = "0b10111101110000000111000100111111";
        ram[2] = "0b00111110011011000011111000110010";
        ram[3] = "0b10111101000111111011000011010101";
        ram[4] = "0b00111101000011010011101011100111";
        ram[5] = "0b10111111011101101010100001000100";
        ram[6] = "0b10111101110100110111110010011010";
        ram[7] = "0b00111110001111011111101000000001";
        ram[8] = "0b10111101101011111100000001001101";
        ram[9] = "0b00111101011111111111101111001110";
        ram[10] = "0b00111110010000111010101100000000";
        ram[11] = "0b00111110010000111011111011101100";
        ram[12] = "0b10111100100001110010100011101001";
        ram[13] = "0b10111011101101010011110101100100";
        ram[14] = "0b00111110011110010110110011000110";
        ram[15] = "0b00111101111010001101100111111001";
        ram[16] = "0b00111101100000010110100000110000";
        ram[17] = "0b00111100111110101011001100100101";
        ram[18] = "0b10111101101111000011011000010001";
        ram[19] = "0b10111110011011010100011001101111";
        ram[20] = "0b10111101110001011111010100100111";
        ram[21] = "0b00111101000001010100110011011011";
        ram[22] = "0b00111110110100011110100001100000";
        ram[23] = "0b00111110001110000111010100001100";
        ram[24] = "0b00111110011111011110110101101100";
        ram[25] = "0b00111110111011001100000000111000";
        ram[26] = "0b10111011111101010110011001001001";
        ram[27] = "0b00111101110011000000010010000110";
        ram[28] = "0b00111100100011111001011011100001";
        ram[29] = "0b00111101111011001100110011001101";
        ram[30] = "0b10111101111001000101011101111110";
        ram[31] = "0b10111101110011100011001101101010";


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


SC_MODULE(infer_Weight0_i_0_2) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_0_2_ram* meminst;


SC_CTOR(infer_Weight0_i_0_2) {
meminst = new infer_Weight0_i_0_2_ram("infer_Weight0_i_0_2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_0_2() {
    delete meminst;
}


};//endmodule
#endif
