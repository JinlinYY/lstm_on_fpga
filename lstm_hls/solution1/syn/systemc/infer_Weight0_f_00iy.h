// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_00iy_H__
#define __infer_Weight0_f_00iy_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_00iy_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_00iy_ram) {
        ram[0] = "0b10111100110010010101111000011000";
        ram[1] = "0b00111110100111000010111110100101";
        ram[2] = "0b00111101011111100110011100001110";
        ram[3] = "0b00111111100000011001000011111011";
        ram[4] = "0b00111111000110010000100011110110";
        ram[5] = "0b00111100000010111010110001110001";
        ram[6] = "0b10111110000000110011011010011100";
        ram[7] = "0b00111111010101001110100110110100";
        ram[8] = "0b10111100110010010000111001100111";
        ram[9] = "0b00111111100000101010110100001100";
        ram[10] = "0b00111111010111101101100100111000";
        ram[11] = "0b10111110001110100101001101110110";
        ram[12] = "0b00111100101001110100111000100011";
        ram[13] = "0b00111110110100110001011111001110";
        ram[14] = "0b00111111000110001110010110000010";
        ram[15] = "0b00111110000011100111111011101001";
        ram[16] = "0b00111110101101110010111111011100";
        ram[17] = "0b00111110010110001000010110010000";
        ram[18] = "0b00111110010010000010001110000101";
        ram[19] = "0b10111110010110000101101001001111";
        ram[20] = "0b00111110010000000011100101101001";
        ram[21] = "0b00111111011011101101101101010001";
        ram[22] = "0b00111111100001101101001011111110";
        ram[23] = "0b10111110011100010100000011011101";
        ram[24] = "0b00111111011010101000000011010000";
        ram[25] = "0b00111111010100111111001001011110";
        ram[26] = "0b00111110101010111111010011101101";
        ram[27] = "0b10111110001001000100000010101111";
        ram[28] = "0b00111110100011101111101011000110";
        ram[29] = "0b00111110011010100110100110111110";
        ram[30] = "0b00111111000001100000010000011001";
        ram[31] = "0b00111101111011000111111110111011";


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


SC_MODULE(infer_Weight0_f_00iy) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_00iy_ram* meminst;


SC_CTOR(infer_Weight0_f_00iy) {
meminst = new infer_Weight0_f_00iy_ram("infer_Weight0_f_00iy_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_00iy() {
    delete meminst;
}


};//endmodule
#endif
