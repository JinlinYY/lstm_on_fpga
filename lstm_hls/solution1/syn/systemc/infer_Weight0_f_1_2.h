// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_1_2_H__
#define __infer_Weight0_f_1_2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_1_2_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_1_2_ram) {
        ram[0] = "0b10111111000001101011001111111111";
        ram[1] = "0b00111110000001100011100111010110";
        ram[2] = "0b00111100100001101110110000011000";
        ram[3] = "0b10111111000000000000001011110011";
        ram[4] = "0b00111111101001011110000111011010";
        ram[5] = "0b00111110101010110111001011000101";
        ram[6] = "0b00111110101000001100000111111101";
        ram[7] = "0b00111101000110111100000000011010";
        ram[8] = "0b00111101001111101011111100100011";
        ram[9] = "0b10111101100000000011011110010011";
        ram[10] = "0b10111110001101101110000001001100";
        ram[11] = "0b10111110100100111111111111101111";
        ram[12] = "0b00111110010000110100010000111101";
        ram[13] = "0b10111110100000010101110111010101";
        ram[14] = "0b00111110100110001100100010001010";
        ram[15] = "0b00111110011100100000000111001101";
        ram[16] = "0b10111110110001011010011110001111";
        ram[17] = "0b00111110100100000000011101111001";
        ram[18] = "0b00111110001110101100101110000110";
        ram[19] = "0b00111110100111111001000100111111";
        ram[20] = "0b00111110000000111101100100100011";
        ram[21] = "0b10111110000110001111100011101000";
        ram[22] = "0b10111101000110001011011100011100";
        ram[23] = "0b10111110100001000010110000011011";
        ram[24] = "0b00111110101011000011111100011100";
        ram[25] = "0b10111110011101100111001011111100";
        ram[26] = "0b00111111000001111100001101010000";
        ram[27] = "0b00111101101101101010000101100010";
        ram[28] = "0b10111101110100001001011101000010";
        ram[29] = "0b10111101010000010010001110000001";
        ram[30] = "0b10111110011101000100000100110101";
        ram[31] = "0b10111110011100100001100000010110";


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


SC_MODULE(infer_Weight0_f_1_2) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_1_2_ram* meminst;


SC_CTOR(infer_Weight0_f_1_2) {
meminst = new infer_Weight0_f_1_2_ram("infer_Weight0_f_1_2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_1_2() {
    delete meminst;
}


};//endmodule
#endif
