// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_1bPq_H__
#define __infer_Weight0_c_1bPq_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_1bPq_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_1bPq_ram) {
        ram[0] = "0b00111111001100100100010110010001";
        ram[1] = "0b00111110010000001110101001011011";
        ram[2] = "0b00111110000000000111000011111100";
        ram[3] = "0b00111110001001111010111100100001";
        ram[4] = "0b10111101110111101010111111101110";
        ram[5] = "0b00111110010001010001110000011001";
        ram[6] = "0b00111101000111111000000010011001";
        ram[7] = "0b00111110100010101010111110111100";
        ram[8] = "0b00111110100001110101001011011011";
        ram[9] = "0b00111110000110110001001111100000";
        ram[10] = "0b10111110011101101111001001100011";
        ram[11] = "0b10111110100001000100001110010001";
        ram[12] = "0b10111101101100111111000001111000";
        ram[13] = "0b10111101001010100110010011000011";
        ram[14] = "0b10111111001101110010000010000110";
        ram[15] = "0b00111110101011110111101000101101";
        ram[16] = "0b00111110001100000110010001100111";
        ram[17] = "0b10111101111111110001011010110001";
        ram[18] = "0b00111110000101011110000000101111";
        ram[19] = "0b00111111001010110001100001010101";
        ram[20] = "0b10111110010000110110000101010110";
        ram[21] = "0b00111110101010100001010111111101";
        ram[22] = "0b00111100100001101111110011011111";
        ram[23] = "0b00111101010110110010101100110100";
        ram[24] = "0b10111100101111001111000010110111";
        ram[25] = "0b00111110010101001101100001110111";
        ram[26] = "0b00111110001000110000010001000111";
        ram[27] = "0b10111110100000001111101011011111";
        ram[28] = "0b00111101111100000000000011001001";
        ram[29] = "0b10111110101110001111010111100100";
        ram[30] = "0b00111110101101101011011001111100";
        ram[31] = "0b10111111001010101101010001011111";


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


SC_MODULE(infer_Weight0_c_1bPq) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_1bPq_ram* meminst;


SC_CTOR(infer_Weight0_c_1bPq) {
meminst = new infer_Weight0_c_1bPq_ram("infer_Weight0_c_1bPq_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_1bPq() {
    delete meminst;
}


};//endmodule
#endif
