// ==============================================================
// File generated on Fri Mar 28 13:00:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_0b3s_H__
#define __infer_Weight0_o_0b3s_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_0b3s_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_0b3s_ram) {
        ram[0] = "0b10111111100000100110100110010100";
        ram[1] = "0b00111110100000111100110111011101";
        ram[2] = "0b00111110110111111010101100010001";
        ram[3] = "0b00111111001011011111100101101010";
        ram[4] = "0b10111101110001010111010100111010";
        ram[5] = "0b00111110101110011111100101001000";
        ram[6] = "0b00111110001011010011111101011011";
        ram[7] = "0b00111101111011010000110011000011";
        ram[8] = "0b00111101100110010011000111001010";
        ram[9] = "0b10111110100011111110100010001010";
        ram[10] = "0b00111110101010001011111010110110";
        ram[11] = "0b10111111011010001101101110101101";
        ram[12] = "0b00111111010111010001000100111000";
        ram[13] = "0b10111110000001100111100100000011";
        ram[14] = "0b00111110001011100111111111110110";
        ram[15] = "0b00111101110000000011101000110010";
        ram[16] = "0b10111101101001001100101101011100";
        ram[17] = "0b00111110110011111010010111010011";
        ram[18] = "0b10111110010110111011011110110111";
        ram[19] = "0b10111111001101100110011101010001";
        ram[20] = "0b10111110001011011100111100000011";
        ram[21] = "0b10111111000010001100010100000000";
        ram[22] = "0b10111111000101111010011100100010";
        ram[23] = "0b00111110010011010111000111110011";
        ram[24] = "0b00111110111000000001110011010110";
        ram[25] = "0b10111111010011000011111101001111";
        ram[26] = "0b00111111000010111101001111000011";
        ram[27] = "0b00111110111011011100111100000011";
        ram[28] = "0b00111110111001101101110011000010";
        ram[29] = "0b00111110111100010101011100100110";
        ram[30] = "0b10111111001010110011100000111111";
        ram[31] = "0b10111101110001110101100100100101";


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


SC_MODULE(infer_Weight0_o_0b3s) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_0b3s_ram* meminst;


SC_CTOR(infer_Weight0_o_0b3s) {
meminst = new infer_Weight0_o_0b3s_ram("infer_Weight0_o_0b3s_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_0b3s() {
    delete meminst;
}


};//endmodule
#endif
