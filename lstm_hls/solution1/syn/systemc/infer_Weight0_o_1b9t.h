// ==============================================================
// File generated on Fri Mar 28 13:00:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_1b9t_H__
#define __infer_Weight0_o_1b9t_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_1b9t_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_1b9t_ram) {
        ram[0] = "0b10111110000001110010011100010011";
        ram[1] = "0b00111110001110101011001001011011";
        ram[2] = "0b00111111001100111001101010101110";
        ram[3] = "0b10111110000011011110000111100011";
        ram[4] = "0b10111111000001001010101100101110";
        ram[5] = "0b00111110000010010110010000011111";
        ram[6] = "0b00111110010111001000000010000100";
        ram[7] = "0b10111101111100101101011011101101";
        ram[8] = "0b00111110100010010111100000101101";
        ram[9] = "0b00111110101011111100000011110100";
        ram[10] = "0b00111111010010110000100101100011";
        ram[11] = "0b00111110100011100010001111010001";
        ram[12] = "0b00111111000111001000011101100110";
        ram[13] = "0b00111111000111100101110001001111";
        ram[14] = "0b10111110011100001000110101001100";
        ram[15] = "0b00111110110010100001101101011100";
        ram[16] = "0b10111100011100001111000101101111";
        ram[17] = "0b10111110001111011010111100001000";
        ram[18] = "0b00111110101000100101011100000000";
        ram[19] = "0b00111110110011010101011001001011";
        ram[20] = "0b00111110110010101111110011110000";
        ram[21] = "0b00111110101111010101001111001110";
        ram[22] = "0b00111110011011000100100000101000";
        ram[23] = "0b00111110111000100010001101111101";
        ram[24] = "0b10111111001100100101101011001101";
        ram[25] = "0b00111110100011011101110111010011";
        ram[26] = "0b00111111100010001110011111101111";
        ram[27] = "0b00111111000111010111101011001100";
        ram[28] = "0b00111110111000010111001101010100";
        ram[29] = "0b00111110010010111110101110011110";
        ram[30] = "0b00111100000011011011000001010111";
        ram[31] = "0b00111111001001011001111111110101";


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


SC_MODULE(infer_Weight0_o_1b9t) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_1b9t_ram* meminst;


SC_CTOR(infer_Weight0_o_1b9t) {
meminst = new infer_Weight0_o_1b9t_ram("infer_Weight0_o_1b9t_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_1b9t() {
    delete meminst;
}


};//endmodule
#endif
