// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_0_3_H__
#define __infer_Weight0_o_0_3_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_0_3_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_0_3_ram) {
        ram[0] = "0b10111101110100110100001111111010";
        ram[1] = "0b10111111010000101001010000010100";
        ram[2] = "0b10111111000001100001010001011001";
        ram[3] = "0b00111110110010011110010010110100";
        ram[4] = "0b00111110101010101101001000010011";
        ram[5] = "0b10111101100110100100111110000111";
        ram[6] = "0b00111110100111010101001111001110";
        ram[7] = "0b00111110001100110110111111000001";
        ram[8] = "0b10111110011101000110100101010001";
        ram[9] = "0b00111110000100000000010110000001";
        ram[10] = "0b00111110010000010110101011001111";
        ram[11] = "0b00111110111000010011010101110110";
        ram[12] = "0b00111110101110110001110001100101";
        ram[13] = "0b10111110000111110110001110000000";
        ram[14] = "0b10111110111000110111010100000000";
        ram[15] = "0b10111110110100111101011100101100";
        ram[16] = "0b00111110011111000011001011101100";
        ram[17] = "0b00111110100101001111011111101100";
        ram[18] = "0b10111101110001010100001001011111";
        ram[19] = "0b00111110000010100110011110100101";
        ram[20] = "0b00111011101101001000110100111011";
        ram[21] = "0b10111110100010101000110001011000";
        ram[22] = "0b00111110010111101000000100000010";
        ram[23] = "0b00111110010101001001101011011101";
        ram[24] = "0b10111110111111010010010000011000";
        ram[25] = "0b00111110001001100011000001100110";
        ram[26] = "0b00111101111110011011000010101011";
        ram[27] = "0b10111111000110101110010001001011";
        ram[28] = "0b10111111000011110011101110000110";
        ram[29] = "0b00111110111111101110001001100101";
        ram[30] = "0b00111110101001000001110000111111";
        ram[31] = "0b00111101001101111110100000000100";


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


SC_MODULE(infer_Weight0_o_0_3) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_0_3_ram* meminst;


SC_CTOR(infer_Weight0_o_0_3) {
meminst = new infer_Weight0_o_0_3_ram("infer_Weight0_o_0_3_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_0_3() {
    delete meminst;
}


};//endmodule
#endif
