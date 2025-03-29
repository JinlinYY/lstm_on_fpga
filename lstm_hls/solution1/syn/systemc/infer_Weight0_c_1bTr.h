// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_1bTr_H__
#define __infer_Weight0_c_1bTr_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_1bTr_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_1bTr_ram) {
        ram[0] = "0b00111011100001111100001000000001";
        ram[1] = "0b00111110011001111110001111010010";
        ram[2] = "0b10111101011101011101011110001000";
        ram[3] = "0b10111110100011100010000100110010";
        ram[4] = "0b00111101111011101001111111110001";
        ram[5] = "0b00111111001011000101000110011000";
        ram[6] = "0b10111110001100011100111000101001";
        ram[7] = "0b00111111011010011000000011100101";
        ram[8] = "0b00111110111001101111000010101110";
        ram[9] = "0b00111110011000011101000010000101";
        ram[10] = "0b10111101101110000001001001111011";
        ram[11] = "0b00111111000011111100001010011000";
        ram[12] = "0b10111110001101000010001001000110";
        ram[13] = "0b10111110000111000111101110001001";
        ram[14] = "0b00111110101011111101111110100000";
        ram[15] = "0b10111110100111011101001001101011";
        ram[16] = "0b10111101110010100010011101101011";
        ram[17] = "0b10111101011001110100110000001010";
        ram[18] = "0b10111111000101010011110110100111";
        ram[19] = "0b00111110101010100110111000110011";
        ram[20] = "0b00111110100010010000010010010010";
        ram[21] = "0b10111101111000110110011001010001";
        ram[22] = "0b10111101100010010110011001111011";
        ram[23] = "0b00111110001001110111101011110110";
        ram[24] = "0b00111110100011010010000001001011";
        ram[25] = "0b10111101110001101001011100101001";
        ram[26] = "0b10111110101011000011100000001001";
        ram[27] = "0b00111110001011011011001101111101";
        ram[28] = "0b00111110101110011010010011011111";
        ram[29] = "0b00111110110100010101101100010100";
        ram[30] = "0b10111110100010110010001110011010";
        ram[31] = "0b00111101000101111001000001110101";


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


SC_MODULE(infer_Weight0_c_1bTr) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_1bTr_ram* meminst;


SC_CTOR(infer_Weight0_c_1bTr) {
meminst = new infer_Weight0_c_1bTr_ram("infer_Weight0_c_1bTr_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_1bTr() {
    delete meminst;
}


};//endmodule
#endif
