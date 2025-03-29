// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_0bDo_H__
#define __infer_Weight0_c_0bDo_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_0bDo_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_0bDo_ram) {
        ram[0] = "0b00111110100010010111011001111001";
        ram[1] = "0b10111110110101111001000000010001";
        ram[2] = "0b00111110111101010111011011001101";
        ram[3] = "0b00111111001010001010110111001101";
        ram[4] = "0b00111101100110001011101001000001";
        ram[5] = "0b10111101111100010110110100101011";
        ram[6] = "0b10111101011101101000010010001100";
        ram[7] = "0b00111111000110011111001010101010";
        ram[8] = "0b10111101111111001010000001111111";
        ram[9] = "0b10111100101101111010010111110100";
        ram[10] = "0b00111110101011010110001101100111";
        ram[11] = "0b10111011101000100000000101000111";
        ram[12] = "0b10111101010101100010111100010110";
        ram[13] = "0b10111110111000010100001001110000";
        ram[14] = "0b00111110101101001010100100100110";
        ram[15] = "0b10111110010110100001011010100101";
        ram[16] = "0b00111110001110100001101001010000";
        ram[17] = "0b00111111000011011101001000011000";
        ram[18] = "0b10111110101010111010100010100100";
        ram[19] = "0b00111110100001010001110111001101";
        ram[20] = "0b00111110100110100110110111110000";
        ram[21] = "0b10111101110001001011010101010111";
        ram[22] = "0b10111101110000101101111010000111";
        ram[23] = "0b00111110111111001110000000010001";
        ram[24] = "0b00111111000100010101101000111010";
        ram[25] = "0b10111110010010111101101100011010";
        ram[26] = "0b10111100011000101000001001000001";
        ram[27] = "0b00111110100000001100011101011100";
        ram[28] = "0b00111100101110100110111011111100";
        ram[29] = "0b10111100111000000001011110011000";
        ram[30] = "0b00111101011011000110000001000110";
        ram[31] = "0b00111111001011111011011011101101";


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


SC_MODULE(infer_Weight0_c_0bDo) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_0bDo_ram* meminst;


SC_CTOR(infer_Weight0_c_0bDo) {
meminst = new infer_Weight0_c_0bDo_ram("infer_Weight0_c_0bDo_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_0bDo() {
    delete meminst;
}


};//endmodule
#endif
