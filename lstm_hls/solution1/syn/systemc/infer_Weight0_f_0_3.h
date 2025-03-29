// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_0_3_H__
#define __infer_Weight0_f_0_3_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_0_3_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_0_3_ram) {
        ram[0] = "0b00111111001011100100000010100111";
        ram[1] = "0b10111111000000111110110001000110";
        ram[2] = "0b10111110011001011001110100010011";
        ram[3] = "0b00111100100001100110111001000100";
        ram[4] = "0b00111111110000011110100010100011";
        ram[5] = "0b00111100100101110001000110010100";
        ram[6] = "0b00111110101010110101000100010110";
        ram[7] = "0b00111101011000001011000010101111";
        ram[8] = "0b10111100000111011110000001010000";
        ram[9] = "0b00111101011001000000100101011111";
        ram[10] = "0b10111101100110100111101100001011";
        ram[11] = "0b10111110100001000100000001101100";
        ram[12] = "0b00111111011110101000000100110100";
        ram[13] = "0b00111110001100010001011010101001";
        ram[14] = "0b10111110100100011111000000111101";
        ram[15] = "0b00111110000110010000011010001010";
        ram[16] = "0b00111111000000010111000010100100";
        ram[17] = "0b00111110101101111110000110010111";
        ram[18] = "0b10111101111111110111001001110001";
        ram[19] = "0b10111110011101000010110101001001";
        ram[20] = "0b00111101111000100001111010100011";
        ram[21] = "0b00111110100010000011100111101111";
        ram[22] = "0b10111110010001011110000101111110";
        ram[23] = "0b00111100000001101010100011111100";
        ram[24] = "0b00111101000010001000101101010100";
        ram[25] = "0b00111111000100111111111001101101";
        ram[26] = "0b10111111000111011010101111010010";
        ram[27] = "0b10111110110110010011001101011101";
        ram[28] = "0b00111110100010110111001100001000";
        ram[29] = "0b00111101110101101110110001011011";
        ram[30] = "0b00111111101100000010011101000010";
        ram[31] = "0b10111100011100110110011010010101";


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


SC_MODULE(infer_Weight0_f_0_3) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_0_3_ram* meminst;


SC_CTOR(infer_Weight0_f_0_3) {
meminst = new infer_Weight0_f_0_3_ram("infer_Weight0_f_0_3_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_0_3() {
    delete meminst;
}


};//endmodule
#endif
