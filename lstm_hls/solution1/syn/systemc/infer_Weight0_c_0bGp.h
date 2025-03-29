// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_0bGp_H__
#define __infer_Weight0_c_0bGp_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_0bGp_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_0bGp_ram) {
        ram[0] = "0b00111101010000110111001011100111";
        ram[1] = "0b00111101111011100100100001100010";
        ram[2] = "0b10110111111100110100010100000111";
        ram[3] = "0b10111100001011001100000010111110";
        ram[4] = "0b00111110101000111001011011110010";
        ram[5] = "0b10111100110011100011001101101010";
        ram[6] = "0b10111110110001000001010011101000";
        ram[7] = "0b10111110100111000101011000001100";
        ram[8] = "0b00111101100101000110110101000000";
        ram[9] = "0b00111101010110001101011010010001";
        ram[10] = "0b10111111000100000000001000011001";
        ram[11] = "0b10111110000101110000110110100110";
        ram[12] = "0b10111110010010111100110110111100";
        ram[13] = "0b10111110101101111011010110001101";
        ram[14] = "0b00111110100110011000001111111001";
        ram[15] = "0b00111110111000000111100111000100";
        ram[16] = "0b00111101101101100011100100001101";
        ram[17] = "0b00111101000101110001001110101101";
        ram[18] = "0b10111110100111001011101000110000";
        ram[19] = "0b10111101101011000100101001000001";
        ram[20] = "0b00111110101000111100111011001000";
        ram[21] = "0b10111110011101110011100001100001";
        ram[22] = "0b10111101001010000001000100101100";
        ram[23] = "0b10111110010101100110010100010111";
        ram[24] = "0b00111101111001011010100100100010";
        ram[25] = "0b00111011001100000011100111101111";
        ram[26] = "0b10111100110100100100101111111101";
        ram[27] = "0b10111101000010000100011000100000";
        ram[28] = "0b00111110011100000100011011000111";
        ram[29] = "0b00111101110110101010001101101010";
        ram[30] = "0b00111110111100000101101010010010";
        ram[31] = "0b00111110100101111110000100010001";


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


SC_MODULE(infer_Weight0_c_0bGp) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_0bGp_ram* meminst;


SC_CTOR(infer_Weight0_c_0bGp) {
meminst = new infer_Weight0_c_0bGp_ram("infer_Weight0_c_0bGp_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_0bGp() {
    delete meminst;
}


};//endmodule
#endif
