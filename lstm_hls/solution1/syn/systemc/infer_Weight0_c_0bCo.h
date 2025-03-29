// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_0bCo_H__
#define __infer_Weight0_c_0bCo_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_0bCo_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_0bCo_ram) {
        ram[0] = "0b00111101010011101101000110111111";
        ram[1] = "0b00111101001000011111111100101110";
        ram[2] = "0b00111110101101101000011011101000";
        ram[3] = "0b10111111001101110101111011011001";
        ram[4] = "0b00111101010111110000111001001110";
        ram[5] = "0b00111110111110111000010000010010";
        ram[6] = "0b10111111000010001000010001110011";
        ram[7] = "0b00111110100111110010000100001100";
        ram[8] = "0b00111101001101000101101111110010";
        ram[9] = "0b00111110110010110111100101010011";
        ram[10] = "0b00111110110111001001111100001110";
        ram[11] = "0b10111111000010110100111001000100";
        ram[12] = "0b10111110010001000011010101101001";
        ram[13] = "0b00111110110000011010000000100111";
        ram[14] = "0b00111110111110011100001111110000";
        ram[15] = "0b10111110111001111101100110011001";
        ram[16] = "0b10111111001101110010111110101001";
        ram[17] = "0b00111110100000001000011101000100";
        ram[18] = "0b10111101111010001100011010010011";
        ram[19] = "0b10111110100011010101100110010010";
        ram[20] = "0b10111111100110111101100100101011";
        ram[21] = "0b00111110111110100100111100000001";
        ram[22] = "0b00111101000111100110100010100001";
        ram[23] = "0b00111101110000001111101110101001";
        ram[24] = "0b00111110100010011010001010100101";
        ram[25] = "0b10111110101011111011100100111001";
        ram[26] = "0b10111110111011111001001000001000";
        ram[27] = "0b00111110110000111101011011101001";
        ram[28] = "0b00111100010000010100110001100110";
        ram[29] = "0b10111111001011001101010011101101";
        ram[30] = "0b00111110111001111010101101010100";
        ram[31] = "0b10111110110001011001010111111111";


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


SC_MODULE(infer_Weight0_c_0bCo) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_0bCo_ram* meminst;


SC_CTOR(infer_Weight0_c_0bCo) {
meminst = new infer_Weight0_c_0bCo_ram("infer_Weight0_c_0bCo_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_0bCo() {
    delete meminst;
}


};//endmodule
#endif
