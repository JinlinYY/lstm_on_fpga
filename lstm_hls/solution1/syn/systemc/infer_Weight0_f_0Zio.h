// ==============================================================
// File generated on Fri Mar 28 13:00:20 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __infer_Weight0_f_0Zio_H__
#define __infer_Weight0_f_0Zio_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct infer_Weight0_f_0Zio_ram : public sc_core::sc_module {

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


   SC_CTOR(infer_Weight0_f_0Zio_ram) {
        ram[0] = "0b00111101000110110110010011100000";
        ram[1] = "0b10111111001101101011010011111010";
        ram[2] = "0b00111101101101110110001001010010";
        ram[3] = "0b10111111001101100011100110010011";
        ram[4] = "0b10111110110000100101011010011011";
        ram[5] = "0b10111111100000010101100110110100";
        ram[6] = "0b00111110101010100110111110100100";
        ram[7] = "0b10111111010100011010111101111101";
        ram[8] = "0b10111110010110111101100111001011";
        ram[9] = "0b10111111010000001001010001001111";
        ram[10] = "0b10111111001011101000111010110100";
        ram[11] = "0b10111110101100110000101010010001";
        ram[12] = "0b10111110010110110011000101111111";
        ram[13] = "0b10111110101010001011011111100101";
        ram[14] = "0b10111111000001010100100011101101";
        ram[15] = "0b00111110101010101001000011101111";
        ram[16] = "0b10111101101010101110111010100110";
        ram[17] = "0b10111110100100000011000011000010";
        ram[18] = "0b10111111000010000000010111000100";
        ram[19] = "0b10111110100111000000101000101000";
        ram[20] = "0b10111111001000110010101010101110";
        ram[21] = "0b10111110100111111010001001101010";
        ram[22] = "0b10111110110010011100010101100001";
        ram[23] = "0b10111111110011101010000000110100";
        ram[24] = "0b10111110111101010010100101111000";
        ram[25] = "0b10111110001101110111010100110010";
        ram[26] = "0b10111111010000111111011001101111";
        ram[27] = "0b10111110100011001000110010010011";
        ram[28] = "0b10111110110010011101111001101010";
        ram[29] = "0b10111110101100001010000010110010";
        ram[30] = "0b10111110001011110110011110110010";
        ram[31] = "0b00111100000001101100001000100111";


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


SC_MODULE(infer_Weight0_f_0Zio) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


infer_Weight0_f_0Zio_ram* meminst;


SC_CTOR(infer_Weight0_f_0Zio) {
meminst = new infer_Weight0_f_0Zio_ram("infer_Weight0_f_0Zio_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~infer_Weight0_f_0Zio() {
    delete meminst;
}


};//endmodule
#endif
