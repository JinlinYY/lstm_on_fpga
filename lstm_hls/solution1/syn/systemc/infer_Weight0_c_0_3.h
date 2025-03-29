// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_0_3_H__
#define __infer_Weight0_c_0_3_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_0_3_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_0_3_ram) {
        ram[0] = "0b10111110110001011011000101100100";
        ram[1] = "0b00111110011111010100111101011001";
        ram[2] = "0b00111111011100010011010000000101";
        ram[3] = "0b10111101100100001111101111101100";
        ram[4] = "0b10111110010101110110100001011010";
        ram[5] = "0b00111100000111100001101100001001";
        ram[6] = "0b10111111010011001001101101000001";
        ram[7] = "0b10111110101101110010001111001101";
        ram[8] = "0b00111101010001010000100010110011";
        ram[9] = "0b10111110111101110001000101110011";
        ram[10] = "0b00111101101000000001101111001010";
        ram[11] = "0b00111110101110111100100110001010";
        ram[12] = "0b10111111110010100101110001010111";
        ram[13] = "0b10111101101011100011000111010111";
        ram[14] = "0b10111110110001101110010001011100";
        ram[15] = "0b10111011101011011011010000000011";
        ram[16] = "0b00111101110110100100110111110100";
        ram[17] = "0b10111110110111100010110111101000";
        ram[18] = "0b00111101101100111000101000111011";
        ram[19] = "0b10111111011011000010101000000010";
        ram[20] = "0b00111101101010000111101100010100";
        ram[21] = "0b10111111011010011011010101100011";
        ram[22] = "0b00111100001010100010111000111100";
        ram[23] = "0b00111110110111100111101001010011";
        ram[24] = "0b00111011110010100011011000011010";
        ram[25] = "0b10111101111000100010110001000101";
        ram[26] = "0b00111110100000000000011001001011";
        ram[27] = "0b10111110001110110100001011001100";
        ram[28] = "0b10111110101000011111111110110101";
        ram[29] = "0b10111110011111000100000101010111";
        ram[30] = "0b10111110111011110100100000011011";
        ram[31] = "0b00111101101000011110011000000100";


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


SC_MODULE(infer_Weight0_c_0_3) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_0_3_ram* meminst;


SC_CTOR(infer_Weight0_c_0_3) {
meminst = new infer_Weight0_c_0_3_ram("infer_Weight0_c_0_3_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_0_3() {
    delete meminst;
}


};//endmodule
#endif
