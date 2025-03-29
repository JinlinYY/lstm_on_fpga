// ==============================================================
// File generated on Fri Mar 28 13:00:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_1cbu_H__
#define __infer_Weight0_o_1cbu_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_1cbu_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_1cbu_ram) {
        ram[0] = "0b10111110101111110100111000100011";
        ram[1] = "0b00111110010101110001001111110000";
        ram[2] = "0b00111110110001100011101111001101";
        ram[3] = "0b10111111001110110111111000111101";
        ram[4] = "0b10111110001001100011011011110100";
        ram[5] = "0b10111111001100101001100000110101";
        ram[6] = "0b00111111000001100111001111010110";
        ram[7] = "0b00111101000001000100101111110101";
        ram[8] = "0b00111110011010011000011010111010";
        ram[9] = "0b00111110111111001111101111011011";
        ram[10] = "0b00111111100011110011100011111000";
        ram[11] = "0b00111110010011000000000110100011";
        ram[12] = "0b00111101000101011011100010011001";
        ram[13] = "0b00111110100011001100000011011111";
        ram[14] = "0b10111110010011110011111001000111";
        ram[15] = "0b00111110110100001000101110010111";
        ram[16] = "0b10111111011000110000101100101000";
        ram[17] = "0b10111111001000100100101110011001";
        ram[18] = "0b10111111001001111000010001110111";
        ram[19] = "0b00111111011001000111001100010101";
        ram[20] = "0b00111101110000000010001100100001";
        ram[21] = "0b10111101100001100000011110000001";
        ram[22] = "0b00111111101000011010111000011101";
        ram[23] = "0b00111111000100011001000101111001";
        ram[24] = "0b00111100011000010000110011110110";
        ram[25] = "0b00111110110101011101000110100010";
        ram[26] = "0b00111111001010010100011100101000";
        ram[27] = "0b00111110101111100010111001001101";
        ram[28] = "0b00111110010100001000001101010110";
        ram[29] = "0b00111110001111001000011011001111";
        ram[30] = "0b10111110001000111101011110010000";
        ram[31] = "0b00111111000111000011000001001101";


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


SC_MODULE(infer_Weight0_o_1cbu) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_1cbu_ram* meminst;


SC_CTOR(infer_Weight0_o_1cbu) {
meminst = new infer_Weight0_o_1cbu_ram("infer_Weight0_o_1cbu_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_1cbu() {
    delete meminst;
}


};//endmodule
#endif
