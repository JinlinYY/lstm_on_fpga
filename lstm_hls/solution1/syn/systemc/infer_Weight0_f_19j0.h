// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_19j0_H__
#define __infer_Weight0_f_19j0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_19j0_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_19j0_ram) {
        ram[0] = "0b00111010100000010011110010101100";
        ram[1] = "0b10111110111111111010000110100001";
        ram[2] = "0b10111110111001101001110100110000";
        ram[3] = "0b10111110001111101011100011011000";
        ram[4] = "0b10111110000110111110101110011110";
        ram[5] = "0b10111111001100010110110110100000";
        ram[6] = "0b10111110100010111111011100000110";
        ram[7] = "0b10111110111110011011100111011000";
        ram[8] = "0b00111110000000000111111011100001";
        ram[9] = "0b10111111101101100010100101011010";
        ram[10] = "0b10111110111100110011100001110001";
        ram[11] = "0b10111110011010001000110101101101";
        ram[12] = "0b00111101111001101101101111010111";
        ram[13] = "0b10111110101010101011110011011000";
        ram[14] = "0b00111110100100001011110001111011";
        ram[15] = "0b00111101001000000001100010100100";
        ram[16] = "0b10111110101011100010010001111001";
        ram[17] = "0b10111110111110001011101110010000";
        ram[18] = "0b10111111000101000110110101100001";
        ram[19] = "0b00111111000110010111001101000011";
        ram[20] = "0b10111111101111101100011100101010";
        ram[21] = "0b10111101101000110111001001100000";
        ram[22] = "0b10111111100010100110010000010011";
        ram[23] = "0b00111100100010101000001010100101";
        ram[24] = "0b10111110010101000001100100011010";
        ram[25] = "0b10111111000010011100101011010001";
        ram[26] = "0b10111101101111001110010000100001";
        ram[27] = "0b10111101101101100010011010110011";
        ram[28] = "0b10111110110111101001001010010010";
        ram[29] = "0b10111110010000111110010001101001";
        ram[30] = "0b10111111010010111011001001111001";
        ram[31] = "0b10111100010001101100100101111110";


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


SC_MODULE(infer_Weight0_f_19j0) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_19j0_ram* meminst;


SC_CTOR(infer_Weight0_f_19j0) {
meminst = new infer_Weight0_f_19j0_ram("infer_Weight0_f_19j0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_19j0() {
    delete meminst;
}


};//endmodule
#endif
