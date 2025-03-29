// ==============================================================
// File generated on Fri Mar 28 13:00:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_o_1ccu_H__
#define __infer_Weight0_o_1ccu_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_o_1ccu_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_o_1ccu_ram) {
        ram[0] = "0b00111111110100011110111101100011";
        ram[1] = "0b10111111001101100111111110000000";
        ram[2] = "0b10111111100100000010000011011110";
        ram[3] = "0b00111110100100110100000000001100";
        ram[4] = "0b00111110100010010011000100000001";
        ram[5] = "0b10111110110100010110011101100110";
        ram[6] = "0b10111101101000101000001101001101";
        ram[7] = "0b10111110001110001100011011010110";
        ram[8] = "0b10111111000010100101001010001011";
        ram[9] = "0b10111111001010010101010100111111";
        ram[10] = "0b10111111110110000111010001011100";
        ram[11] = "0b10111110110100000110110010000111";
        ram[12] = "0b10111101111110001111011110011000";
        ram[13] = "0b10111110010011001110101000101001";
        ram[14] = "0b00111101100001000101000100110011";
        ram[15] = "0b00111101010101101110101111010101";
        ram[16] = "0b00111101100101000011001010000111";
        ram[17] = "0b10111110011010011011100010001000";
        ram[18] = "0b10111110100000001110011101011000";
        ram[19] = "0b10111101101000101011101001011010";
        ram[20] = "0b10111111010111010001101010101000";
        ram[21] = "0b00111110001100110110010101000101";
        ram[22] = "0b00111110110010110110101101001100";
        ram[23] = "0b10111110001111011111000100010111";
        ram[24] = "0b00111110100011011010100100100010";
        ram[25] = "0b10111111000111000111010101100000";
        ram[26] = "0b10111101100111110101010110011011";
        ram[27] = "0b10111110100111110111100011011101";
        ram[28] = "0b10111110100100010011010010101101";
        ram[29] = "0b10111111001100010001000110111110";
        ram[30] = "0b10111110100010111000101000111011";
        ram[31] = "0b10111110010011100101100101101101";


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


SC_MODULE(infer_Weight0_o_1ccu) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_o_1ccu_ram* meminst;


SC_CTOR(infer_Weight0_o_1ccu) {
meminst = new infer_Weight0_o_1ccu_ram("infer_Weight0_o_1ccu_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_o_1ccu() {
    delete meminst;
}


};//endmodule
#endif
