// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_0_0_H__
#define __infer_Weight0_f_0_0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_0_0_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_0_0_ram) {
        ram[0] = "0b00111100101010111010000101101110";
        ram[1] = "0b10111110110101101001100110100110";
        ram[2] = "0b10111111001000000001100100001001";
        ram[3] = "0b00111110000110011011011100111001";
        ram[4] = "0b00111011011011100110101110000011";
        ram[5] = "0b00111110011101000000011001111101";
        ram[6] = "0b10111100000101111111101001011101";
        ram[7] = "0b10111110010111101011011000111001";
        ram[8] = "0b00111110011111111110100110111000";
        ram[9] = "0b00111110100110100100001100110101";
        ram[10] = "0b00111110010100010011111000111110";
        ram[11] = "0b10111101000001011111100111011111";
        ram[12] = "0b10111101000010011010111011010101";
        ram[13] = "0b10111100101110110001100011011011";
        ram[14] = "0b10111100100010110111001111010010";
        ram[15] = "0b00111110011101011000011100001110";
        ram[16] = "0b00111110000011010001011110000011";
        ram[17] = "0b00111101100110011001000110111100";
        ram[18] = "0b00111110110000011000111000010001";
        ram[19] = "0b10111101101111110101101111100110";
        ram[20] = "0b00111110000011000111101101000110";
        ram[21] = "0b10111010001110111111010100001110";
        ram[22] = "0b00111101100111010101111001001010";
        ram[23] = "0b10111101110010000011100100000100";
        ram[24] = "0b00111110000100111101000000111001";
        ram[25] = "0b10111101001001110011010011111000";
        ram[26] = "0b10111100000110101000010001111011";
        ram[27] = "0b00111101101000111010001100100011";
        ram[28] = "0b10111101110011010101000101110010";
        ram[29] = "0b00111110100110101000111011010110";
        ram[30] = "0b00111101111100100100001000000111";
        ram[31] = "0b00111011111110100100100000110000";


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


SC_MODULE(infer_Weight0_f_0_0) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_0_0_ram* meminst;


SC_CTOR(infer_Weight0_f_0_0) {
meminst = new infer_Weight0_f_0_0_ram("infer_Weight0_f_0_0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_0_0() {
    delete meminst;
}


};//endmodule
#endif
