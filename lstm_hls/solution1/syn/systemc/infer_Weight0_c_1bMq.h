// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_1bMq_H__
#define __infer_Weight0_c_1bMq_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_1bMq_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_1bMq_ram) {
        ram[0] = "0b00111110101110110011011111001010";
        ram[1] = "0b00111101101110111100001000110011";
        ram[2] = "0b00111110101100100000000111001101";
        ram[3] = "0b00111101100101010101111011110010";
        ram[4] = "0b10111110110101110001110100011101";
        ram[5] = "0b00111110111011110000011100111010";
        ram[6] = "0b10111110110001011001111010000100";
        ram[7] = "0b10111110100101010001011000010010";
        ram[8] = "0b00111110100100001110110100011100";
        ram[9] = "0b00111110101001000000111110101010";
        ram[10] = "0b00111101011011001101100111101000";
        ram[11] = "0b10111110001010111110010001000111";
        ram[12] = "0b10111110010111011111100010110001";
        ram[13] = "0b10111100000110001001110111110001";
        ram[14] = "0b10111101110100011100011011010010";
        ram[15] = "0b00111110100001011110010010100100";
        ram[16] = "0b10111110011001111011110100000110";
        ram[17] = "0b10111110011001011010011111010010";
        ram[18] = "0b00111111000101111001101111101101";
        ram[19] = "0b00111101100010000100011100101100";
        ram[20] = "0b10111111010001110001001001101111";
        ram[21] = "0b10111101011101011011011100000111";
        ram[22] = "0b10111100101000101100100010000010";
        ram[23] = "0b10111110000101011100010111111000";
        ram[24] = "0b10111111001100000101111101001010";
        ram[25] = "0b00111101000010010011110010001010";
        ram[26] = "0b10111110001011000010110010100001";
        ram[27] = "0b00111110001001111111110011111100";
        ram[28] = "0b10111110100000011100100011101011";
        ram[29] = "0b10111111010001011000100000011010";
        ram[30] = "0b10111110001010100101000001010000";
        ram[31] = "0b10111110101110111010010000001110";


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


SC_MODULE(infer_Weight0_c_1bMq) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_1bMq_ram* meminst;


SC_CTOR(infer_Weight0_c_1bMq) {
meminst = new infer_Weight0_c_1bMq_ram("infer_Weight0_c_1bMq_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_1bMq() {
    delete meminst;
}


};//endmodule
#endif
