// ==============================================================
// File generated on Fri Mar 28 13:00:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_1b6t_H__
#define __infer_Weight0_o_1b6t_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_1b6t_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_1b6t_ram) {
        ram[0] = "0b10111111100101000110111011011011";
        ram[1] = "0b00111110100010100001000001111011";
        ram[2] = "0b00111110011111100101111001101000";
        ram[3] = "0b00111110001011101001000101000011";
        ram[4] = "0b10111111000001101101011010001000";
        ram[5] = "0b00111110001101011111111101100001";
        ram[6] = "0b10111110000000010000101001010111";
        ram[7] = "0b10111101100110111001011000101001";
        ram[8] = "0b10111101101011101101000100111001";
        ram[9] = "0b00111101110100010010000100100101";
        ram[10] = "0b00111110100110011111101111100111";
        ram[11] = "0b10111111010010010100001101101100";
        ram[12] = "0b00111101100000111011011110010101";
        ram[13] = "0b00111110000000100001111111110011";
        ram[14] = "0b10111111001011011001000001001011";
        ram[15] = "0b00111110010001001001011101110100";
        ram[16] = "0b10111011111110000010111101010001";
        ram[17] = "0b00111101000010011000011011111101";
        ram[18] = "0b00111110111111110000010111101010";
        ram[19] = "0b10111110010100011011100110110110";
        ram[20] = "0b10111101111010001110000011001010";
        ram[21] = "0b00111110101110000101011000011101";
        ram[22] = "0b00111101111001110111010001101001";
        ram[23] = "0b10111100100010100111110001011011";
        ram[24] = "0b10111110000011100101001001011001";
        ram[25] = "0b00111110100010110001111011000001";
        ram[26] = "0b10111110000111111000010010001000";
        ram[27] = "0b10111100010111001011010101111000";
        ram[28] = "0b00111110110000110001100010011000";
        ram[29] = "0b00111111001000010001010100111000";
        ram[30] = "0b00111110100111010101101110001010";
        ram[31] = "0b10111110100111101111100100010010";


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


SC_MODULE(infer_Weight0_o_1b6t) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_1b6t_ram* meminst;


SC_CTOR(infer_Weight0_o_1b6t) {
meminst = new infer_Weight0_o_1b6t_ram("infer_Weight0_o_1b6t_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_1b6t() {
    delete meminst;
}


};//endmodule
#endif
