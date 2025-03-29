// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_04jc_H__
#define __infer_Weight0_f_04jc_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_04jc_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_04jc_ram) {
        ram[0] = "0b00111110001110110000000101000011";
        ram[1] = "0b10111111000111000001000111100100";
        ram[2] = "0b00111111001001011110110101101100";
        ram[3] = "0b00111111010010001111101100110011";
        ram[4] = "0b10111110101110001010101100001101";
        ram[5] = "0b00111110110111111111110101100001";
        ram[6] = "0b10111111000010101110010001101101";
        ram[7] = "0b00111110110011000110100011001011";
        ram[8] = "0b00111110111101111000111000011001";
        ram[9] = "0b00111111110111000101101110000101";
        ram[10] = "0b00111110111111111001010100101101";
        ram[11] = "0b00111110100000101110000001011101";
        ram[12] = "0b00111110011101100001000011110001";
        ram[13] = "0b10111101001110100010101011010100";
        ram[14] = "0b00111101011100110111111010110011";
        ram[15] = "0b00111101100111110000101000011100";
        ram[16] = "0b10111111001010000010101111101001";
        ram[17] = "0b00111111010110001110110100001011";
        ram[18] = "0b00111101111010001001111000110100";
        ram[19] = "0b00111101100111110010100100001011";
        ram[20] = "0b00111110000100000010110001001101";
        ram[21] = "0b00111101111001010111100111110010";
        ram[22] = "0b00111111010010001101101000001010";
        ram[23] = "0b00111110100111011001111110010000";
        ram[24] = "0b00111110001101011100101000101010";
        ram[25] = "0b00111110111010011111011010101001";
        ram[26] = "0b00111111000000101111000110011001";
        ram[27] = "0b00111110101011100011111110011010";
        ram[28] = "0b10111110101010001110111101111000";
        ram[29] = "0b00111100110010100001101011010110";
        ram[30] = "0b00111110011011110111011101101100";
        ram[31] = "0b00111110100101101101111001110110";


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


SC_MODULE(infer_Weight0_f_04jc) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_04jc_ram* meminst;


SC_CTOR(infer_Weight0_f_04jc) {
meminst = new infer_Weight0_f_04jc_ram("infer_Weight0_f_04jc_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_04jc() {
    delete meminst;
}


};//endmodule
#endif
