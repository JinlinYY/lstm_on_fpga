// ==============================================================
// File generated on Fri Mar 28 13:00:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_1cau_H__
#define __infer_Weight0_o_1cau_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_1cau_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_1cau_ram) {
        ram[0] = "0b10111111100001000110100010011000";
        ram[1] = "0b00111110111010101000101010100100";
        ram[2] = "0b00111110100110110001010111111001";
        ram[3] = "0b10111110010101000001100000001101";
        ram[4] = "0b10111111001100001011010111001100";
        ram[5] = "0b00111111001101101100000011010111";
        ram[6] = "0b00111110010001010101111100110101";
        ram[7] = "0b00111110000101100011001001111111";
        ram[8] = "0b00111110001011011010000011100000";
        ram[9] = "0b10111101110101011100011000111011";
        ram[10] = "0b10111110010110011101010011011000";
        ram[11] = "0b00111111001110001011100010011101";
        ram[12] = "0b00111111000000110010011001001010";
        ram[13] = "0b10111110011000100010101001101111";
        ram[14] = "0b00111101100111101011010100101101";
        ram[15] = "0b10111110101100110001111001111110";
        ram[16] = "0b00111110000010000010011010101011";
        ram[17] = "0b00111111001001011111100110001011";
        ram[18] = "0b10111101011000001001000100111010";
        ram[19] = "0b00111101000101000110110101000000";
        ram[20] = "0b00111001011111111101101001000000";
        ram[21] = "0b10111101000110011110111010001001";
        ram[22] = "0b00111101000100011011111101111011";
        ram[23] = "0b00111111001001100000101101110000";
        ram[24] = "0b01000000000000000010101010000100";
        ram[25] = "0b10111111010100010110001000010111";
        ram[26] = "0b00111110010001011110000101111110";
        ram[27] = "0b10111110100010000110101101111011";
        ram[28] = "0b00111111001110110011010001100001";
        ram[29] = "0b10111101111111110001100001000100";
        ram[30] = "0b00111111000101011111000000011100";
        ram[31] = "0b10111110000010010111011110000101";


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


SC_MODULE(infer_Weight0_o_1cau) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_1cau_ram* meminst;


SC_CTOR(infer_Weight0_o_1cau) {
meminst = new infer_Weight0_o_1cau_ram("infer_Weight0_o_1cau_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_1cau() {
    delete meminst;
}


};//endmodule
#endif
