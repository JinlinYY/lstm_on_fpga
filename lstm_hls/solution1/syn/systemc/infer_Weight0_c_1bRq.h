// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_1bRq_H__
#define __infer_Weight0_c_1bRq_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_1bRq_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_1bRq_ram) {
        ram[0] = "0b00111101100011000011000110011100";
        ram[1] = "0b00111111000100110101010010001111";
        ram[2] = "0b10111110110010001000001101110111";
        ram[3] = "0b10111110001000111101101011111001";
        ram[4] = "0b10111111000000101001001010000001";
        ram[5] = "0b00111110001000100101101000100101";
        ram[6] = "0b10111101011111011000110011110100";
        ram[7] = "0b00111110110000100011110110110100";
        ram[8] = "0b10111101101110011110110011110110";
        ram[9] = "0b10111110001010111101100001111011";
        ram[10] = "0b10111100011111101101101001100110";
        ram[11] = "0b00111111101000001000100100101011";
        ram[12] = "0b10111110101010101011111100110100";
        ram[13] = "0b10111110111011010111110001001110";
        ram[14] = "0b10111111001011000100000100010100";
        ram[15] = "0b10111101000111011110010110001110";
        ram[16] = "0b00111110111111010110110000001101";
        ram[17] = "0b10111111001000110010010011101010";
        ram[18] = "0b10111110010110011000101111111000";
        ram[19] = "0b00111101000100100101101110111000";
        ram[20] = "0b10111110000111101000100000010110";
        ram[21] = "0b00111010100011100011011010001111";
        ram[22] = "0b00111110011011111010000100011011";
        ram[23] = "0b00111110100111010100010111101001";
        ram[24] = "0b00111110011100011100111011110010";
        ram[25] = "0b10111101111101100101001000110111";
        ram[26] = "0b10111011111101100110000111110010";
        ram[27] = "0b10111110000100001010110111001101";
        ram[28] = "0b00111110101110010110110011101000";
        ram[29] = "0b00111110010101111011011010111011";
        ram[30] = "0b10111111001010011011001111100001";
        ram[31] = "0b00111110100010010011110111111011";


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


SC_MODULE(infer_Weight0_c_1bRq) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_1bRq_ram* meminst;


SC_CTOR(infer_Weight0_c_1bRq) {
meminst = new infer_Weight0_c_1bRq_ram("infer_Weight0_c_1bRq_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_1bRq() {
    delete meminst;
}


};//endmodule
#endif
