// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_0_7_H__
#define __infer_Weight0_c_0_7_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_0_7_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_0_7_ram) {
        ram[0] = "0b10111101101111000001110011100111";
        ram[1] = "0b00111101110101011001000011000001";
        ram[2] = "0b10111110101000010010110000101000";
        ram[3] = "0b10111110101110011111101110100100";
        ram[4] = "0b10111100101110011111100110001011";
        ram[5] = "0b00111110110000101000000011010000";
        ram[6] = "0b00111110000000010010011101110000";
        ram[7] = "0b00111110110011000001111001111001";
        ram[8] = "0b00111110100010001101100010101001";
        ram[9] = "0b00111111000011110111110011001100";
        ram[10] = "0b00111110010011100011110010010111";
        ram[11] = "0b10111110100010110001100111100111";
        ram[12] = "0b00111110111111110001100110010011";
        ram[13] = "0b00111101011110100110101111010111";
        ram[14] = "0b10111100010111110001100111010110";
        ram[15] = "0b10111111011111110010110111000011";
        ram[16] = "0b10111101101100000011010110111101";
        ram[17] = "0b00111101011101100101111111011001";
        ram[18] = "0b10111110111011011011100001111000";
        ram[19] = "0b00111101011101011111001111011000";
        ram[20] = "0b10111110110010101111101001110010";
        ram[21] = "0b00111101101001101010010111010111";
        ram[22] = "0b10111101011011000110011010010000";
        ram[23] = "0b10111111000000100000010001111101";
        ram[24] = "0b00111101000000000011111011101010";
        ram[25] = "0b10111101110100000000100110110011";
        ram[26] = "0b00111101101100101101001010111011";
        ram[27] = "0b00111101010000010111010000111111";
        ram[28] = "0b10111110010001001101000111101001";
        ram[29] = "0b00111110001000110111011010010010";
        ram[30] = "0b00111110000101111011001001000110";
        ram[31] = "0b10111110000101000001100000001101";


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


SC_MODULE(infer_Weight0_c_0_7) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_0_7_ram* meminst;


SC_CTOR(infer_Weight0_c_0_7) {
meminst = new infer_Weight0_c_0_7_ram("infer_Weight0_c_0_7_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_0_7() {
    delete meminst;
}


};//endmodule
#endif
