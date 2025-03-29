// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_0_9_H__
#define __infer_Weight0_f_0_9_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_0_9_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_0_9_ram) {
        ram[0] = "0b00111101111010101111000000111001";
        ram[1] = "0b10111110100110111110110010101011";
        ram[2] = "0b10111111000000111111010111000111";
        ram[3] = "0b10111110111001110101101000010000";
        ram[4] = "0b10111101011110100000111110010001";
        ram[5] = "0b10111111011000001110010010101000";
        ram[6] = "0b10111111001101111101011101011110";
        ram[7] = "0b10111110100110000011001101000000";
        ram[8] = "0b10111111011101000101001011111000";
        ram[9] = "0b10111101011011000101110000010100";
        ram[10] = "0b10111110111100111110110011101110";
        ram[11] = "0b10111110100010000010000001100000";
        ram[12] = "0b00111110111010011110110011010101";
        ram[13] = "0b00111110001111011001010101010111";
        ram[14] = "0b10111110101001011101110111010011";
        ram[15] = "0b00111100100011111110001001100001";
        ram[16] = "0b10111110101100011001010101101000";
        ram[17] = "0b10111100111000010111101000000011";
        ram[18] = "0b10111110101101001111100001110010";
        ram[19] = "0b00111110110110001011010011100001";
        ram[20] = "0b00111111001100011100101110111100";
        ram[21] = "0b10111110100010111111101010001111";
        ram[22] = "0b10111110001110001010101110010011";
        ram[23] = "0b10111111001101100111001111110111";
        ram[24] = "0b10111101000010111000010010011001";
        ram[25] = "0b00111110100111001001000100101010";
        ram[26] = "0b10111111100011010011100101000011";
        ram[27] = "0b00111111000000011010001001110011";
        ram[28] = "0b00111111100011110000100110010110";
        ram[29] = "0b00111111100100000000001100000100";
        ram[30] = "0b10111110101110011101111001001000";
        ram[31] = "0b10111111010100100011001010110001";


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


SC_MODULE(infer_Weight0_f_0_9) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_0_9_ram* meminst;


SC_CTOR(infer_Weight0_f_0_9) {
meminst = new infer_Weight0_f_0_9_ram("infer_Weight0_f_0_9_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_0_9() {
    delete meminst;
}


};//endmodule
#endif
