// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_0bKp_H__
#define __infer_Weight0_c_0bKp_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_0bKp_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_0bKp_ram) {
        ram[0] = "0b00111111001100000111101001101100";
        ram[1] = "0b10111111010001110101001100111111";
        ram[2] = "0b10111110000110111101011001100010";
        ram[3] = "0b00111110110111010111101011111111";
        ram[4] = "0b10111101010110110101010100100110";
        ram[5] = "0b10111110110101100101010101111110";
        ram[6] = "0b10111110011111010011111110011110";
        ram[7] = "0b00111101110000111100000001111111";
        ram[8] = "0b10111101001010101110010010110000";
        ram[9] = "0b10111110011001010001000110011101";
        ram[10] = "0b00111111001011111001110101001110";
        ram[11] = "0b10111110001101100001010101100110";
        ram[12] = "0b00111110000111111100001101110010";
        ram[13] = "0b00111101101000000010000010000001";
        ram[14] = "0b10111110100111010000111001111000";
        ram[15] = "0b00111110100100011001011100111110";
        ram[16] = "0b00111101010101101000000111101101";
        ram[17] = "0b00111110101101011110001011101111";
        ram[18] = "0b00111110101001001000011100110011";
        ram[19] = "0b00111101011100100000011101001111";
        ram[20] = "0b10111110010010110010101011110001";
        ram[21] = "0b10111111000101011100011001001100";
        ram[22] = "0b10111110011011111010010100001001";
        ram[23] = "0b00111100010001101111011110100001";
        ram[24] = "0b00111101000010110111000010101100";
        ram[25] = "0b10111110110110001101101011100100";
        ram[26] = "0b00111011010111101011000011111011";
        ram[27] = "0b10111111001010011100011000101010";
        ram[28] = "0b00111111000001000011001010011000";
        ram[29] = "0b10111110111100100000001101100000";
        ram[30] = "0b10111101100100011100110110100011";
        ram[31] = "0b00111110110001110010000100001100";


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


SC_MODULE(infer_Weight0_c_0bKp) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_0bKp_ram* meminst;


SC_CTOR(infer_Weight0_c_0bKp) {
meminst = new infer_Weight0_c_0bKp_ram("infer_Weight0_c_0bKp_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_0bKp() {
    delete meminst;
}


};//endmodule
#endif
