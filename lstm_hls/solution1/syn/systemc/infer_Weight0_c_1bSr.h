// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_1bSr_H__
#define __infer_Weight0_c_1bSr_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_1bSr_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_1bSr_ram) {
        ram[0] = "0b00111110011110100011001001101110";
        ram[1] = "0b00111110101110001001011001010111";
        ram[2] = "0b10111110000001011000100101101010";
        ram[3] = "0b00111110010111001111000011111010";
        ram[4] = "0b00111101010011010010110000111000";
        ram[5] = "0b10111101110100011100111100110101";
        ram[6] = "0b10111100110011010010000010110000";
        ram[7] = "0b10111110010011110000000101110101";
        ram[8] = "0b10111011100101110010000001000011";
        ram[9] = "0b10111110111010001011000011110010";
        ram[10] = "0b00111110101000110001011100000101";
        ram[11] = "0b00111110000000001000011100000001";
        ram[12] = "0b00111110100100111000100110010100";
        ram[13] = "0b00111101000101110101101011111011";
        ram[14] = "0b00111100111111010100011110111111";
        ram[15] = "0b00111110011111011110100011110111";
        ram[16] = "0b00111110100110100101000111100011";
        ram[17] = "0b00111100110010111110000111101011";
        ram[18] = "0b10111110011010110101000110111101";
        ram[19] = "0b00111101110000100001000110001000";
        ram[20] = "0b10111110010001011010001010010100";
        ram[21] = "0b00111101101011010010000000101001";
        ram[22] = "0b00111101100011111100110101101000";
        ram[23] = "0b10111100101101100110110101111010";
        ram[24] = "0b10111110001100001111000110110010";
        ram[25] = "0b10111100010011001000100110110001";
        ram[26] = "0b00111101111111100010011110011110";
        ram[27] = "0b10111100011111000100110000010110";
        ram[28] = "0b10111101010011100101101101000010";
        ram[29] = "0b10111110000110100100111101000100";
        ram[30] = "0b10111110010001111011001000000011";
        ram[31] = "0b10111110001011110000000100110010";


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


SC_MODULE(infer_Weight0_c_1bSr) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_1bSr_ram* meminst;


SC_CTOR(infer_Weight0_c_1bSr) {
meminst = new infer_Weight0_c_1bSr_ram("infer_Weight0_c_1bSr_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_1bSr() {
    delete meminst;
}


};//endmodule
#endif
