// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_1_1_H__
#define __infer_Weight0_c_1_1_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_1_1_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_1_1_ram) {
        ram[0] = "0b00111110001000110110110101100101";
        ram[1] = "0b00111111001100010101101010101111";
        ram[2] = "0b10111110011010010100010111111010";
        ram[3] = "0b00111101000100100100010110110011";
        ram[4] = "0b10111110110100011000000100111000";
        ram[5] = "0b10111100100010111000001010000000";
        ram[6] = "0b10111101110110110001111000011001";
        ram[7] = "0b10111101100000111000000110010101";
        ram[8] = "0b00111110001100111010011100010001";
        ram[9] = "0b00111100100011100011101011000001";
        ram[10] = "0b10111111100111001100011011001110";
        ram[11] = "0b00111111100111001101111101001000";
        ram[12] = "0b00111111100000111000110110101100";
        ram[13] = "0b10111110001110001100011110011111";
        ram[14] = "0b10111111010011110010110010100101";
        ram[15] = "0b00111100111000111111001101011010";
        ram[16] = "0b00111111001100011100011010110000";
        ram[17] = "0b10111110110110000010001101100100";
        ram[18] = "0b10111101111010011011011100111001";
        ram[19] = "0b10111101101110111101100000111000";
        ram[20] = "0b10111111000101100010010101000010";
        ram[21] = "0b10111110001101110111001110011111";
        ram[22] = "0b00111111010101101001000110010111";
        ram[23] = "0b10111111000011001010000111110001";
        ram[24] = "0b10111111101001100001110011010110";
        ram[25] = "0b10111111101100000110010111000111";
        ram[26] = "0b10111101111101011010111110110000";
        ram[27] = "0b00111110110101111000100110000011";
        ram[28] = "0b10111110011111000110000000000011";
        ram[29] = "0b00111110010010000100111001000000";
        ram[30] = "0b10111111100111010100011011110110";
        ram[31] = "0b10111101100000100001001110100001";


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


SC_MODULE(infer_Weight0_c_1_1) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_1_1_ram* meminst;


SC_CTOR(infer_Weight0_c_1_1) {
meminst = new infer_Weight0_c_1_1_ram("infer_Weight0_c_1_1_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_1_1() {
    delete meminst;
}


};//endmodule
#endif
