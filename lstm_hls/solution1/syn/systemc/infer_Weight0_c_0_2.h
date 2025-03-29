// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_0_2_H__
#define __infer_Weight0_c_0_2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_0_2_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_0_2_ram) {
        ram[0] = "0b00111110111111111011000100011000";
        ram[1] = "0b00111110010100111001110011011000";
        ram[2] = "0b10111011111100011011001001011111";
        ram[3] = "0b00111110000111100010101011000011";
        ram[4] = "0b00111110101100011111011101010001";
        ram[5] = "0b10111110110101010111111001100111";
        ram[6] = "0b10111110011000010001100000111011";
        ram[7] = "0b10111010100011100011011010001111";
        ram[8] = "0b10111011100011100101100000011101";
        ram[9] = "0b10111100110110100101011101100100";
        ram[10] = "0b10111110100011111011111011111101";
        ram[11] = "0b00111101100101101111010111001011";
        ram[12] = "0b00111110011100000011111101110000";
        ram[13] = "0b10111101101011001011100111101101";
        ram[14] = "0b10111110100001010110110110100000";
        ram[15] = "0b00111101111011101101110011000010";
        ram[16] = "0b00111110111000100111110110101010";
        ram[17] = "0b10111110000000100010110011001011";
        ram[18] = "0b00111110100011001001010101111101";
        ram[19] = "0b10111110001101100001010111101100";
        ram[20] = "0b10111110011111001010001001010101";
        ram[21] = "0b10111101110011100111011110010010";
        ram[22] = "0b01000000001001000101110111111111";
        ram[23] = "0b10111100110011100010111100111000";
        ram[24] = "0b00111110101001110101010111011110";
        ram[25] = "0b10111111000000110110001001010010";
        ram[26] = "0b00111101101000011010101111010010";
        ram[27] = "0b10111101101111101001110110010101";
        ram[28] = "0b00111110001110100111001001100101";
        ram[29] = "0b00111101111110110000110111011000";
        ram[30] = "0b10111110110010111111011000111100";
        ram[31] = "0b00111101011110111000001111001111";


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


SC_MODULE(infer_Weight0_c_0_2) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_0_2_ram* meminst;


SC_CTOR(infer_Weight0_c_0_2) {
meminst = new infer_Weight0_c_0_2_ram("infer_Weight0_c_0_2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_0_2() {
    delete meminst;
}


};//endmodule
#endif
