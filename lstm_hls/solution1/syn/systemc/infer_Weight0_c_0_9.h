// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_0_9_H__
#define __infer_Weight0_c_0_9_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_0_9_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_0_9_ram) {
        ram[0] = "0b00111111000100001000110101001100";
        ram[1] = "0b10111110101001110001011101011001";
        ram[2] = "0b10111110001001010100011110011101";
        ram[3] = "0b00111101101011000010011000010100";
        ram[4] = "0b00111110100011110010111101010101";
        ram[5] = "0b10111111000110011011000010001010";
        ram[6] = "0b10111110111001001110010001100101";
        ram[7] = "0b10111111000010101011001100000011";
        ram[8] = "0b10111110010100100001100101100101";
        ram[9] = "0b10111111000110010110011100100011";
        ram[10] = "0b00111110000000011101001100100100";
        ram[11] = "0b10111011010010011110101010011010";
        ram[12] = "0b10111110011111010010001001000010";
        ram[13] = "0b10111110000110001111011011001111";
        ram[14] = "0b00111111010111011000000110111111";
        ram[15] = "0b10111110110101011101111011011111";
        ram[16] = "0b10111110011001100010011000101101";
        ram[17] = "0b00111111001000010110000110110011";
        ram[18] = "0b00111100101101110110101100111100";
        ram[19] = "0b10111111000110111101000001101100";
        ram[20] = "0b10111111001100110010111000100111";
        ram[21] = "0b00111110010000110010000110100011";
        ram[22] = "0b10111110001010100110010000111101";
        ram[23] = "0b10111111011010111101100001001001";
        ram[24] = "0b00111110100111010110011010001100";
        ram[25] = "0b10111110100000100111100000101001";
        ram[26] = "0b10111101100011101111010011100000";
        ram[27] = "0b10111100111010001011111000101111";
        ram[28] = "0b00111101101101100101001000110111";
        ram[29] = "0b00111110101011011100100010111000";
        ram[30] = "0b10111110111110110110110100000001";
        ram[31] = "0b10111011111100111000100000100010";


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


SC_MODULE(infer_Weight0_c_0_9) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_0_9_ram* meminst;


SC_CTOR(infer_Weight0_c_0_9) {
meminst = new infer_Weight0_c_0_9_ram("infer_Weight0_c_0_9_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_0_9() {
    delete meminst;
}


};//endmodule
#endif
