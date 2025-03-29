// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_1_5_H__
#define __infer_Weight0_f_1_5_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_1_5_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_1_5_ram) {
        ram[0] = "0b10111111001011011101000111100101";
        ram[1] = "0b00111110100000100100011011100001";
        ram[2] = "0b10111101011101101111100111111101";
        ram[3] = "0b10111110101000111011101110100101";
        ram[4] = "0b10111111000101101101101110000011";
        ram[5] = "0b10111110010110001101110001010101";
        ram[6] = "0b00111110110110110010011110001001";
        ram[7] = "0b10111110111111110010010001110100";
        ram[8] = "0b00111110110111101001111011000011";
        ram[9] = "0b10111111010011111010010101111111";
        ram[10] = "0b10111110111001001000101101100101";
        ram[11] = "0b10111100111100011110000010000011";
        ram[12] = "0b10111111000010110010110000110000";
        ram[13] = "0b10111110111011101010100010111001";
        ram[14] = "0b10111110100001000000000110100011";
        ram[15] = "0b10111111010110110010101111111110";
        ram[16] = "0b10111101100011111101001010100110";
        ram[17] = "0b10111111001101010110010111000011";
        ram[18] = "0b10111100011111110001110110000010";
        ram[19] = "0b10111110111110100010001011110111";
        ram[20] = "0b10111110110100010111101101010011";
        ram[21] = "0b00111101001000000011000011000010";
        ram[22] = "0b10111110110111001011110101010101";
        ram[23] = "0b10111110010000101111101100011010";
        ram[24] = "0b10111110011100000001110110011111";
        ram[25] = "0b10111101101110110011010010100100";
        ram[26] = "0b10111110010111101111100111011011";
        ram[27] = "0b00111110010111111001000110100011";
        ram[28] = "0b10111110111001110111011111010001";
        ram[29] = "0b10111110110100010010101011011000";
        ram[30] = "0b10111110000110010101101110111100";
        ram[31] = "0b00111101010001011100000000110011";


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


SC_MODULE(infer_Weight0_f_1_5) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_1_5_ram* meminst;


SC_CTOR(infer_Weight0_f_1_5) {
meminst = new infer_Weight0_f_1_5_ram("infer_Weight0_f_1_5_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_1_5() {
    delete meminst;
}


};//endmodule
#endif
