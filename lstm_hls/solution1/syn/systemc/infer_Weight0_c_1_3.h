// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_1_3_H__
#define __infer_Weight0_c_1_3_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_1_3_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_1_3_ram) {
        ram[0] = "0b10111111100010000110111001110110";
        ram[1] = "0b00111110110111000010110010000000";
        ram[2] = "0b10111110110000000101011010000010";
        ram[3] = "0b10111111011111101101001101110100";
        ram[4] = "0b00111110100110101110101010010110";
        ram[5] = "0b00111111100000010000010100011000";
        ram[6] = "0b00111111100001101001001010110100";
        ram[7] = "0b00111110101001001000100111010010";
        ram[8] = "0b00111101111001000101111111100001";
        ram[9] = "0b10111111000100111111001001101111";
        ram[10] = "0b00111111010100001111111110000110";
        ram[11] = "0b00111101011001100010110010111010";
        ram[12] = "0b00111111110010010101100011101010";
        ram[13] = "0b10111110110000001011110110001000";
        ram[14] = "0b00111101110011101111011011111001";
        ram[15] = "0b00111110001000101010100011001010";
        ram[16] = "0b00111111011111000111001110011011";
        ram[17] = "0b00111111100000100101000011010111";
        ram[18] = "0b10111101110010111100111110010010";
        ram[19] = "0b10111111011110001001001001101000";
        ram[20] = "0b10111100100000110000111000111101";
        ram[21] = "0b10111111001100101101011001000101";
        ram[22] = "0b10111110001000111110100100100001";
        ram[23] = "0b00111111100011000111111110110010";
        ram[24] = "0b10111110000001001000000001100011";
        ram[25] = "0b01000000000001001100001000011110";
        ram[26] = "0b10111111110110001001101001100111";
        ram[27] = "0b00111111001110101001110101000001";
        ram[28] = "0b10111101000010001101000010001001";
        ram[29] = "0b10111110011011100101101110000101";
        ram[30] = "0b10111111001110001010110010001110";
        ram[31] = "0b00111110110000110110100000000110";


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


SC_MODULE(infer_Weight0_c_1_3) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_1_3_ram* meminst;


SC_CTOR(infer_Weight0_c_1_3) {
meminst = new infer_Weight0_c_1_3_ram("infer_Weight0_c_1_3_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_1_3() {
    delete meminst;
}


};//endmodule
#endif
