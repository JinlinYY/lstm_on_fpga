// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_1bak_H__
#define __infer_Weight0_f_1bak_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_1bak_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_1bak_ram) {
        ram[0] = "0b10111110110001000000010110110100";
        ram[1] = "0b10111111011101101001100111101001";
        ram[2] = "0b10111110110111111111110100111111";
        ram[3] = "0b10111111100101101000100111011011";
        ram[4] = "0b10111101000100110001000000010011";
        ram[5] = "0b10111111011100110001111100100101";
        ram[6] = "0b10111111000110100011100011101011";
        ram[7] = "0b10111110111011101010100111100111";
        ram[8] = "0b10111110000111001000001000010111";
        ram[9] = "0b00111110101010011100010100011110";
        ram[10] = "0b10111111010011001100101000001100";
        ram[11] = "0b10111101011000111100011001000011";
        ram[12] = "0b10111110110000101101011010001000";
        ram[13] = "0b10111110110101000101001110001111";
        ram[14] = "0b10111111000000010001011010011000";
        ram[15] = "0b10111111100110111010110001111001";
        ram[16] = "0b10111110010011011010000111101100";
        ram[17] = "0b10111110110100100011001101111011";
        ram[18] = "0b10111110101110101010101101101001";
        ram[19] = "0b10111101111010110101000100110111";
        ram[20] = "0b10111111001101011111100001001101";
        ram[21] = "0b00111110110111011110101000100101";
        ram[22] = "0b10111111000101000000011011010001";
        ram[23] = "0b10111101101011110100101101100010";
        ram[24] = "0b10111110100000011110000001100001";
        ram[25] = "0b10111111011101100101110011110110";
        ram[26] = "0b10111110010110011100101010011111";
        ram[27] = "0b00111101101111010010011000110001";
        ram[28] = "0b10111100111011000010111011111101";
        ram[29] = "0b10111101101111101000101100111011";
        ram[30] = "0b10111111101101000111010100010100";
        ram[31] = "0b10111110110111001101101011010011";


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


SC_MODULE(infer_Weight0_f_1bak) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_1bak_ram* meminst;


SC_CTOR(infer_Weight0_f_1bak) {
meminst = new infer_Weight0_f_1bak_ram("infer_Weight0_f_1bak_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_1bak() {
    delete meminst;
}


};//endmodule
#endif
