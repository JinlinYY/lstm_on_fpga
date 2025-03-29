// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_1bQq_H__
#define __infer_Weight0_c_1bQq_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_1bQq_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_1bQq_ram) {
        ram[0] = "0b10111110000110101011010110000000";
        ram[1] = "0b00111110101010001011101001100010";
        ram[2] = "0b00111101110111101101101001100110";
        ram[3] = "0b10111110000001001110110110110011";
        ram[4] = "0b00111110100011010001111001110101";
        ram[5] = "0b00111111001111101101110001001101";
        ram[6] = "0b10111101110011111101101100001010";
        ram[7] = "0b00111110111101101100101000000100";
        ram[8] = "0b00111110011011011111110010100000";
        ram[9] = "0b10111101100010000100010010001101";
        ram[10] = "0b10111110101000111111100111000110";
        ram[11] = "0b00111110101001010001111101100000";
        ram[12] = "0b00111101010011011011010010001001";
        ram[13] = "0b00111101101011101011001111011101";
        ram[14] = "0b10111110000011111000101110011100";
        ram[15] = "0b10111110111101000010000011110111";
        ram[16] = "0b00111110000101000011000100111000";
        ram[17] = "0b00111110101111111001111100100011";
        ram[18] = "0b10111110100111110100101001010110";
        ram[19] = "0b10111110011100001110000100101111";
        ram[20] = "0b10111111001001111011000010000001";
        ram[21] = "0b00111101101110011111011001100110";
        ram[22] = "0b10111110000001101010111101000111";
        ram[23] = "0b00111110101000111001100000100000";
        ram[24] = "0b00111101100111000110100101110011";
        ram[25] = "0b00111110001101110011010010110101";
        ram[26] = "0b00111110101000010100100001110111";
        ram[27] = "0b00111101111001100101011010101100";
        ram[28] = "0b00111110010100001110111000000111";
        ram[29] = "0b10111101110111100111101110000001";
        ram[30] = "0b10111110000100000100011011000111";
        ram[31] = "0b10111110100100110110101100101011";


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


SC_MODULE(infer_Weight0_c_1bQq) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_1bQq_ram* meminst;


SC_CTOR(infer_Weight0_c_1bQq) {
meminst = new infer_Weight0_c_1bQq_ram("infer_Weight0_c_1bQq_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_1bQq() {
    delete meminst;
}


};//endmodule
#endif
