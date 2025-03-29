// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_1bdk_H__
#define __infer_Weight0_f_1bdk_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_1bdk_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_1bdk_ram) {
        ram[0] = "0b00111110110101111001010101110000";
        ram[1] = "0b00111110101100001000010010100101";
        ram[2] = "0b00111110101010111010001010111110";
        ram[3] = "0b00111110010001000110100000000001";
        ram[4] = "0b10111110100100101010100111111000";
        ram[5] = "0b00111110001111110001111001001011";
        ram[6] = "0b00111111001000011110001100010001";
        ram[7] = "0b00111101111000010000000111110011";
        ram[8] = "0b00111110000101011001110000000110";
        ram[9] = "0b00111111011011110111001000011101";
        ram[10] = "0b00111100011110101010010001110110";
        ram[11] = "0b10111110101000101100100100001000";
        ram[12] = "0b10111101101100000000000111010110";
        ram[13] = "0b00111111010001100001101011100111";
        ram[14] = "0b00111111000110001000101110111001";
        ram[15] = "0b10111110101011111110010110000110";
        ram[16] = "0b10111110110100101000101110001111";
        ram[17] = "0b00111110000001101111000011010000";
        ram[18] = "0b10111111010010001011110101110111";
        ram[19] = "0b00111111001000011100011001101101";
        ram[20] = "0b10111111000101010010000001001011";
        ram[21] = "0b00111111000101010110110000001101";
        ram[22] = "0b00111110101001101110011010010111";
        ram[23] = "0b00111101100111001101010111111010";
        ram[24] = "0b00111111011110001101000110110111";
        ram[25] = "0b00111111000001011000001111101000";
        ram[26] = "0b00111011111100011011101011000011";
        ram[27] = "0b00111110111101101010101011110011";
        ram[28] = "0b10111110000100101000111010010011";
        ram[29] = "0b10111111001100011101100101011110";
        ram[30] = "0b10111111000011111100101001000011";
        ram[31] = "0b00111111011000000010001110100111";


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


SC_MODULE(infer_Weight0_f_1bdk) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_1bdk_ram* meminst;


SC_CTOR(infer_Weight0_f_1bdk) {
meminst = new infer_Weight0_f_1bdk_ram("infer_Weight0_f_1bdk_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_1bdk() {
    delete meminst;
}


};//endmodule
#endif
