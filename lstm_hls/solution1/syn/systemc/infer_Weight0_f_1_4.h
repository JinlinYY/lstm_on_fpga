// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_1_4_H__
#define __infer_Weight0_f_1_4_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_1_4_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_1_4_ram) {
        ram[0] = "0b00111110001001001011111001000000";
        ram[1] = "0b00111110110110100110000010110011";
        ram[2] = "0b00111110100101110100000110101111";
        ram[3] = "0b00111111010000111010000110010000";
        ram[4] = "0b00111110100011010010110100100011";
        ram[5] = "0b00111110000111100100010001110100";
        ram[6] = "0b00111111001010000101010110010111";
        ram[7] = "0b00111110110100110011011101000011";
        ram[8] = "0b00111110110010011100111000000111";
        ram[9] = "0b00111111011111000101100111101010";
        ram[10] = "0b00111101001110101010100110110101";
        ram[11] = "0b00111110101010111110101010110011";
        ram[12] = "0b00111101011111111100111010111000";
        ram[13] = "0b00111110010011001000001000010111";
        ram[14] = "0b00111101101011010110011101110111";
        ram[15] = "0b10111101101110100101111111001000";
        ram[16] = "0b10111100001101101100001101110110";
        ram[17] = "0b00111110010110100110110001011101";
        ram[18] = "0b00111110101110111001011111011101";
        ram[19] = "0b00111100101111101111101011101000";
        ram[20] = "0b00111111001011010111100000111110";
        ram[21] = "0b00111111000000111100000110101101";
        ram[22] = "0b00111111100010101011010101100111";
        ram[23] = "0b00111110111100111011001110100111";
        ram[24] = "0b00111101110011001100110001000111";
        ram[25] = "0b00111111100111000000001111001101";
        ram[26] = "0b10111101101001001000011100110011";
        ram[27] = "0b00111101100100101101110000101011";
        ram[28] = "0b10111110011010110111011010110100";
        ram[29] = "0b00111110001011010010100000000111";
        ram[30] = "0b00111110111001111100011111100111";
        ram[31] = "0b00111110110101101110100010110000";


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


SC_MODULE(infer_Weight0_f_1_4) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_1_4_ram* meminst;


SC_CTOR(infer_Weight0_f_1_4) {
meminst = new infer_Weight0_f_1_4_ram("infer_Weight0_f_1_4_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_1_4() {
    delete meminst;
}


};//endmodule
#endif
