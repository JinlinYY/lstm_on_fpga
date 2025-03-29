// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_03i2_H__
#define __infer_Weight0_f_03i2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_03i2_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_03i2_ram) {
        ram[0] = "0b10111111010110000010010001110000";
        ram[1] = "0b00111111001110000111110000100000";
        ram[2] = "0b10111111011100101000000111011100";
        ram[3] = "0b00111110001100011100110100011100";
        ram[4] = "0b10111110000111001110111000011000";
        ram[5] = "0b00111111100100010101101111101110";
        ram[6] = "0b00111111010001100111011101001111";
        ram[7] = "0b00111110100000100001111111110011";
        ram[8] = "0b10111101001010010001110110011011";
        ram[9] = "0b10111111011100001011110000000110";
        ram[10] = "0b00111111000100111110001111010010";
        ram[11] = "0b10111111001000000101000101010101";
        ram[12] = "0b00111110000111101110110001111101";
        ram[13] = "0b00111111010001101101100000001010";
        ram[14] = "0b00111111010000001101001010100010";
        ram[15] = "0b10111101110011100111011110010010";
        ram[16] = "0b10111100111000010111110000011100";
        ram[17] = "0b10111100110010111010000011101000";
        ram[18] = "0b10111101001000110011011110101000";
        ram[19] = "0b10111101011000001100000001101010";
        ram[20] = "0b10111110000011100101001101100101";
        ram[21] = "0b00111110101000101101100001011110";
        ram[22] = "0b00111111101101011100011011111100";
        ram[23] = "0b00111111100100001101011011010100";
        ram[24] = "0b10111110100111111111011010010000";
        ram[25] = "0b00111100011110000111001001101101";
        ram[26] = "0b00111110111010110010111100000001";
        ram[27] = "0b00111110101110010001011110110101";
        ram[28] = "0b10111101000101101100101001000111";
        ram[29] = "0b00111100100101000010111101100010";
        ram[30] = "0b10111110001100110101110000011000";
        ram[31] = "0b00111110111100100101100110011111";


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


SC_MODULE(infer_Weight0_f_03i2) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_03i2_ram* meminst;


SC_CTOR(infer_Weight0_f_03i2) {
meminst = new infer_Weight0_f_03i2_ram("infer_Weight0_f_03i2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_03i2() {
    delete meminst;
}


};//endmodule
#endif
