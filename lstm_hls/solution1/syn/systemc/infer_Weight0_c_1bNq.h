// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_1bNq_H__
#define __infer_Weight0_c_1bNq_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_1bNq_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_1bNq_ram) {
        ram[0] = "0b00111110000101010101100000100001";
        ram[1] = "0b00111101010011111011010101001010";
        ram[2] = "0b00111110000010101001001110101111";
        ram[3] = "0b00111101100001000000001010001110";
        ram[4] = "0b10111101101111111011011110100110";
        ram[5] = "0b00111110011111110010001110001001";
        ram[6] = "0b00111110000100011100000000000001";
        ram[7] = "0b00111011101100101101100100000110";
        ram[8] = "0b10111110111011000000111111001011";
        ram[9] = "0b00111110100101001110101011010001";
        ram[10] = "0b10111101101000001100010100100010";
        ram[11] = "0b10111101100101100001111011010110";
        ram[12] = "0b00111011100111110001111100010101";
        ram[13] = "0b10111110100011101100100011010110";
        ram[14] = "0b00111101000001101100111010111100";
        ram[15] = "0b00111111000011010101101101010111";
        ram[16] = "0b10111110111110001111001111101101";
        ram[17] = "0b00111110011101111110011011110111";
        ram[18] = "0b00111101111111100111001000010001";
        ram[19] = "0b00111110000101011110110111010000";
        ram[20] = "0b10111110110111011110100100011000";
        ram[21] = "0b10111101101101010010100011110010";
        ram[22] = "0b10111011110101110000111001101111";
        ram[23] = "0b10111101111111000001110011100111";
        ram[24] = "0b00111110010101101010001100111000";
        ram[25] = "0b00111110001000001110110011111010";
        ram[26] = "0b10111101101111011100010000000000";
        ram[27] = "0b00111101011000100111111000001111";
        ram[28] = "0b10111110011011110010110100111100";
        ram[29] = "0b10111110100110101110010110111101";
        ram[30] = "0b10111101101111001001011000000011";
        ram[31] = "0b00111110110011110101000111001110";


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


SC_MODULE(infer_Weight0_c_1bNq) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_1bNq_ram* meminst;


SC_CTOR(infer_Weight0_c_1bNq) {
meminst = new infer_Weight0_c_1bNq_ram("infer_Weight0_c_1bNq_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_1bNq() {
    delete meminst;
}


};//endmodule
#endif
