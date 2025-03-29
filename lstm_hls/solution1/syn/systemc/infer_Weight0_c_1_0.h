// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_1_0_H__
#define __infer_Weight0_c_1_0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_1_0_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_1_0_ram) {
        ram[0] = "0b00111101101101001111111110000110";
        ram[1] = "0b00111110001010000001011100110011";
        ram[2] = "0b10111110000111101001110100001111";
        ram[3] = "0b00111110100101101110011001010100";
        ram[4] = "0b00111110101001101101001111111010";
        ram[5] = "0b00111110000110111011100111010000";
        ram[6] = "0b00111110100000000011111000100001";
        ram[7] = "0b10111110111101001111000001110100";
        ram[8] = "0b10111110110111010001101000000000";
        ram[9] = "0b10111110100001101001000001011000";
        ram[10] = "0b00111101011110100100011100100100";
        ram[11] = "0b10111100100001001100101011010101";
        ram[12] = "0b00111101000111011100011000011001";
        ram[13] = "0b10111110111010010100010011001100";
        ram[14] = "0b00111110000010110101011110000010";
        ram[15] = "0b10111111010111010001101011111100";
        ram[16] = "0b00111110000100101100101100100001";
        ram[17] = "0b00111110000110110010111110101001";
        ram[18] = "0b10111111001100110000000000010101";
        ram[19] = "0b00111111000010111010001011001111";
        ram[20] = "0b10111101011111001101101010110010";
        ram[21] = "0b10111110100101110011000010000011";
        ram[22] = "0b10111110000110000000101001011011";
        ram[23] = "0b10111100001010001110111101111000";
        ram[24] = "0b00111110011111110100000000011100";
        ram[25] = "0b00111110000011110100100110001100";
        ram[26] = "0b00111101110010101111101000101111";
        ram[27] = "0b00111111001101010111110110111111";
        ram[28] = "0b10111111010000000000111111011100";
        ram[29] = "0b00111111001010110100100001101111";
        ram[30] = "0b10111110001100001101111010001111";
        ram[31] = "0b00111110110011001111111100100010";


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


SC_MODULE(infer_Weight0_c_1_0) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_1_0_ram* meminst;


SC_CTOR(infer_Weight0_c_1_0) {
meminst = new infer_Weight0_c_1_0_ram("infer_Weight0_c_1_0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_1_0() {
    delete meminst;
}


};//endmodule
#endif
