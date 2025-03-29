// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_1bek_H__
#define __infer_Weight0_f_1bek_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_1bek_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_1bek_ram) {
        ram[0] = "0b10111110000110000011010100010110";
        ram[1] = "0b00111111000010110111101101111100";
        ram[2] = "0b10111111000111001110100101001111";
        ram[3] = "0b00111110110010100011001001001101";
        ram[4] = "0b00111110000000010100111110001011";
        ram[5] = "0b10111111011000100010001010110100";
        ram[6] = "0b10111101111011111010011110101000";
        ram[7] = "0b10111111000110110111100111001000";
        ram[8] = "0b10111111001001111010110100101010";
        ram[9] = "0b10111110110111110111011101001011";
        ram[10] = "0b10111111000110000100110111101100";
        ram[11] = "0b10111101111101010000101010001001";
        ram[12] = "0b00111110111001011001100110001001";
        ram[13] = "0b00111111000111000011011110100100";
        ram[14] = "0b00111110110101111010111010011011";
        ram[15] = "0b10111101100010011100101010011111";
        ram[16] = "0b10111101100001110100111000100011";
        ram[17] = "0b10111111011001101001110101000001";
        ram[18] = "0b10111110000101111000111010011111";
        ram[19] = "0b00111110110111111110011010010010";
        ram[20] = "0b00111110111010101101100001011110";
        ram[21] = "0b00111111100000000110110011011011";
        ram[22] = "0b10111110100001000000110000100000";
        ram[23] = "0b00111101100101010101101011000000";
        ram[24] = "0b10111111001010101011000001110101";
        ram[25] = "0b10111110011010010001110000001000";
        ram[26] = "0b00111110111111111110001110001111";
        ram[27] = "0b00111110001010101100111100110001";
        ram[28] = "0b00111110001011001110101100110101";
        ram[29] = "0b00111101001111001111010011101000";
        ram[30] = "0b10111101111011100001001101101110";
        ram[31] = "0b10111110011100001000100000001110";


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


SC_MODULE(infer_Weight0_f_1bek) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_1bek_ram* meminst;


SC_CTOR(infer_Weight0_f_1bek) {
meminst = new infer_Weight0_f_1bek_ram("infer_Weight0_f_1bek_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_1bek() {
    delete meminst;
}


};//endmodule
#endif
