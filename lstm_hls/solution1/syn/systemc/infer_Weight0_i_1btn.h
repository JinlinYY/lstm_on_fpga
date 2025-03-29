// ==============================================================
// File generated on Fri Mar 28 13:00:21 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_i_1btn_H__
#define __infer_Weight0_i_1btn_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_i_1btn_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_i_1btn_ram) {
        ram[0] = "0b10111111001000100100000001000010";
        ram[1] = "0b10111110001011100110100101101010";
        ram[2] = "0b10111101111001010100001101101100";
        ram[3] = "0b00111100010001101101111001110110";
        ram[4] = "0b00111110111111010110000111110110";
        ram[5] = "0b00111111000100100000111001010010";
        ram[6] = "0b00111110111010111111010111011000";
        ram[7] = "0b00111100101001010100111001101110";
        ram[8] = "0b00111111011010100011010110000011";
        ram[9] = "0b00111111101001101111010001011010";
        ram[10] = "0b00111110000111111011011111101001";
        ram[11] = "0b00111100000101000011100111011110";
        ram[12] = "0b10111101100111110000000010101100";
        ram[13] = "0b10111110111101101101011111101001";
        ram[14] = "0b00111001100101101111111010110101";
        ram[15] = "0b10111101000011001101001100010111";
        ram[16] = "0b00111110000100010010011100101101";
        ram[17] = "0b00111101011111001101100110100101";
        ram[18] = "0b00111110100011010001010101001000";
        ram[19] = "0b10111110010001011111001111011000";
        ram[20] = "0b00111110101000110001101101011000";
        ram[21] = "0b10111110100110011011110000010010";
        ram[22] = "0b00111110100100101000000101110111";
        ram[23] = "0b00111110011001000011101000100001";
        ram[24] = "0b00111111010010100001100111001010";
        ram[25] = "0b10111110111011010010000001001011";
        ram[26] = "0b10111110001110010101111110101011";
        ram[27] = "0b00111110110110001001101100001111";
        ram[28] = "0b00111110010101111011100111100000";
        ram[29] = "0b00111111001110111011010100000111";
        ram[30] = "0b10111111001111011100110101001111";
        ram[31] = "0b10111101100001100011000011101100";


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


SC_MODULE(infer_Weight0_i_1btn) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_i_1btn_ram* meminst;


SC_CTOR(infer_Weight0_i_1btn) {
meminst = new infer_Weight0_i_1btn_ram("infer_Weight0_i_1btn_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_i_1btn() {
    delete meminst;
}


};//endmodule
#endif
