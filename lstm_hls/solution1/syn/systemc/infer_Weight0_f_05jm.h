// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_05jm_H__
#define __infer_Weight0_f_05jm_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_05jm_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_05jm_ram) {
        ram[0] = "0b10111110110011110000111110011101";
        ram[1] = "0b10111110101001111110110000110101";
        ram[2] = "0b00111110111011100001100100110011";
        ram[3] = "0b10111110100100011100111111011101";
        ram[4] = "0b10111101100100100110111110100100";
        ram[5] = "0b10111111000001000100110011110000";
        ram[6] = "0b00111110001101100000010001011100";
        ram[7] = "0b00111111001010010001010100010110";
        ram[8] = "0b10111110100110101000010010111110";
        ram[9] = "0b10111111000011110000000110000110";
        ram[10] = "0b10111111010101001001010000111110";
        ram[11] = "0b10111110101011110111010001000111";
        ram[12] = "0b10111110011000111110100001010111";
        ram[13] = "0b10111110101011010100100001100111";
        ram[14] = "0b10111101100001100001101011100111";
        ram[15] = "0b10111110001010100111000101011000";
        ram[16] = "0b10111111010100101100001010011100";
        ram[17] = "0b00111111000001011110011111111011";
        ram[18] = "0b10111110100110110000101001001110";
        ram[19] = "0b10111110111011100111110111011101";
        ram[20] = "0b10111110110101000001001000100111";
        ram[21] = "0b10111110110110111101011001000001";
        ram[22] = "0b00111101100011010011111000001100";
        ram[23] = "0b00111110100100100100000010111000";
        ram[24] = "0b00111110111011111110001000111111";
        ram[25] = "0b10111111100100101101010001011111";
        ram[26] = "0b00111101100011010101001110001011";
        ram[27] = "0b10111110110010111111110011001010";
        ram[28] = "0b00111111001101011001000110011011";
        ram[29] = "0b10111111001111100010001101011011";
        ram[30] = "0b00111111000110000101100100100001";
        ram[31] = "0b10111111010110000111011010011111";


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


SC_MODULE(infer_Weight0_f_05jm) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_05jm_ram* meminst;


SC_CTOR(infer_Weight0_f_05jm) {
meminst = new infer_Weight0_f_05jm_ram("infer_Weight0_f_05jm_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_05jm() {
    delete meminst;
}


};//endmodule
#endif
