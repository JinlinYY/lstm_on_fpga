// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_0_6_H__
#define __infer_Weight0_c_0_6_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_0_6_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_0_6_ram) {
        ram[0] = "0b00111110001100111111100010011000";
        ram[1] = "0b10111110000111010100110000110100";
        ram[2] = "0b00111110101101110100001000010100";
        ram[3] = "0b00111110101110010001110001001100";
        ram[4] = "0b00111110101111010110001010011110";
        ram[5] = "0b10111100100100101011010111100101";
        ram[6] = "0b10111110110111000111101110001001";
        ram[7] = "0b10111101011101011101010101101111";
        ram[8] = "0b00111101010011100100001000011000";
        ram[9] = "0b10111110101011011101011101100111";
        ram[10] = "0b10111101110100111111011011000010";
        ram[11] = "0b00111110000010011101101000010110";
        ram[12] = "0b10111101110110001001110001011110";
        ram[13] = "0b00111101111010010100101010110010";
        ram[14] = "0b00111111001101101010011101111010";
        ram[15] = "0b10111110001110011011001000111110";
        ram[16] = "0b10111111011000000100010101100111";
        ram[17] = "0b00111110100110010100110010001000";
        ram[18] = "0b10111110111011001010000110001100";
        ram[19] = "0b10111101101110010110111110101000";
        ram[20] = "0b00111101111111011000010100010110";
        ram[21] = "0b10111110001101010100010101000001";
        ram[22] = "0b10111011100011010101010000010001";
        ram[23] = "0b10111101101001000100101101101111";
        ram[24] = "0b00111111000000001000000001000001";
        ram[25] = "0b00111100000000101001000001101001";
        ram[26] = "0b00111110101010111111000011111110";
        ram[27] = "0b00111110100100001101111101011001";
        ram[28] = "0b00111110011111010011010010011100";
        ram[29] = "0b00111101010100110110111101111110";
        ram[30] = "0b10111101000000101010100110010011";
        ram[31] = "0b00111111000110100111110100110101";


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


SC_MODULE(infer_Weight0_c_0_6) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_0_6_ram* meminst;


SC_CTOR(infer_Weight0_c_0_6) {
meminst = new infer_Weight0_c_0_6_ram("infer_Weight0_c_0_6_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_0_6() {
    delete meminst;
}


};//endmodule
#endif
