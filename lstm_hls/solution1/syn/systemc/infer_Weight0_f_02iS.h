// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_02iS_H__
#define __infer_Weight0_f_02iS_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_02iS_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_02iS_ram) {
        ram[0] = "0b10111011001010100100001100110101";
        ram[1] = "0b00111110011010000010111011001011";
        ram[2] = "0b10111110100001111101100001101011";
        ram[3] = "0b10111101110001110101010101111010";
        ram[4] = "0b00111111000010100101100110001110";
        ram[5] = "0b00111101110000111101000000111001";
        ram[6] = "0b10111110010111111101010100000010";
        ram[7] = "0b10111101100100010100101000001010";
        ram[8] = "0b00111101111101100110001011111110";
        ram[9] = "0b00111110111001110110010110011001";
        ram[10] = "0b10111101100110011010011100111011";
        ram[11] = "0b10111101101110111001010110100011";
        ram[12] = "0b10111110101100110001111010011111";
        ram[13] = "0b00111111000100011011110110000100";
        ram[14] = "0b10111110101000111010111011101111";
        ram[15] = "0b10111110100111000000111110001000";
        ram[16] = "0b00111110010110111111100011111101";
        ram[17] = "0b00111110100101001001101001010110";
        ram[18] = "0b00111101100110110011100111100010";
        ram[19] = "0b10111110111111100000011100111110";
        ram[20] = "0b00111110101100110010011101100111";
        ram[21] = "0b10111101111101100001111001001111";
        ram[22] = "0b00111110110011000010011110100110";
        ram[23] = "0b00111111000110101010111100010100";
        ram[24] = "0b10111110010000101101110000101011";
        ram[25] = "0b00111110101011001010100111001110";
        ram[26] = "0b10111110000101011100000010111010";
        ram[27] = "0b00111111010110100110010011100101";
        ram[28] = "0b10111011011101001000001111001011";
        ram[29] = "0b00111111101000110001111011111011";
        ram[30] = "0b00111110110100011010110101100100";
        ram[31] = "0b00111110001010110110101011101000";


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


SC_MODULE(infer_Weight0_f_02iS) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_02iS_ram* meminst;


SC_CTOR(infer_Weight0_f_02iS) {
meminst = new infer_Weight0_f_02iS_ram("infer_Weight0_f_02iS_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_02iS() {
    delete meminst;
}


};//endmodule
#endif
