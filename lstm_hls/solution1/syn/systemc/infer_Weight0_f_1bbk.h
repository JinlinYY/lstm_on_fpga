// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_1bbk_H__
#define __infer_Weight0_f_1bbk_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_1bbk_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_1bbk_ram) {
        ram[0] = "0b00111111000010010111000100111011";
        ram[1] = "0b00111111010000000011110010110000";
        ram[2] = "0b00111111100100111011111010001000";
        ram[3] = "0b00111111010111010001001011001011";
        ram[4] = "0b00111101110001001000011110111010";
        ram[5] = "0b10111110010001001101011010100001";
        ram[6] = "0b00111111000010101110000011010010";
        ram[7] = "0b00111111110100001010001101010001";
        ram[8] = "0b00111110111000101110011010000110";
        ram[9] = "0b00111111011010011100110111000100";
        ram[10] = "0b00111101101000101100011111111100";
        ram[11] = "0b10111110100111001101010101110011";
        ram[12] = "0b00111110000000001110001000111011";
        ram[13] = "0b00111110010000111111001101011010";
        ram[14] = "0b00111111001010100000001001000011";
        ram[15] = "0b00111111001100000111010110100011";
        ram[16] = "0b00111110001101001111011011100000";
        ram[17] = "0b00111110010011000010001101110100";
        ram[18] = "0b00111110111110110011001101010101";
        ram[19] = "0b00111110101010001101001111110010";
        ram[20] = "0b00111111010011011110011100110010";
        ram[21] = "0b00111110000111100101111001101000";
        ram[22] = "0b00111111100110010001101100011110";
        ram[23] = "0b00111111100100000011011100001101";
        ram[24] = "0b00111101000100010001101011011010";
        ram[25] = "0b00111111110010100000111110001000";
        ram[26] = "0b00111110100100010111100010110011";
        ram[27] = "0b00111101110100111110001011010110";
        ram[28] = "0b00111110000110100100000110100010";
        ram[29] = "0b00111100101111100000001101110001";
        ram[30] = "0b10111110000101010000101111011000";
        ram[31] = "0b00111110011101111101110100000001";


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


SC_MODULE(infer_Weight0_f_1bbk) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_1bbk_ram* meminst;


SC_CTOR(infer_Weight0_f_1bbk) {
meminst = new infer_Weight0_f_1bbk_ram("infer_Weight0_f_1bbk_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_1bbk() {
    delete meminst;
}


};//endmodule
#endif
