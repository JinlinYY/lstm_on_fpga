// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_0bml_H__
#define __infer_Weight0_i_0bml_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_0bml_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_0bml_ram) {
        ram[0] = "0b10111111000110010100010010111011";
        ram[1] = "0b10111111001100110100101100110000";
        ram[2] = "0b10111100100100000111001100010101";
        ram[3] = "0b00111111010011010011101100111010";
        ram[4] = "0b00111110111111101111010110101001";
        ram[5] = "0b00111101111101001111001011110001";
        ram[6] = "0b00111110110010011000001101110011";
        ram[7] = "0b00111110100001010010000101010111";
        ram[8] = "0b10111110010110000011000110101101";
        ram[9] = "0b10111110000010010110000010110111";
        ram[10] = "0b10111110101100110101001110010011";
        ram[11] = "0b00111110101100110101000001001100";
        ram[12] = "0b00111110000011001111010101101111";
        ram[13] = "0b10111110110111110001100100001101";
        ram[14] = "0b00111110101111011010000110001000";
        ram[15] = "0b00111110011000101011000001100100";
        ram[16] = "0b10111110101110101010110001110101";
        ram[17] = "0b00111111000000101100011100000000";
        ram[18] = "0b10111110001010000010110100111000";
        ram[19] = "0b00111111010110010110111111101011";
        ram[20] = "0b00111110111100000001110011111000";
        ram[21] = "0b00111110100001001011010010001101";
        ram[22] = "0b00111110111110101011001100100101";
        ram[23] = "0b10111111010100100111100110111100";
        ram[24] = "0b00111110000111111001010101001111";
        ram[25] = "0b10111110000110100111111011111010";
        ram[26] = "0b00111110101100100100100110100001";
        ram[27] = "0b00111111001001111101110001101010";
        ram[28] = "0b00111111100110000001100010010011";
        ram[29] = "0b00111110000001101001110100110000";
        ram[30] = "0b10111110100000101010000011101100";
        ram[31] = "0b00111101111001100010100100001111";


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


SC_MODULE(infer_Weight0_i_0bml) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_0bml_ram* meminst;


SC_CTOR(infer_Weight0_i_0bml) {
meminst = new infer_Weight0_i_0bml_ram("infer_Weight0_i_0bml_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_0bml() {
    delete meminst;
}


};//endmodule
#endif
