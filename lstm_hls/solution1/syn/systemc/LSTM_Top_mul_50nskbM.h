// ==============================================================
// File generated on Fri Mar 28 13:00:19 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __LSTM_Top_mul_50nskbM__HH__
#define __LSTM_Top_mul_50nskbM__HH__
#include "ACMP_mul_uu.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(LSTM_Top_mul_50nskbM) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_mul_uu<ID, 2, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_mul_uu_U;

    SC_CTOR(LSTM_Top_mul_50nskbM):  ACMP_mul_uu_U ("ACMP_mul_uu_U") {
        ACMP_mul_uu_U.clk(clk);
        ACMP_mul_uu_U.reset(reset);
        ACMP_mul_uu_U.ce(ce);
        ACMP_mul_uu_U.din0(din0);
        ACMP_mul_uu_U.din1(din1);
        ACMP_mul_uu_U.dout(dout);

    }

};

#endif //
