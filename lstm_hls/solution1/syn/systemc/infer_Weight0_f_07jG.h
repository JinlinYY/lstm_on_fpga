// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_07jG_H__
#define __infer_Weight0_f_07jG_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_07jG_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_07jG_ram) {
        ram[0] = "0b00111111001111000100110101000100";
        ram[1] = "0b10111111011010100011101000011001";
        ram[2] = "0b00111110100100000111111111001100";
        ram[3] = "0b10111110110101111001101001001010";
        ram[4] = "0b00111101101100110010101001001001";
        ram[5] = "0b00111111000100110111011101111101";
        ram[6] = "0b10111110110010000101111010000001";
        ram[7] = "0b10111100100010001010000001001101";
        ram[8] = "0b10111111000110010110100100111100";
        ram[9] = "0b10111110010000011110110111100001";
        ram[10] = "0b01000000000010001101011100001010";
        ram[11] = "0b00111101001111111101100100110100";
        ram[12] = "0b10111111000010010001111111100110";
        ram[13] = "0b10111110000100100100001001001010";
        ram[14] = "0b10111110010011111010101111011010";
        ram[15] = "0b00111111000101010000110101111100";
        ram[16] = "0b10111100110100000011100101101001";
        ram[17] = "0b00111110010101001101011101101011";
        ram[18] = "0b00111110100011011111100000101011";
        ram[19] = "0b10111111011010110011011100100010";
        ram[20] = "0b00111111101101101101110101001000";
        ram[21] = "0b10111110100100101000011110100000";
        ram[22] = "0b10111111010101101001101100010111";
        ram[23] = "0b00111110001111100000010011000000";
        ram[24] = "0b00111110110101100001010010111110";
        ram[25] = "0b00111111001100000001001000010111";
        ram[26] = "0b00111111010001000101000010001011";
        ram[27] = "0b00111111000110010111001100010001";
        ram[28] = "0b00111111001101000110000111011000";
        ram[29] = "0b00111111000101110000100101000010";
        ram[30] = "0b10111110100011011000010101011001";
        ram[31] = "0b10111111000101001101110111010111";


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


SC_MODULE(infer_Weight0_f_07jG) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_07jG_ram* meminst;


SC_CTOR(infer_Weight0_f_07jG) {
meminst = new infer_Weight0_f_07jG_ram("infer_Weight0_f_07jG_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_07jG() {
    delete meminst;
}


};//endmodule
#endif
