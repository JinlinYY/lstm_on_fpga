// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_1bhl_H__
#define __infer_Weight0_f_1bhl_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_1bhl_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_1bhl_ram) {
        ram[0] = "0b10111110111001111110011101111101";
        ram[1] = "0b00111110001010000000001111001101";
        ram[2] = "0b10111110110010110101111100011100";
        ram[3] = "0b00111110101100101111010110011001";
        ram[4] = "0b10111110000000011110100010100011";
        ram[5] = "0b10111111000100111000101101101001";
        ram[6] = "0b00111111001111001010010100110111";
        ram[7] = "0b00111110111000011010011100011010";
        ram[8] = "0b00111101111011110000111100010111";
        ram[9] = "0b10111111001000111011011100100000";
        ram[10] = "0b00111110010110100111111111000011";
        ram[11] = "0b00111100110110100011010111010110";
        ram[12] = "0b00111101011011000001010011000110";
        ram[13] = "0b10111111011000010011110010101100";
        ram[14] = "0b00111110110000000000000000000000";
        ram[15] = "0b00111101010110111100000000011010";
        ram[16] = "0b10111100100011011111001101110011";
        ram[17] = "0b00111110001101111000000001111000";
        ram[18] = "0b10111111010010001100110001111001";
        ram[19] = "0b00111110001000000011101100111111";
        ram[20] = "0b10111111100001110000110000010011";
        ram[21] = "0b10111110101100010010101111000011";
        ram[22] = "0b10111111011011010000111101100010";
        ram[23] = "0b10111011100011111110101011000100";
        ram[24] = "0b10111110101000001000010100101011";
        ram[25] = "0b10111111001100111110011111010001";
        ram[26] = "0b00111110001001001000011011110000";
        ram[27] = "0b10111111000101001010101011101011";
        ram[28] = "0b10111111000001000100001011011001";
        ram[29] = "0b10111111100011100001001110111010";
        ram[30] = "0b00111111000001110101110011000000";
        ram[31] = "0b10111110101001001100000001111011";


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


SC_MODULE(infer_Weight0_f_1bhl) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_1bhl_ram* meminst;


SC_CTOR(infer_Weight0_f_1bhl) {
meminst = new infer_Weight0_f_1bhl_ram("infer_Weight0_f_1bhl_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_1bhl() {
    delete meminst;
}


};//endmodule
#endif
