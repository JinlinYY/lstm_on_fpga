// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_0bHp_H__
#define __infer_Weight0_c_0bHp_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_0bHp_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_0bHp_ram) {
        ram[0] = "0b10111111000101010011000000000110";
        ram[1] = "0b10111110000100011001110010011101";
        ram[2] = "0b10111110001101100010110011111110";
        ram[3] = "0b00111110000100100101000000101111";
        ram[4] = "0b10111110001011111111001010100001";
        ram[5] = "0b10111101100000011111100101101010";
        ram[6] = "0b10111101110100101110011010100111";
        ram[7] = "0b00111110111000010001111101110001";
        ram[8] = "0b10111101000101010001101001000011";
        ram[9] = "0b00111011000101011000110110011011";
        ram[10] = "0b10111110101100011100100110110100";
        ram[11] = "0b10111110101101111011100001001110";
        ram[12] = "0b00111110101011011101011111101101";
        ram[13] = "0b00111101110010100000011001100100";
        ram[14] = "0b10111111011000111100100010001110";
        ram[15] = "0b10111110010111100111100100100101";
        ram[16] = "0b00111110000100001101101101101010";
        ram[17] = "0b00111101001001100101101011011110";
        ram[18] = "0b10111111000010011000000011000011";
        ram[19] = "0b10111110000111000100011100011011";
        ram[20] = "0b10111110010101101000100010111110";
        ram[21] = "0b00111101101100000101100101100100";
        ram[22] = "0b00111110011011110101011111110111";
        ram[23] = "0b00111110110110011010111010010010";
        ram[24] = "0b10111110100100100101101001101000";
        ram[25] = "0b10111101110110001000010011000111";
        ram[26] = "0b00111101000111000010111101000000";
        ram[27] = "0b00111101101010101011001101101000";
        ram[28] = "0b10111101010010101011101101000101";
        ram[29] = "0b10111110000101110010100010100110";
        ram[30] = "0b10111110100110010101010110110100";
        ram[31] = "0b10111101111101100101001111001010";


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


SC_MODULE(infer_Weight0_c_0bHp) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_0bHp_ram* meminst;


SC_CTOR(infer_Weight0_c_0bHp) {
meminst = new infer_Weight0_c_0bHp_ram("infer_Weight0_c_0bHp_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_0bHp() {
    delete meminst;
}


};//endmodule
#endif
