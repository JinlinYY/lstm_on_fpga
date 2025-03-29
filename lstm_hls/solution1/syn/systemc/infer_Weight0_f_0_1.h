// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_0_1_H__
#define __infer_Weight0_f_0_1_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_0_1_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_0_1_ram) {
        ram[0] = "0b00111110101000100010011100101000";
        ram[1] = "0b10111100111011010011100101010100";
        ram[2] = "0b00111110100110001110110000110001";
        ram[3] = "0b10111110100011111101011000110000";
        ram[4] = "0b10111111001111011011101110011101";
        ram[5] = "0b10111110101000111101010100010011";
        ram[6] = "0b10111110110011110100111001100110";
        ram[7] = "0b10111110110110110111111000001011";
        ram[8] = "0b10111110011000100101110110001101";
        ram[9] = "0b00111111010000011101001001111100";
        ram[10] = "0b00111100100000010100111110001011";
        ram[11] = "0b00111111100100101111001011111010";
        ram[12] = "0b00111111010000001101001010010001";
        ram[13] = "0b00111111000100111110110000100101";
        ram[14] = "0b10111100000101010110110000001101";
        ram[15] = "0b10111101100011110000011000101101";
        ram[16] = "0b00111111011100100101100000001100";
        ram[17] = "0b10111110000101010000111000110100";
        ram[18] = "0b10111110111001110111110100001111";
        ram[19] = "0b00111110101000000011111110010010";
        ram[20] = "0b10111110000101111111010000010011";
        ram[21] = "0b10111110110100011101010101011110";
        ram[22] = "0b00111111011101011111011000010010";
        ram[23] = "0b10111111100000011101110001111011";
        ram[24] = "0b00111110110111001110000000110011";
        ram[25] = "0b10111110110011100011101100000100";
        ram[26] = "0b00111100101001101110000100010101";
        ram[27] = "0b00111111010000001010110000011001";
        ram[28] = "0b00111100100110101100111111111010";
        ram[29] = "0b10111110100111000110010010111011";
        ram[30] = "0b10111111110010011111001011011100";
        ram[31] = "0b10111110111111010101100000000000";


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


SC_MODULE(infer_Weight0_f_0_1) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_0_1_ram* meminst;


SC_CTOR(infer_Weight0_f_0_1) {
meminst = new infer_Weight0_f_0_1_ram("infer_Weight0_f_0_1_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_0_1() {
    delete meminst;
}


};//endmodule
#endif
