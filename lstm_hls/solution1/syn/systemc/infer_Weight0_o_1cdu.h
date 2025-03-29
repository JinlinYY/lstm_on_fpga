// ==============================================================
// File generated on Fri Mar 28 13:00:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_1cdu_H__
#define __infer_Weight0_o_1cdu_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_1cdu_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_1cdu_ram) {
        ram[0] = "0b10111111000011111111111010100000";
        ram[1] = "0b00111111000000110100001011101110";
        ram[2] = "0b00111110000010001001101000000010";
        ram[3] = "0b10111011101000111110011111010001";
        ram[4] = "0b00111110010011101111101000011110";
        ram[5] = "0b00111110111110000011110111111111";
        ram[6] = "0b00111110111101100011111011010001";
        ram[7] = "0b00111110011110011010001100001010";
        ram[8] = "0b10111111001010110100111111111000";
        ram[9] = "0b10111100100000001110100011001001";
        ram[10] = "0b10111111110101110100111001011101";
        ram[11] = "0b10111111100000000000110111111110";
        ram[12] = "0b00111111000101000110010000010011";
        ram[13] = "0b00111110001001101101100010110010";
        ram[14] = "0b10111110001011101001011100000111";
        ram[15] = "0b00111110110001011100100001110101";
        ram[16] = "0b00111111010011000110000110110111";
        ram[17] = "0b00111110110001000011111110000001";
        ram[18] = "0b10111110001111011101011100100011";
        ram[19] = "0b10111110010011010000100011010101";
        ram[20] = "0b10111100010010101000010111001011";
        ram[21] = "0b00111111100011100000111111110101";
        ram[22] = "0b00111110100110111100111110010010";
        ram[23] = "0b00111111011000100001001100011011";
        ram[24] = "0b00111111011101001110110011011001";
        ram[25] = "0b10111111000001000111001000101010";
        ram[26] = "0b10111110101101101111101110001111";
        ram[27] = "0b10111101110011010101011100110110";
        ram[28] = "0b00111110000001011010101010110100";
        ram[29] = "0b10111111010010100110010010000000";
        ram[30] = "0b10111110010001001010011100101111";
        ram[31] = "0b00111111100011101010000011100100";


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


SC_MODULE(infer_Weight0_o_1cdu) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_1cdu_ram* meminst;


SC_CTOR(infer_Weight0_o_1cdu) {
meminst = new infer_Weight0_o_1cdu_ram("infer_Weight0_o_1cdu_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_1cdu() {
    delete meminst;
}


};//endmodule
#endif
