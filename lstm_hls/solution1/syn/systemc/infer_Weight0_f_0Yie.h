// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_0Yie_H__
#define __infer_Weight0_f_0Yie_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_0Yie_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_0Yie_ram) {
        ram[0] = "0b00111111011101000100001100001011";
        ram[1] = "0b00111101111100100101111001010111";
        ram[2] = "0b10111111010110001001011111011001";
        ram[3] = "0b00111111010011000100000011010001";
        ram[4] = "0b10111101001001001111010101001101";
        ram[5] = "0b10111101110101010011110101100100";
        ram[6] = "0b10111111000001110111100010111100";
        ram[7] = "0b10111101000001001001010101011011";
        ram[8] = "0b10111101000011000110111101111010";
        ram[9] = "0b10111110101111110100001101100011";
        ram[10] = "0b10111110100111001110001000001001";
        ram[11] = "0b10111101101111101111110001111010";
        ram[12] = "0b00111101110011001100101010110100";
        ram[13] = "0b00111110111001101000111100101010";
        ram[14] = "0b10111110101011011101000110100010";
        ram[15] = "0b00111111010100001100000000100111";
        ram[16] = "0b10111111011010110010101010101110";
        ram[17] = "0b10111111011011111111101100010110";
        ram[18] = "0b10111111000011101101101000110100";
        ram[19] = "0b00111111010001100011010100111111";
        ram[20] = "0b10111111001110010001010000011010";
        ram[21] = "0b00111110110101010011110101000011";
        ram[22] = "0b00111111000010100000101000100000";
        ram[23] = "0b00111110111110101101100111001111";
        ram[24] = "0b10111111100010011010010011010111";
        ram[25] = "0b10111111010111001111010101001101";
        ram[26] = "0b00111111001010001011110101010101";
        ram[27] = "0b10111100011111000001000101011110";
        ram[28] = "0b10111110110101111110010101100100";
        ram[29] = "0b10111110010001110100110101011001";
        ram[30] = "0b00111110100000111001100010000101";
        ram[31] = "0b00111110100000010001000101001001";


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


SC_MODULE(infer_Weight0_f_0Yie) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_0Yie_ram* meminst;


SC_CTOR(infer_Weight0_f_0Yie) {
meminst = new infer_Weight0_f_0Yie_ram("infer_Weight0_f_0Yie_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_0Yie() {
    delete meminst;
}


};//endmodule
#endif
