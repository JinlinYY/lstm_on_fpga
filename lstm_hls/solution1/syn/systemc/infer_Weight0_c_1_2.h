// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_1_2_H__
#define __infer_Weight0_c_1_2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_1_2_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_1_2_ram) {
        ram[0] = "0b00111111010110001010001001110111";
        ram[1] = "0b00111101001110101110011110010010";
        ram[2] = "0b00111101111000011011001010100010";
        ram[3] = "0b00111110011010011100100110010011";
        ram[4] = "0b10111101101110000010000110101111";
        ram[5] = "0b10111110100010011000011001110111";
        ram[6] = "0b10111110001011000011110000011001";
        ram[7] = "0b10111110000000110011010111010010";
        ram[8] = "0b10111101000110111011100011000011";
        ram[9] = "0b00111101011010101011001001011011";
        ram[10] = "0b10111110101001000001110000111111";
        ram[11] = "0b10111101110011000010101111011000";
        ram[12] = "0b10111110101101001011111011101000";
        ram[13] = "0b00111110101100100110101000000001";
        ram[14] = "0b10111100010100001111101001011001";
        ram[15] = "0b00111110110110111001010000010000";
        ram[16] = "0b10111111000000001110001001111110";
        ram[17] = "0b10111110100110000110001100010111";
        ram[18] = "0b00111110000001001000000001100011";
        ram[19] = "0b00111111101110100100000111011101";
        ram[20] = "0b00111101100010011110101110100111";
        ram[21] = "0b00111110110111100111010110011011";
        ram[22] = "0b00111101101011001001111100110000";
        ram[23] = "0b10111110110101101010110101110001";
        ram[24] = "0b10111101111010111001110100111101";
        ram[25] = "0b00111111101000011010111011001101";
        ram[26] = "0b10111110111110110001011110001011";
        ram[27] = "0b10111100100111110011101001011000";
        ram[28] = "0b10111110110110111011100000011011";
        ram[29] = "0b10111110010110001111111110111001";
        ram[30] = "0b10111101100100110100001011101110";
        ram[31] = "0b10111110011000101000111001010000";


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


SC_MODULE(infer_Weight0_c_1_2) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_1_2_ram* meminst;


SC_CTOR(infer_Weight0_c_1_2) {
meminst = new infer_Weight0_c_1_2_ram("infer_Weight0_c_1_2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_1_2() {
    delete meminst;
}


};//endmodule
#endif
