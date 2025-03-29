// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_0_5_H__
#define __infer_Weight0_f_0_5_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_0_5_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_0_5_ram) {
        ram[0] = "0b10111110000000111011010000101101";
        ram[1] = "0b00111110111110000001001100100011";
        ram[2] = "0b00111111000001001001010111010001";
        ram[3] = "0b10111111000011011110000101001100";
        ram[4] = "0b00111101101101110011011011001110";
        ram[5] = "0b10111110101001110110111110001111";
        ram[6] = "0b00111111000110000000110010010101";
        ram[7] = "0b10111111010100111111000110110111";
        ram[8] = "0b10111100110100010111011000010100";
        ram[9] = "0b00111101000001010101101001111101";
        ram[10] = "0b00111101010001011010110101010100";
        ram[11] = "0b00111110110001001100101110011111";
        ram[12] = "0b10111110101010100010011011000100";
        ram[13] = "0b10111110101001011100001101011001";
        ram[14] = "0b10111101000010010101001110011100";
        ram[15] = "0b10111111000000101110101110110011";
        ram[16] = "0b00111111000110101110100001101100";
        ram[17] = "0b10111110100011111111101100000101";
        ram[18] = "0b10111110100111001001110001101111";
        ram[19] = "0b00111111000010000110111111101111";
        ram[20] = "0b00111011110011011000010101011001";
        ram[21] = "0b10111101110001101100010000111111";
        ram[22] = "0b10111111011101011111010010110010";
        ram[23] = "0b00111110001110010111110011000100";
        ram[24] = "0b00111110111100010001001100011111";
        ram[25] = "0b00111110010011001111011110001000";
        ram[26] = "0b00111110110011101001001000001100";
        ram[27] = "0b10111101101010110011011001111010";
        ram[28] = "0b10111111010000100001111011010110";
        ram[29] = "0b10111101000100011110111110110111";
        ram[30] = "0b10111111011100111011101001110111";
        ram[31] = "0b10111110100111010100001000111110";


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


SC_MODULE(infer_Weight0_f_0_5) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_0_5_ram* meminst;


SC_CTOR(infer_Weight0_f_0_5) {
meminst = new infer_Weight0_f_0_5_ram("infer_Weight0_f_0_5_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_0_5() {
    delete meminst;
}


};//endmodule
#endif
