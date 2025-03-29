// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_06jw_H__
#define __infer_Weight0_f_06jw_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_06jw_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_06jw_ram) {
        ram[0] = "0b10111110100111101101000010110011";
        ram[1] = "0b10111111000010100000110010001101";
        ram[2] = "0b00111110011111011010100001111010";
        ram[3] = "0b10111110100100011111010000001010";
        ram[4] = "0b10111110011100011010101000111111";
        ram[5] = "0b10111111001101110101011111010110";
        ram[6] = "0b10111101000000111011110001001101";
        ram[7] = "0b00111111011010111011001001010111";
        ram[8] = "0b00111110100101110001110110000010";
        ram[9] = "0b00111101111011000100101111010011";
        ram[10] = "0b10111110100011010010101111110101";
        ram[11] = "0b10111110110100001110011000101010";
        ram[12] = "0b00111111010111111000111100000100";
        ram[13] = "0b10111110101111111111000001100111";
        ram[14] = "0b10111110010110111000001110001100";
        ram[15] = "0b10111101000100011100011011010010";
        ram[16] = "0b00111110110000001001101100110000";
        ram[17] = "0b00111111001011111000110001000011";
        ram[18] = "0b10111110001100110000011101101100";
        ram[19] = "0b10111110110010011011001101001010";
        ram[20] = "0b10111111010100010000000000011101";
        ram[21] = "0b10111110011110111101101100011010";
        ram[22] = "0b00111111100110000010010001101000";
        ram[23] = "0b00111101010110110100001001000110";
        ram[24] = "0b10111111000000110110001000001111";
        ram[25] = "0b10111110010101011000001011011100";
        ram[26] = "0b10111110100100100011011100000100";
        ram[27] = "0b00111110100000011111100101001000";
        ram[28] = "0b00111111001011001111001111001011";
        ram[29] = "0b10111110001100111111100101100010";
        ram[30] = "0b10111101100010111111101010001111";
        ram[31] = "0b10111111001100000101010110101000";


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


SC_MODULE(infer_Weight0_f_06jw) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_06jw_ram* meminst;


SC_CTOR(infer_Weight0_f_06jw) {
meminst = new infer_Weight0_f_06jw_ram("infer_Weight0_f_06jw_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_06jw() {
    delete meminst;
}


};//endmodule
#endif
