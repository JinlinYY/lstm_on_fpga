// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_0bil_H__
#define __infer_Weight0_i_0bil_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_0bil_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_0bil_ram) {
        ram[0] = "0b10111100100010001001001110111000";
        ram[1] = "0b10111110001100011101110111100011";
        ram[2] = "0b10111100101111100100100010100110";
        ram[3] = "0b10111111000100001101000000110101";
        ram[4] = "0b10111111001010011011111010110010";
        ram[5] = "0b10111111011100010111011110000101";
        ram[6] = "0b00111101100100110011011111101011";
        ram[7] = "0b10111111010010101111111111000001";
        ram[8] = "0b10111101100110010010011111010100";
        ram[9] = "0b00111111010101010111000011100111";
        ram[10] = "0b00111111000000110011000001100010";
        ram[11] = "0b10111101100101101110100010110000";
        ram[12] = "0b00111110101011000101110001010111";
        ram[13] = "0b00111101001110000100100001111100";
        ram[14] = "0b10111111100000101000110011011111";
        ram[15] = "0b10111111101011111010011010000011";
        ram[16] = "0b10111111000110001100000010111110";
        ram[17] = "0b00111111001001010100101001001101";
        ram[18] = "0b00111110000100110110100010101101";
        ram[19] = "0b00111111000111001110101100110101";
        ram[20] = "0b10111110101000110111011110011111";
        ram[21] = "0b10111111000111101011101111011100";
        ram[22] = "0b00111101101000010010011110110011";
        ram[23] = "0b10111110010000011000001100110000";
        ram[24] = "0b10111111010101101010000000110100";
        ram[25] = "0b00111111001101101110000001011101";
        ram[26] = "0b00111110011011110101000110101101";
        ram[27] = "0b10111111000100001110000010101000";
        ram[28] = "0b10111110111010010010111001000001";
        ram[29] = "0b00111110000001100000000101111001";
        ram[30] = "0b10111101110101100101001101000011";
        ram[31] = "0b10111110100100111111110000100010";


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


SC_MODULE(infer_Weight0_i_0bil) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_0bil_ram* meminst;


SC_CTOR(infer_Weight0_i_0bil) {
meminst = new infer_Weight0_i_0bil_ram("infer_Weight0_i_0bil_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_0bil() {
    delete meminst;
}


};//endmodule
#endif
