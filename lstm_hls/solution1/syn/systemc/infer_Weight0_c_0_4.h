// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_0_4_H__
#define __infer_Weight0_c_0_4_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_0_4_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_0_4_ram) {
        ram[0] = "0b00111100000000111011111001100110";
        ram[1] = "0b10111110101001111000010110010100";
        ram[2] = "0b10111110111101001011001100111110";
        ram[3] = "0b00111011101111001010110110011011";
        ram[4] = "0b10111111010011011001111110100001";
        ram[5] = "0b00111111000111100010101010000000";
        ram[6] = "0b10111101011010001010100100110111";
        ram[7] = "0b10111111000000010101101111001101";
        ram[8] = "0b10111100010101100111101110100010";
        ram[9] = "0b10111110110101100001000101110111";
        ram[10] = "0b10111110011110101101001101100011";
        ram[11] = "0b10111101111111010100001010000001";
        ram[12] = "0b10111101111100111101111110110001";
        ram[13] = "0b10111110001111100010100110110111";
        ram[14] = "0b10111111010110000101101101011011";
        ram[15] = "0b00111110010000101110110110111011";
        ram[16] = "0b00111111001101101010010100011110";
        ram[17] = "0b10111101110001001000101001011001";
        ram[18] = "0b10111110100011000111110000110001";
        ram[19] = "0b10111110000010010000011010001010";
        ram[20] = "0b10111111000001010100110011111101";
        ram[21] = "0b00111111000110010101110011111011";
        ram[22] = "0b00111110101101110011011010001011";
        ram[23] = "0b10111110100100101101001010011010";
        ram[24] = "0b10111110000110010011111110101111";
        ram[25] = "0b00111110110001000110110001110110";
        ram[26] = "0b00111110100100000111110110010001";
        ram[27] = "0b00111111001011111101001000110001";
        ram[28] = "0b10111101101011100011101000111011";
        ram[29] = "0b10111111000000011111000110111111";
        ram[30] = "0b10111110111010111000011001001101";
        ram[31] = "0b10111100110001100000111011011000";


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


SC_MODULE(infer_Weight0_c_0_4) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_0_4_ram* meminst;


SC_CTOR(infer_Weight0_c_0_4) {
meminst = new infer_Weight0_c_0_4_ram("infer_Weight0_c_0_4_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_0_4() {
    delete meminst;
}


};//endmodule
#endif
