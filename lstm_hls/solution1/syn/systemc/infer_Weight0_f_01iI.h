// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_01iI_H__
#define __infer_Weight0_f_01iI_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_01iI_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_01iI_ram) {
        ram[0] = "0b10111110100111101001011010000001";
        ram[1] = "0b10111111010100000100010100110101";
        ram[2] = "0b10111101110101011110001110010111";
        ram[3] = "0b10111110011101011001000101000111";
        ram[4] = "0b00111110100011100011110110000001";
        ram[5] = "0b10111110001111100101001001011001";
        ram[6] = "0b10111110010101101010010010000111";
        ram[7] = "0b10111111000001001011111101101110";
        ram[8] = "0b00111110111000000001001011100000";
        ram[9] = "0b00111111100010111100100111000101";
        ram[10] = "0b10111100100101111001101111111110";
        ram[11] = "0b10111110111101111011111111101000";
        ram[12] = "0b00111110110100101000000111111110";
        ram[13] = "0b10111101100111110110011001100010";
        ram[14] = "0b10111101000010000101001111000001";
        ram[15] = "0b00111110101000101000101111010010";
        ram[16] = "0b00111110100100101100011101110101";
        ram[17] = "0b10111110101000111110000000110111";
        ram[18] = "0b10111111000010010101110100001011";
        ram[19] = "0b10111110000111101111111100011001";
        ram[20] = "0b10111110101111111001110011000111";
        ram[21] = "0b10111101110111100000110101100111";
        ram[22] = "0b10111110000011100111010001101101";
        ram[23] = "0b00111110100101011000111111010110";
        ram[24] = "0b10111111011001101011010001000010";
        ram[25] = "0b00111101110111011100100100111111";
        ram[26] = "0b00111110100011011000001101100010";
        ram[27] = "0b10111111010000000011011011011011";
        ram[28] = "0b10111110011110100001101000001101";
        ram[29] = "0b00111101001010110111001101001011";
        ram[30] = "0b00111011001110110001101011110100";
        ram[31] = "0b00111111001010010001010000111100";


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


SC_MODULE(infer_Weight0_f_01iI) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_01iI_ram* meminst;


SC_CTOR(infer_Weight0_f_01iI) {
meminst = new infer_Weight0_f_01iI_ram("infer_Weight0_f_01iI_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_01iI() {
    delete meminst;
}


};//endmodule
#endif
