// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_0_0_H__
#define __infer_Weight0_c_0_0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_0_0_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_0_0_ram) {
        ram[0] = "0b10111100110110111110010111011010";
        ram[1] = "0b00111011011101001001010010010010";
        ram[2] = "0b00111101100100111010000101001101";
        ram[3] = "0b10111100001111001101011110001100";
        ram[4] = "0b00111101000000110100010011000011";
        ram[5] = "0b00111101101010111011101000010011";
        ram[6] = "0b10111100101101111010111001011000";
        ram[7] = "0b00111101100010111000010100011111";
        ram[8] = "0b00111101000010101101001001010110";
        ram[9] = "0b00111101001101101100101111011010";
        ram[10] = "0b00111101100111001011110111011100";
        ram[11] = "0b10111101110100011101000011001000";
        ram[12] = "0b00111100110000100111101001100011";
        ram[13] = "0b00111101001110011101000110110011";
        ram[14] = "0b10111100100000010100110101110010";
        ram[15] = "0b00111101111101010110000010000101";
        ram[16] = "0b01000000000010101101000001010011";
        ram[17] = "0b00111100101110001001011100100000";
        ram[18] = "0b10111101011100011011010110000101";
        ram[19] = "0b10111100011101001100011011100111";
        ram[20] = "0b10111101010101101111001000011111";
        ram[21] = "0b10111101001101001000011111111101";
        ram[22] = "0b10111101000001000000110100001011";
        ram[23] = "0b00111101010011111110000001001000";
        ram[24] = "0b00111101101001011001101001110100";
        ram[25] = "0b10111101000001111000111010011111";
        ram[26] = "0b00111101100010001101000100001111";
        ram[27] = "0b00111011110101100111011101110000";
        ram[28] = "0b00111100100111110010001101000110";
        ram[29] = "0b10111101110011111111011101011001";
        ram[30] = "0b00111110000101001010010110011100";
        ram[31] = "0b10111101001001100000010011100010";


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


SC_MODULE(infer_Weight0_c_0_0) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_0_0_ram* meminst;


SC_CTOR(infer_Weight0_c_0_0) {
meminst = new infer_Weight0_c_0_0_ram("infer_Weight0_c_0_0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_0_0() {
    delete meminst;
}


};//endmodule
#endif
