// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_0_5_H__
#define __infer_Weight0_i_0_5_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_0_5_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_0_5_ram) {
        ram[0] = "0b00111111000110100100011000000110";
        ram[1] = "0b00111111011001111010101000010101";
        ram[2] = "0b00111101100111110011000011101000";
        ram[3] = "0b00111110010110011000010010100001";
        ram[4] = "0b10111110001011001010001100011110";
        ram[5] = "0b00111111011100101100111100010000";
        ram[6] = "0b00111110001001011010001111100100";
        ram[7] = "0b10111110100011011100111101101000";
        ram[8] = "0b10111101110101101101001110110111";
        ram[9] = "0b10111110111010100101000101011101";
        ram[10] = "0b00111110010100101111101011010111";
        ram[11] = "0b10111110101011000001110111010010";
        ram[12] = "0b00111110111100000001110101111110";
        ram[13] = "0b10111110101011001101010111011000";
        ram[14] = "0b10111110110011011101110110010000";
        ram[15] = "0b00111110100011001001110000001011";
        ram[16] = "0b10111110101001010010011001110100";
        ram[17] = "0b00111101111111001100000001111011";
        ram[18] = "0b00111110001110001110010010111000";
        ram[19] = "0b00111111011011011011000000000011";
        ram[20] = "0b00111110101010101110100010011111";
        ram[21] = "0b10111111011010010101101101101000";
        ram[22] = "0b00111101100000111000001000011011";
        ram[23] = "0b10111101010110101111000110001000";
        ram[24] = "0b01000000000010010001000100110000";
        ram[25] = "0b00111111011110011011101101001001";
        ram[26] = "0b00111100000101000000101110111011";
        ram[27] = "0b10111101010100111000011010010000";
        ram[28] = "0b00111110100010000011111001000010";
        ram[29] = "0b10111101000100111101100001011010";
        ram[30] = "0b10111110000101110010010110000001";
        ram[31] = "0b00111110100011001010011101110010";


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


SC_MODULE(infer_Weight0_i_0_5) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_0_5_ram* meminst;


SC_CTOR(infer_Weight0_i_0_5) {
meminst = new infer_Weight0_i_0_5_ram("infer_Weight0_i_0_5_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_0_5() {
    delete meminst;
}


};//endmodule
#endif
