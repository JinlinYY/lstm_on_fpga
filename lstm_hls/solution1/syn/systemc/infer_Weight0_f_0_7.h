// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_0_7_H__
#define __infer_Weight0_f_0_7_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_0_7_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_0_7_ram) {
        ram[0] = "0b00111110101010010001000110101110";
        ram[1] = "0b00111110010000010000000111110011";
        ram[2] = "0b10111110111111011001111100101100";
        ram[3] = "0b00111101100011011100011111101111";
        ram[4] = "0b10111110001000001110010110100011";
        ram[5] = "0b00111111100010000111001101100000";
        ram[6] = "0b10111100111101001010100110001011";
        ram[7] = "0b00111111101101001010101111110111";
        ram[8] = "0b00111101111000101100100100001000";
        ram[9] = "0b00111111001000111110011111110011";
        ram[10] = "0b00111101100000000101011110001110";
        ram[11] = "0b00111111011111010100001010100010";
        ram[12] = "0b00111101111001101000100110000111";
        ram[13] = "0b00111110000100001110010101100000";
        ram[14] = "0b10111110101001001000010101011110";
        ram[15] = "0b00111110111001110110011110010000";
        ram[16] = "0b00111110011111110100000101101100";
        ram[17] = "0b10111111000100111011001001010111";
        ram[18] = "0b00111111000001011111101111111000";
        ram[19] = "0b00111100111111101001101101111100";
        ram[20] = "0b00111111100001000011001010101001";
        ram[21] = "0b00111111100100000101000000011110";
        ram[22] = "0b10111110000101010110010110000000";
        ram[23] = "0b00111111000010011101011010111111";
        ram[24] = "0b00111111100000111000100111011111";
        ram[25] = "0b00111110101100110110011011011000";
        ram[26] = "0b00111110001011100111110011010000";
        ram[27] = "0b00111111100010011111100001010101";
        ram[28] = "0b00111101110110010100011111010000";
        ram[29] = "0b10111101000001111010101011101111";
        ram[30] = "0b10111110001111011110111101000001";
        ram[31] = "0b10111101011001101110011101100000";


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


SC_MODULE(infer_Weight0_f_0_7) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_0_7_ram* meminst;


SC_CTOR(infer_Weight0_f_0_7) {
meminst = new infer_Weight0_f_0_7_ram("infer_Weight0_f_0_7_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_0_7() {
    delete meminst;
}


};//endmodule
#endif
