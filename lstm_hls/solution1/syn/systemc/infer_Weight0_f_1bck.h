// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_1bck_H__
#define __infer_Weight0_f_1bck_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_1bck_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_1bck_ram) {
        ram[0] = "0b10111110010010111011001110000101";
        ram[1] = "0b10111110100010101001101011000011";
        ram[2] = "0b00111110101011110101010000101010";
        ram[3] = "0b10111101010100010010001000110010";
        ram[4] = "0b00111110100010011111110110011100";
        ram[5] = "0b10111111100010110111000011101111";
        ram[6] = "0b10111100100111001001101101000001";
        ram[7] = "0b00111110110110110011010010100100";
        ram[8] = "0b10111110001111101110110011000000";
        ram[9] = "0b10111111010011111010010100111100";
        ram[10] = "0b10111101001101000101001110001111";
        ram[11] = "0b10111101001111110100001101000010";
        ram[12] = "0b10111110110101100110001001111000";
        ram[13] = "0b00111101100100011110010111000001";
        ram[14] = "0b10111111001110101101101100001110";
        ram[15] = "0b00111110110110010011011101001100";
        ram[16] = "0b10111110101110001001100101011011";
        ram[17] = "0b00111101111010100111100000101001";
        ram[18] = "0b10111111000001111100101111100110";
        ram[19] = "0b00111110000100100111100001001011";
        ram[20] = "0b10111111100100001101000001001110";
        ram[21] = "0b00111110110110001101000000000011";
        ram[22] = "0b10111110110100110001101000101010";
        ram[23] = "0b10111110110010000111100110100011";
        ram[24] = "0b00111111100101111011101111000111";
        ram[25] = "0b10111111000111001011010101100111";
        ram[26] = "0b00111100011110000001000111110101";
        ram[27] = "0b10111110011011101110011011111011";
        ram[28] = "0b10111101011100111001101100000010";
        ram[29] = "0b10111110100110111000000111111001";
        ram[30] = "0b00111110111001001111100010110110";
        ram[31] = "0b10111111100001110010110001011010";


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


SC_MODULE(infer_Weight0_f_1bck) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_1bck_ram* meminst;


SC_CTOR(infer_Weight0_f_1bck) {
meminst = new infer_Weight0_f_1bck_ram("infer_Weight0_f_1bck_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_1bck() {
    delete meminst;
}


};//endmodule
#endif
