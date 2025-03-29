// ==============================================================
// File generated on Fri Mar 28 13:00:22 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_c_0bIp_H__
#define __infer_Weight0_c_0bIp_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_c_0bIp_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_c_0bIp_ram) {
        ram[0] = "0b10111110101111000000010011101010";
        ram[1] = "0b00111110010100001000001001001001";
        ram[2] = "0b00111101011111110010101000010111";
        ram[3] = "0b00111110011011001110110100001011";
        ram[4] = "0b00111111000100001111111110000110";
        ram[5] = "0b10111111001010100000001011001001";
        ram[6] = "0b10111101110100000101110110010110";
        ram[7] = "0b10111100000011101000011001000000";
        ram[8] = "0b10111100111000000101111011100101";
        ram[9] = "0b10111111001001110101101101100000";
        ram[10] = "0b00111110100000000000001011100010";
        ram[11] = "0b00111110100001010000001000100101";
        ram[12] = "0b10111101110111011101110110110001";
        ram[13] = "0b00111101111010010011010000100110";
        ram[14] = "0b10111111001001001010011111111000";
        ram[15] = "0b10111110100011001100111100000111";
        ram[16] = "0b00111110110010000000010010111000";
        ram[17] = "0b00111101101110010111100010010010";
        ram[18] = "0b10111101100110011010000111111101";
        ram[19] = "0b00111110000010110110010101100111";
        ram[20] = "0b00111101110111001110010100101110";
        ram[21] = "0b00111110011010111011011111111010";
        ram[22] = "0b00111101100101001110101010001110";
        ram[23] = "0b10111110111010000001111010101100";
        ram[24] = "0b00111110001100011001011001010011";
        ram[25] = "0b10111110011100100000001010010111";
        ram[26] = "0b10111110111101001011101000110000";
        ram[27] = "0b10111110010100010000111111011000";
        ram[28] = "0b10111110000010001110100000100001";
        ram[29] = "0b00111111000100001010110110101100";
        ram[30] = "0b00111110100011110111011101101100";
        ram[31] = "0b00111110110001100101011111111011";


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


SC_MODULE(infer_Weight0_c_0bIp) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_c_0bIp_ram* meminst;


SC_CTOR(infer_Weight0_c_0bIp) {
meminst = new infer_Weight0_c_0bIp_ram("infer_Weight0_c_0bIp_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_c_0bIp() {
    delete meminst;
}


};//endmodule
#endif
