// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_0_6_H__
#define __infer_Weight0_f_0_6_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_0_6_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_0_6_ram) {
        ram[0] = "0b00111101111100011000101000000001";
        ram[1] = "0b10111101000111011101000010010110";
        ram[2] = "0b10111110111110010000101010111011";
        ram[3] = "0b10111111011110011111101001000100";
        ram[4] = "0b10111110100101011000000011100101";
        ram[5] = "0b10111111100001010101111101111000";
        ram[6] = "0b00111110010011110011100000111111";
        ram[7] = "0b00111101111000001011010101100111";
        ram[8] = "0b00111110011100000000100001100011";
        ram[9] = "0b10111111010111001110101111001100";
        ram[10] = "0b10111111100101001010101111100111";
        ram[11] = "0b10111110000010010100100011011100";
        ram[12] = "0b10111110000010100110010100000110";
        ram[13] = "0b10111110000111101010110000000000";
        ram[14] = "0b10111110010111011001011110110011";
        ram[15] = "0b00111111011101001010101100011101";
        ram[16] = "0b10111110010111111001100111000100";
        ram[17] = "0b00111111001110101110111101110000";
        ram[18] = "0b10111101001001111011000111000000";
        ram[19] = "0b00111110110010101100001010011100";
        ram[20] = "0b10111110100001110000001011100110";
        ram[21] = "0b00111110010110011010101001100001";
        ram[22] = "0b00111111000001101001001001110001";
        ram[23] = "0b00111111001001001101110100001110";
        ram[24] = "0b10111111100100101010000110000011";
        ram[25] = "0b10111111011111011100001110101101";
        ram[26] = "0b10111101010111010100001100000111";
        ram[27] = "0b00111111001110000111110110100010";
        ram[28] = "0b00111011111001111111011011110101";
        ram[29] = "0b10111111000011101001100010111011";
        ram[30] = "0b10111111000001001110010111110111";
        ram[31] = "0b10111110101001100011010010011000";


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


SC_MODULE(infer_Weight0_f_0_6) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_0_6_ram* meminst;


SC_CTOR(infer_Weight0_f_0_6) {
meminst = new infer_Weight0_f_0_6_ram("infer_Weight0_f_0_6_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_0_6() {
    delete meminst;
}


};//endmodule
#endif
