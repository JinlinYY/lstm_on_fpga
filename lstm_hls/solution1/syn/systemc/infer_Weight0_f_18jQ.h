// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_18jQ_H__
#define __infer_Weight0_f_18jQ_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_18jQ_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_18jQ_ram) {
        ram[0] = "0b10111110101001101010110000000000";
        ram[1] = "0b10111101110110110011111010011010";
        ram[2] = "0b00111111001100011001011101110000";
        ram[3] = "0b00111110110111100010101110001100";
        ram[4] = "0b10111110100010101000000010101110";
        ram[5] = "0b00111110010010000011000111110000";
        ram[6] = "0b00111110010110000110000001010111";
        ram[7] = "0b00111111000000011101001011100001";
        ram[8] = "0b10111110110101101111001010000100";
        ram[9] = "0b10111111010110101010111100110110";
        ram[10] = "0b00111110110011100100000101001110";
        ram[11] = "0b00111111011001000110001111110001";
        ram[12] = "0b10111101101011000001111111001001";
        ram[13] = "0b10111101111110111101011010100110";
        ram[14] = "0b10111111000000101010011111110000";
        ram[15] = "0b00111110101101110010010100011100";
        ram[16] = "0b00111110010100110101100101111001";
        ram[17] = "0b10111110001100011010010111001010";
        ram[18] = "0b00111110000011010111101100100000";
        ram[19] = "0b00111111100101101110100011011001";
        ram[20] = "0b10111110100100111010010010110101";
        ram[21] = "0b10111101110100101001001011000101";
        ram[22] = "0b00111111100001111001111100101100";
        ram[23] = "0b00111100000100110011000110100001";
        ram[24] = "0b00111111001001000100100010001100";
        ram[25] = "0b00111110000011010100000010101011";
        ram[26] = "0b10111110100111111101101111110101";
        ram[27] = "0b10111111000110100110010010010001";
        ram[28] = "0b10111100111001011001010010101111";
        ram[29] = "0b00111110011101010101000100001101";
        ram[30] = "0b00111011111010011010001011000110";
        ram[31] = "0b10111010111011111011101100001110";


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


SC_MODULE(infer_Weight0_f_18jQ) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_18jQ_ram* meminst;


SC_CTOR(infer_Weight0_f_18jQ) {
meminst = new infer_Weight0_f_18jQ_ram("infer_Weight0_f_18jQ_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_18jQ() {
    delete meminst;
}


};//endmodule
#endif
