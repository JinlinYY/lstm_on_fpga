// ==============================================================
// File generated on Fri Mar 28 13:00:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_0bZs_H__
#define __infer_Weight0_o_0bZs_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_0bZs_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_0bZs_ram) {
        ram[0] = "0b10111111001001110101101010111000";
        ram[1] = "0b00111110100101110001011100110111";
        ram[2] = "0b10111111000000111001110010000100";
        ram[3] = "0b10111110011000001110111001001010";
        ram[4] = "0b00111110010110110110101111110100";
        ram[5] = "0b10111111010101101100000111100011";
        ram[6] = "0b00111111001110011011110101010001";
        ram[7] = "0b10111101110100010110101100010010";
        ram[8] = "0b00111110011100101101111111010111";
        ram[9] = "0b00111111000010011111111111010110";
        ram[10] = "0b10111111010101011011011101001010";
        ram[11] = "0b00111110100000011001011110100010";
        ram[12] = "0b10111101101111111101001001100011";
        ram[13] = "0b10111111000011100010110101100010";
        ram[14] = "0b10111110110000010101011001011100";
        ram[15] = "0b00111110000110011100000111111000";
        ram[16] = "0b00111110010110101000110110101000";
        ram[17] = "0b10111111000001000011111100011100";
        ram[18] = "0b10111110101010110010110101001101";
        ram[19] = "0b10111110010100100010110011001011";
        ram[20] = "0b10111110000110111110110101110100";
        ram[21] = "0b00111111100000000101110101001010";
        ram[22] = "0b10111111000011000011010001101110";
        ram[23] = "0b00111110011011100000101001000010";
        ram[24] = "0b10111111010100011101001001111100";
        ram[25] = "0b00111110100001000100001101110000";
        ram[26] = "0b10111101001010011001100001001010";
        ram[27] = "0b10111111010011111110011111000000";
        ram[28] = "0b10111010010011101001000111001001";
        ram[29] = "0b00111101101101100011000110110110";
        ram[30] = "0b10111110110100100111101001100011";
        ram[31] = "0b10111110001100011010000000000110";


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


SC_MODULE(infer_Weight0_o_0bZs) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_0bZs_ram* meminst;


SC_CTOR(infer_Weight0_o_0bZs) {
meminst = new infer_Weight0_o_0bZs_ram("infer_Weight0_o_0bZs_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_0bZs() {
    delete meminst;
}


};//endmodule
#endif
