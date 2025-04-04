// ==============================================================
// File generated on Fri Mar 28 13:00:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#ifndef _mnist_lstm_img_dat_H_
#define _mnist_lstm_img_dat_H_

#include <systemc>
#include <iostream>
#include <fstream>

#include "mnist_lstm_img_dat_memcore.h"

SC_MODULE(mnist_lstm_img_dat) {
    static const unsigned int DataWidth    = 32;
    static const unsigned int AddressRange = 32;
    static const unsigned int AddressWidth = 8;
    static const unsigned int BufferCount  = 2;
    static const unsigned int IndexWidth   = 1;

    // system signals
    sc_core::sc_in_clk clk;
    sc_core::sc_in< sc_dt::sc_logic > reset;

    // initiator
    sc_core::sc_in<  sc_dt::sc_logic >            i_ce;
    sc_core::sc_in<  sc_dt::sc_logic >            i_write;
    sc_core::sc_out< sc_dt::sc_logic >            i_full_n;
    sc_core::sc_in<  sc_dt::sc_logic >            i_ce0;
    sc_core::sc_in<  sc_dt::sc_logic >            i_we0;
    sc_core::sc_in<  sc_dt::sc_lv<AddressWidth> > i_address0;
    sc_core::sc_in<  sc_dt::sc_lv<DataWidth> >    i_d0;
    sc_core::sc_out< sc_dt::sc_lv<DataWidth> >    i_q0;

    // target
    sc_core::sc_in<  sc_dt::sc_logic >            t_ce;
    sc_core::sc_in<  sc_dt::sc_logic >            t_read;
    sc_core::sc_out< sc_dt::sc_logic >            t_empty_n;
    sc_core::sc_in<  sc_dt::sc_logic >            t_ce0;
    sc_core::sc_in<  sc_dt::sc_logic >            t_we0;
    sc_core::sc_in<  sc_dt::sc_lv<AddressWidth> > t_address0;
    sc_core::sc_in<  sc_dt::sc_lv<DataWidth> >    t_d0;
    sc_core::sc_out< sc_dt::sc_lv<DataWidth> >    t_q0;

protected:
    // control/status
    sc_core::sc_signal< sc_dt::sc_uint<IndexWidth> >   iptr;     // initiator index
    sc_core::sc_signal< sc_dt::sc_uint<IndexWidth> >   tptr;     // target index
    sc_core::sc_signal< sc_dt::sc_uint<IndexWidth+1> > count;    // count of written buffers
    sc_core::sc_signal< sc_dt::sc_logic >              full_n;   // whether all buffers are written
    sc_core::sc_signal< sc_dt::sc_logic >              empty_n;  // whether none of the buffers is written
    sc_core::sc_signal< sc_dt::sc_logic >              push_buf; // finish writing a buffer
    sc_core::sc_signal< sc_dt::sc_logic >              pop_buf;  // finish reading a buffer

    sc_core::sc_signal< sc_dt::sc_lv<AddressWidth+1> > memcore_iaddr;
    sc_core::sc_signal< sc_dt::sc_lv<AddressWidth+1> > memcore_taddr;

    mnist_lstm_img_dat_memcore* mnist_lstm_img_dat_memcore_U;

    void proc_memcore_addr();

    void proc_i_full_n();
    void proc_t_empty_n();

    // control/status
    void proc_push_buf();
    void proc_pop_buf();
    void proc_iptr();
    void proc_tptr();
    void proc_count();
    void proc_full_n();
    void proc_empty_n();

    sc_core::sc_trace_file* m_trace_file;

public:
    ~mnist_lstm_img_dat();
    SC_CTOR(mnist_lstm_img_dat) : m_trace_file(0) {
        SC_METHOD(proc_memcore_addr);
        sensitive << i_address0 << t_address0 << iptr << tptr;

        mnist_lstm_img_dat_memcore_U = new mnist_lstm_img_dat_memcore("mnist_lstm_img_dat_memcore_U");
        mnist_lstm_img_dat_memcore_U->clk      ( clk );
        mnist_lstm_img_dat_memcore_U->reset    ( reset );
        mnist_lstm_img_dat_memcore_U->ce0      ( i_ce0 );
        mnist_lstm_img_dat_memcore_U->we0      ( i_we0 );
        mnist_lstm_img_dat_memcore_U->address0 ( memcore_iaddr );
        mnist_lstm_img_dat_memcore_U->d0       ( i_d0 );
        mnist_lstm_img_dat_memcore_U->q0       ( i_q0 );

        mnist_lstm_img_dat_memcore_U->ce1      ( t_ce0 );
        mnist_lstm_img_dat_memcore_U->we1      ( t_we0 );
        mnist_lstm_img_dat_memcore_U->address1 ( memcore_taddr );
        mnist_lstm_img_dat_memcore_U->d1       ( t_d0 );
        mnist_lstm_img_dat_memcore_U->q1       ( t_q0 );

        // power-on initialization
        iptr    = 0;
        tptr    = 0;
        count   = 0;
        full_n  = SC_LOGIC_1;
        empty_n = SC_LOGIC_0;

        // output
        SC_METHOD(proc_i_full_n);
        sensitive << full_n;

        SC_METHOD(proc_t_empty_n);
        sensitive << empty_n;

        // control/status
        SC_METHOD(proc_push_buf);
        sensitive << i_ce << i_write << full_n;

        SC_METHOD(proc_pop_buf);
        sensitive << t_ce << t_read << empty_n;

        SC_METHOD(proc_iptr);
        sensitive << clk.pos();

        SC_METHOD(proc_tptr);
        sensitive << clk.pos();

        SC_METHOD(proc_count);
        sensitive << clk.pos();

        SC_METHOD(proc_full_n);
        sensitive << clk.pos();

        SC_METHOD(proc_empty_n);
        sensitive << clk.pos();

        // Trace Begin.
        const char* dump_vcd = std::getenv("AP_WRITE_VCD");
        if (dump_vcd) {
            m_trace_file = sc_create_vcd_trace_file( "mnist_lstm_img_dat.trace");
            // ports
            sc_trace(m_trace_file, clk,        "(port)clk");
            sc_trace(m_trace_file, reset,      "(port)reset");
            sc_trace(m_trace_file, i_write,    "(port)i_write");
            sc_trace(m_trace_file, i_full_n,   "(port)i_full_n");
            sc_trace(m_trace_file, i_ce0,      "(port)i_ce0");
            sc_trace(m_trace_file, i_we0,      "(port)i_we0");
            sc_trace(m_trace_file, i_address0, "(port)i_address0");
            sc_trace(m_trace_file, i_d0,       "(port)i_d0");
            sc_trace(m_trace_file, i_q0,       "(port)i_q0");
            sc_trace(m_trace_file, t_read,     "(port)t_read");
            sc_trace(m_trace_file, t_empty_n,  "(port)t_empty_n");
            sc_trace(m_trace_file, t_ce0,      "(port)t_ce0");
            sc_trace(m_trace_file, t_we0,      "(port)t_we0");
            sc_trace(m_trace_file, t_address0, "(port)t_address0");
            sc_trace(m_trace_file, t_d0,       "(port)t_d0");
            sc_trace(m_trace_file, t_q0,       "(port)t_q0");
            // control/status
            sc_trace(m_trace_file, iptr,     "iptr");
            sc_trace(m_trace_file, tptr,     "tptr");
            sc_trace(m_trace_file, count,    "count");
            sc_trace(m_trace_file, full_n,   "full_n");
            sc_trace(m_trace_file, empty_n,  "empty_n");
            sc_trace(m_trace_file, push_buf, "push_buf");
            sc_trace(m_trace_file, pop_buf,  "pop_buf");
            sc_trace(m_trace_file, memcore_iaddr,  "memcore_iaddr");
            sc_trace(m_trace_file, memcore_taddr,  "memcore_taddr");
        } // Trace End.

    }
};

#endif

