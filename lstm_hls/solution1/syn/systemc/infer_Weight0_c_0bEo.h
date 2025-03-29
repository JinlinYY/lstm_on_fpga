// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_0bEo_H__
#define __infer_Weight0_c_0bEo_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_0bEo_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_0bEo_ram) {
        ram[0] = "0b10111101010000100001010110111010";
        ram[1] = "0b00111110110010001100111100011000";
        ram[2] = "0b10111110001000001000110100001001";
        ram[3] = "0b10111111011100011010101101011100";
        ram[4] = "0b10111110001100111000110011011010";
        ram[5] = "0b10111100111111010110001100000010";
        ram[6] = "0b00111110101110100111011111100110";
        ram[7] = "0b00111110001101001000101000010110";
        ram[8] = "0b00111110110011011101100011111001";
        ram[9] = "0b00111110011010011100000111111000";
        ram[10] = "0b10111110111000111010100100101010";
        ram[11] = "0b10111110110110001101111100010110";
        ram[12] = "0b10111101110011110000011010110011";
        ram[13] = "0b10111110010011011101001001101011";
        ram[14] = "0b10111110001101111010111000010100";
        ram[15] = "0b00111110000101000000100110100010";
        ram[16] = "0b00111110110010101011101101000101";
        ram[17] = "0b10111110100010101000111011110111";
        ram[18] = "0b00111101110110101110001101100001";
        ram[19] = "0b00111110010001010010101100001010";
        ram[20] = "0b00111101110101111011100111100000";
        ram[21] = "0b00111101101101100010100101010010";
        ram[22] = "0b00111110011101110110111110110001";
        ram[23] = "0b10111111000010100010000000110110";
        ram[24] = "0b10111110110010000000011101111001";
        ram[25] = "0b00111101111011101011111001011001";
        ram[26] = "0b00111110011001011010111011100110";
        ram[27] = "0b10111110100100100010110100001110";
        ram[28] = "0b10111101000110011110011100110010";
        ram[29] = "0b00111111000001101110010100110110";
        ram[30] = "0b00111110000010110010110110010000";
        ram[31] = "0b10111101111011101011010001100011";


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


SC_MODULE(infer_Weight0_c_0bEo) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_0bEo_ram* meminst;


SC_CTOR(infer_Weight0_c_0bEo) {
meminst = new infer_Weight0_c_0bEo_ram("infer_Weight0_c_0bEo_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_0bEo() {
    delete meminst;
}


};//endmodule
#endif
