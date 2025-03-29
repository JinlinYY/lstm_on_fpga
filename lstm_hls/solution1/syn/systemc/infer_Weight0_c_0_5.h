// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_0_5_H__
#define __infer_Weight0_c_0_5_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_0_5_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_0_5_ram) {
        ram[0] = "0b00111110000101111011011101000001";
        ram[1] = "0b10111110111010110111000010101100";
        ram[2] = "0b00111110100101101100110110101111";
        ram[3] = "0b00111110111110011011001101001010";
        ram[4] = "0b00111101100000110101110101101000";
        ram[5] = "0b10111110101110100011010101010000";
        ram[6] = "0b10111110001011000100111111000010";
        ram[7] = "0b10111111011100011111000010100010";
        ram[8] = "0b10111110001100011100000100001101";
        ram[9] = "0b10111110101011111110100110111000";
        ram[10] = "0b00111110010001110000001000011101";
        ram[11] = "0b00111111011110100001110100100001";
        ram[12] = "0b10111110101101010111111101010010";
        ram[13] = "0b10111011111101001111000011011000";
        ram[14] = "0b10111101011001010111110010010001";
        ram[15] = "0b00111111010011010010001011111011";
        ram[16] = "0b00111101011001001011111111010011";
        ram[17] = "0b00111101100110110011101011101111";
        ram[18] = "0b00111101011100001111001001111100";
        ram[19] = "0b00111110111010001111110100011010";
        ram[20] = "0b10111110101000101110011110010010";
        ram[21] = "0b10111110000010011000010110101101";
        ram[22] = "0b10111101001100001000011110000111";
        ram[23] = "0b00111110001111111000001001101111";
        ram[24] = "0b00111110001000111011100010100010";
        ram[25] = "0b10111110100000111001100100001011";
        ram[26] = "0b00111101110101000100000000101001";
        ram[27] = "0b10111110011000001100110011111111";
        ram[28] = "0b00111110100011001010011011001010";
        ram[29] = "0b00111110000101001000100110001111";
        ram[30] = "0b10111111000010111101010010101110";
        ram[31] = "0b10111110011100010101011110101100";


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


SC_MODULE(infer_Weight0_c_0_5) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_0_5_ram* meminst;


SC_CTOR(infer_Weight0_c_0_5) {
meminst = new infer_Weight0_c_0_5_ram("infer_Weight0_c_0_5_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_0_5() {
    delete meminst;
}


};//endmodule
#endif
