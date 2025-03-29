// ==============================================================
// File generated on Fri Mar 21 15:42:23 +0800 2025
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#define AP_INT_MAX_W 32678

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->
    template< int D ,int U ,int TI ,int TD > struct ap_axiu;
    template<> struct ap_axiu<32, 1, 1, 1> {
        ap_uint<32> data;
        ap_uint<4> keep;
        ap_uint<4> strb;
        ap_uint<1> user;
        ap_uint<1> last;
        ap_uint<1> id;
        ap_uint<1> dest;
       } ;



// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "in_data_V"
#define AUTOTB_TVIN_in_data_V  "../tv/cdatafile/c.LSTM_Top.autotvin_in_data_V.dat"
// wrapc file define: "in_keep_V"
#define AUTOTB_TVIN_in_keep_V  "../tv/cdatafile/c.LSTM_Top.autotvin_in_keep_V.dat"
// wrapc file define: "in_strb_V"
#define AUTOTB_TVIN_in_strb_V  "../tv/cdatafile/c.LSTM_Top.autotvin_in_strb_V.dat"
// wrapc file define: "in_user_V"
#define AUTOTB_TVIN_in_user_V  "../tv/cdatafile/c.LSTM_Top.autotvin_in_user_V.dat"
// wrapc file define: "in_last_V"
#define AUTOTB_TVIN_in_last_V  "../tv/cdatafile/c.LSTM_Top.autotvin_in_last_V.dat"
// wrapc file define: "in_id_V"
#define AUTOTB_TVIN_in_id_V  "../tv/cdatafile/c.LSTM_Top.autotvin_in_id_V.dat"
// wrapc file define: "in_dest_V"
#define AUTOTB_TVIN_in_dest_V  "../tv/cdatafile/c.LSTM_Top.autotvin_in_dest_V.dat"
// wrapc file define: "out_data_V"
#define AUTOTB_TVOUT_out_data_V  "../tv/cdatafile/c.LSTM_Top.autotvout_out_data_V.dat"
#define AUTOTB_TVIN_out_data_V  "../tv/cdatafile/c.LSTM_Top.autotvin_out_data_V.dat"
// wrapc file define: "out_keep_V"
#define AUTOTB_TVOUT_out_keep_V  "../tv/cdatafile/c.LSTM_Top.autotvout_out_keep_V.dat"
#define AUTOTB_TVIN_out_keep_V  "../tv/cdatafile/c.LSTM_Top.autotvin_out_keep_V.dat"
// wrapc file define: "out_strb_V"
#define AUTOTB_TVOUT_out_strb_V  "../tv/cdatafile/c.LSTM_Top.autotvout_out_strb_V.dat"
#define AUTOTB_TVIN_out_strb_V  "../tv/cdatafile/c.LSTM_Top.autotvin_out_strb_V.dat"
// wrapc file define: "out_user_V"
#define AUTOTB_TVOUT_out_user_V  "../tv/cdatafile/c.LSTM_Top.autotvout_out_user_V.dat"
#define AUTOTB_TVIN_out_user_V  "../tv/cdatafile/c.LSTM_Top.autotvin_out_user_V.dat"
// wrapc file define: "out_last_V"
#define AUTOTB_TVOUT_out_last_V  "../tv/cdatafile/c.LSTM_Top.autotvout_out_last_V.dat"
#define AUTOTB_TVIN_out_last_V  "../tv/cdatafile/c.LSTM_Top.autotvin_out_last_V.dat"
// wrapc file define: "out_id_V"
#define AUTOTB_TVOUT_out_id_V  "../tv/cdatafile/c.LSTM_Top.autotvout_out_id_V.dat"
#define AUTOTB_TVIN_out_id_V  "../tv/cdatafile/c.LSTM_Top.autotvin_out_id_V.dat"
// wrapc file define: "out_dest_V"
#define AUTOTB_TVOUT_out_dest_V  "../tv/cdatafile/c.LSTM_Top.autotvout_out_dest_V.dat"
#define AUTOTB_TVIN_out_dest_V  "../tv/cdatafile/c.LSTM_Top.autotvin_out_dest_V.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "out_data_V"
#define AUTOTB_TVOUT_PC_out_data_V  "../tv/rtldatafile/rtl.LSTM_Top.autotvout_out_data_V.dat"
// tvout file define: "out_keep_V"
#define AUTOTB_TVOUT_PC_out_keep_V  "../tv/rtldatafile/rtl.LSTM_Top.autotvout_out_keep_V.dat"
// tvout file define: "out_strb_V"
#define AUTOTB_TVOUT_PC_out_strb_V  "../tv/rtldatafile/rtl.LSTM_Top.autotvout_out_strb_V.dat"
// tvout file define: "out_user_V"
#define AUTOTB_TVOUT_PC_out_user_V  "../tv/rtldatafile/rtl.LSTM_Top.autotvout_out_user_V.dat"
// tvout file define: "out_last_V"
#define AUTOTB_TVOUT_PC_out_last_V  "../tv/rtldatafile/rtl.LSTM_Top.autotvout_out_last_V.dat"
// tvout file define: "out_id_V"
#define AUTOTB_TVOUT_PC_out_id_V  "../tv/rtldatafile/rtl.LSTM_Top.autotvout_out_id_V.dat"
// tvout file define: "out_dest_V"
#define AUTOTB_TVOUT_PC_out_dest_V  "../tv/rtldatafile/rtl.LSTM_Top.autotvout_out_dest_V.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			in_data_V_depth = 0;
			in_keep_V_depth = 0;
			in_strb_V_depth = 0;
			in_user_V_depth = 0;
			in_last_V_depth = 0;
			in_id_V_depth = 0;
			in_dest_V_depth = 0;
			out_data_V_depth = 0;
			out_keep_V_depth = 0;
			out_strb_V_depth = 0;
			out_user_V_depth = 0;
			out_last_V_depth = 0;
			out_id_V_depth = 0;
			out_dest_V_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{in_data_V " << in_data_V_depth << "}\n";
			total_list << "{in_keep_V " << in_keep_V_depth << "}\n";
			total_list << "{in_strb_V " << in_strb_V_depth << "}\n";
			total_list << "{in_user_V " << in_user_V_depth << "}\n";
			total_list << "{in_last_V " << in_last_V_depth << "}\n";
			total_list << "{in_id_V " << in_id_V_depth << "}\n";
			total_list << "{in_dest_V " << in_dest_V_depth << "}\n";
			total_list << "{out_data_V " << out_data_V_depth << "}\n";
			total_list << "{out_keep_V " << out_keep_V_depth << "}\n";
			total_list << "{out_strb_V " << out_strb_V_depth << "}\n";
			total_list << "{out_user_V " << out_user_V_depth << "}\n";
			total_list << "{out_last_V " << out_last_V_depth << "}\n";
			total_list << "{out_id_V " << out_id_V_depth << "}\n";
			total_list << "{out_dest_V " << out_dest_V_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int in_data_V_depth;
		int in_keep_V_depth;
		int in_strb_V_depth;
		int in_user_V_depth;
		int in_last_V_depth;
		int in_id_V_depth;
		int in_dest_V_depth;
		int out_data_V_depth;
		int out_keep_V_depth;
		int out_strb_V_depth;
		int out_user_V_depth;
		int out_last_V_depth;
		int out_id_V_depth;
		int out_dest_V_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern void LSTM_Top (
ap_axiu<32, 1, 1, 1 > in[784],
ap_axiu<32, 1, 1, 1 > out[10]);

void AESL_WRAP_LSTM_Top (
ap_axiu<32, 1, 1, 1 > in[784],
ap_axiu<32, 1, 1, 1 > out[10])
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "out_data_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_out_data_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_out_data_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_out_data_V, AESL_token); // data

			sc_bv<32> *out_data_V_pc_buffer = new sc_bv<32>[10];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_data_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_data_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					out_data_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_out_data_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_out_data_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: out_data_V
				{
					// bitslice(31, 0)
					// {
						// celement: out.data.V(31, 0)
						// {
							sc_lv<32>* out_data_V_lv0_0_9_1 = new sc_lv<32>[10];
						// }
					// }

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: out.data.V(31, 0)
						{
							// carray: (0) => (9) @ (1)
							for (int i_0 = 0; i_0 <= 9; i_0 += 1)
							{
								if (&(out[0].data) != NULL) // check the null address if the c port is array or others
								{
									out_data_V_lv0_0_9_1[hls_map_index].range(31, 0) = sc_bv<32>(out_data_V_pc_buffer[hls_map_index].range(31, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(31, 0)
					{
						int hls_map_index = 0;
						// celement: out.data.V(31, 0)
						{
							// carray: (0) => (9) @ (1)
							for (int i_0 = 0; i_0 <= 9; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : out[i_0].data
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : out[0].data
								// output_left_conversion : out[i_0].data
								// output_type_conversion : (out_data_V_lv0_0_9_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(out[0].data) != NULL) // check the null address if the c port is array or others
								{
									out[i_0].data = (out_data_V_lv0_0_9_1[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] out_data_V_pc_buffer;
		}

		// output port post check: "out_keep_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_out_keep_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_out_keep_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_out_keep_V, AESL_token); // data

			sc_bv<4> *out_keep_V_pc_buffer = new sc_bv<4>[10];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_keep_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_keep_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					out_keep_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_out_keep_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_out_keep_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: out_keep_V
				{
					// bitslice(3, 0)
					// {
						// celement: out.keep.V(3, 0)
						// {
							sc_lv<4>* out_keep_V_lv0_0_9_1 = new sc_lv<4>[10];
						// }
					// }

					// bitslice(3, 0)
					{
						int hls_map_index = 0;
						// celement: out.keep.V(3, 0)
						{
							// carray: (0) => (9) @ (1)
							for (int i_0 = 0; i_0 <= 9; i_0 += 1)
							{
								if (&(out[0].keep) != NULL) // check the null address if the c port is array or others
								{
									out_keep_V_lv0_0_9_1[hls_map_index].range(3, 0) = sc_bv<4>(out_keep_V_pc_buffer[hls_map_index].range(3, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(3, 0)
					{
						int hls_map_index = 0;
						// celement: out.keep.V(3, 0)
						{
							// carray: (0) => (9) @ (1)
							for (int i_0 = 0; i_0 <= 9; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : out[i_0].keep
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : out[0].keep
								// output_left_conversion : out[i_0].keep
								// output_type_conversion : (out_keep_V_lv0_0_9_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(out[0].keep) != NULL) // check the null address if the c port is array or others
								{
									out[i_0].keep = (out_keep_V_lv0_0_9_1[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] out_keep_V_pc_buffer;
		}

		// output port post check: "out_strb_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_out_strb_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_out_strb_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_out_strb_V, AESL_token); // data

			sc_bv<4> *out_strb_V_pc_buffer = new sc_bv<4>[10];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_strb_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_strb_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					out_strb_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_out_strb_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_out_strb_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: out_strb_V
				{
					// bitslice(3, 0)
					// {
						// celement: out.strb.V(3, 0)
						// {
							sc_lv<4>* out_strb_V_lv0_0_9_1 = new sc_lv<4>[10];
						// }
					// }

					// bitslice(3, 0)
					{
						int hls_map_index = 0;
						// celement: out.strb.V(3, 0)
						{
							// carray: (0) => (9) @ (1)
							for (int i_0 = 0; i_0 <= 9; i_0 += 1)
							{
								if (&(out[0].strb) != NULL) // check the null address if the c port is array or others
								{
									out_strb_V_lv0_0_9_1[hls_map_index].range(3, 0) = sc_bv<4>(out_strb_V_pc_buffer[hls_map_index].range(3, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(3, 0)
					{
						int hls_map_index = 0;
						// celement: out.strb.V(3, 0)
						{
							// carray: (0) => (9) @ (1)
							for (int i_0 = 0; i_0 <= 9; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : out[i_0].strb
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : out[0].strb
								// output_left_conversion : out[i_0].strb
								// output_type_conversion : (out_strb_V_lv0_0_9_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(out[0].strb) != NULL) // check the null address if the c port is array or others
								{
									out[i_0].strb = (out_strb_V_lv0_0_9_1[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] out_strb_V_pc_buffer;
		}

		// output port post check: "out_user_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_out_user_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_out_user_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_out_user_V, AESL_token); // data

			sc_bv<1> *out_user_V_pc_buffer = new sc_bv<1>[10];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_user_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_user_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					out_user_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_out_user_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_out_user_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: out_user_V
				{
					// bitslice(0, 0)
					// {
						// celement: out.user.V(0, 0)
						// {
							sc_lv<1>* out_user_V_lv0_0_9_1 = new sc_lv<1>[10];
						// }
					// }

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: out.user.V(0, 0)
						{
							// carray: (0) => (9) @ (1)
							for (int i_0 = 0; i_0 <= 9; i_0 += 1)
							{
								if (&(out[0].user) != NULL) // check the null address if the c port is array or others
								{
									out_user_V_lv0_0_9_1[hls_map_index].range(0, 0) = sc_bv<1>(out_user_V_pc_buffer[hls_map_index].range(0, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: out.user.V(0, 0)
						{
							// carray: (0) => (9) @ (1)
							for (int i_0 = 0; i_0 <= 9; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : out[i_0].user
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : out[0].user
								// output_left_conversion : out[i_0].user
								// output_type_conversion : (out_user_V_lv0_0_9_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(out[0].user) != NULL) // check the null address if the c port is array or others
								{
									out[i_0].user = (out_user_V_lv0_0_9_1[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] out_user_V_pc_buffer;
		}

		// output port post check: "out_last_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_out_last_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_out_last_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_out_last_V, AESL_token); // data

			sc_bv<1> *out_last_V_pc_buffer = new sc_bv<1>[10];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_last_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_last_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					out_last_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_out_last_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_out_last_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: out_last_V
				{
					// bitslice(0, 0)
					// {
						// celement: out.last.V(0, 0)
						// {
							sc_lv<1>* out_last_V_lv0_0_9_1 = new sc_lv<1>[10];
						// }
					// }

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: out.last.V(0, 0)
						{
							// carray: (0) => (9) @ (1)
							for (int i_0 = 0; i_0 <= 9; i_0 += 1)
							{
								if (&(out[0].last) != NULL) // check the null address if the c port is array or others
								{
									out_last_V_lv0_0_9_1[hls_map_index].range(0, 0) = sc_bv<1>(out_last_V_pc_buffer[hls_map_index].range(0, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: out.last.V(0, 0)
						{
							// carray: (0) => (9) @ (1)
							for (int i_0 = 0; i_0 <= 9; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : out[i_0].last
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : out[0].last
								// output_left_conversion : out[i_0].last
								// output_type_conversion : (out_last_V_lv0_0_9_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(out[0].last) != NULL) // check the null address if the c port is array or others
								{
									out[i_0].last = (out_last_V_lv0_0_9_1[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] out_last_V_pc_buffer;
		}

		// output port post check: "out_id_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_out_id_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_out_id_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_out_id_V, AESL_token); // data

			sc_bv<1> *out_id_V_pc_buffer = new sc_bv<1>[10];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_id_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_id_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					out_id_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_out_id_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_out_id_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: out_id_V
				{
					// bitslice(0, 0)
					// {
						// celement: out.id.V(0, 0)
						// {
							sc_lv<1>* out_id_V_lv0_0_9_1 = new sc_lv<1>[10];
						// }
					// }

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: out.id.V(0, 0)
						{
							// carray: (0) => (9) @ (1)
							for (int i_0 = 0; i_0 <= 9; i_0 += 1)
							{
								if (&(out[0].id) != NULL) // check the null address if the c port is array or others
								{
									out_id_V_lv0_0_9_1[hls_map_index].range(0, 0) = sc_bv<1>(out_id_V_pc_buffer[hls_map_index].range(0, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: out.id.V(0, 0)
						{
							// carray: (0) => (9) @ (1)
							for (int i_0 = 0; i_0 <= 9; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : out[i_0].id
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : out[0].id
								// output_left_conversion : out[i_0].id
								// output_type_conversion : (out_id_V_lv0_0_9_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(out[0].id) != NULL) // check the null address if the c port is array or others
								{
									out[i_0].id = (out_id_V_lv0_0_9_1[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] out_id_V_pc_buffer;
		}

		// output port post check: "out_dest_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_out_dest_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_out_dest_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_out_dest_V, AESL_token); // data

			sc_bv<1> *out_dest_V_pc_buffer = new sc_bv<1>[10];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_dest_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'out_dest_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					out_dest_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_out_dest_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_out_dest_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: out_dest_V
				{
					// bitslice(0, 0)
					// {
						// celement: out.dest.V(0, 0)
						// {
							sc_lv<1>* out_dest_V_lv0_0_9_1 = new sc_lv<1>[10];
						// }
					// }

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: out.dest.V(0, 0)
						{
							// carray: (0) => (9) @ (1)
							for (int i_0 = 0; i_0 <= 9; i_0 += 1)
							{
								if (&(out[0].dest) != NULL) // check the null address if the c port is array or others
								{
									out_dest_V_lv0_0_9_1[hls_map_index].range(0, 0) = sc_bv<1>(out_dest_V_pc_buffer[hls_map_index].range(0, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: out.dest.V(0, 0)
						{
							// carray: (0) => (9) @ (1)
							for (int i_0 = 0; i_0 <= 9; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : out[i_0].dest
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : out[0].dest
								// output_left_conversion : out[i_0].dest
								// output_type_conversion : (out_dest_V_lv0_0_9_1[hls_map_index]).to_string(SC_BIN).c_str()
								if (&(out[0].dest) != NULL) // check the null address if the c port is array or others
								{
									out[i_0].dest = (out_dest_V_lv0_0_9_1[hls_map_index]).to_string(SC_BIN).c_str();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] out_dest_V_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "in_data_V"
		char* tvin_in_data_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_in_data_V);

		// "in_keep_V"
		char* tvin_in_keep_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_in_keep_V);

		// "in_strb_V"
		char* tvin_in_strb_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_in_strb_V);

		// "in_user_V"
		char* tvin_in_user_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_in_user_V);

		// "in_last_V"
		char* tvin_in_last_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_in_last_V);

		// "in_id_V"
		char* tvin_in_id_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_in_id_V);

		// "in_dest_V"
		char* tvin_in_dest_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_in_dest_V);

		// "out_data_V"
		char* tvin_out_data_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_out_data_V);
		char* tvout_out_data_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_out_data_V);

		// "out_keep_V"
		char* tvin_out_keep_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_out_keep_V);
		char* tvout_out_keep_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_out_keep_V);

		// "out_strb_V"
		char* tvin_out_strb_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_out_strb_V);
		char* tvout_out_strb_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_out_strb_V);

		// "out_user_V"
		char* tvin_out_user_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_out_user_V);
		char* tvout_out_user_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_out_user_V);

		// "out_last_V"
		char* tvin_out_last_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_out_last_V);
		char* tvout_out_last_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_out_last_V);

		// "out_id_V"
		char* tvin_out_id_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_out_id_V);
		char* tvout_out_id_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_out_id_V);

		// "out_dest_V"
		char* tvin_out_dest_V = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_out_dest_V);
		char* tvout_out_dest_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_out_dest_V);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_in_data_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_in_data_V, tvin_in_data_V);

		sc_bv<32>* in_data_V_tvin_wrapc_buffer = new sc_bv<32>[784];

		// RTL Name: in_data_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: in.data.V(31, 0)
				{
					// carray: (0) => (783) @ (1)
					for (int i_0 = 0; i_0 <= 783; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : in[i_0].data
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : in[0].data
						// regulate_c_name       : in_data_V
						// input_type_conversion : (in[i_0].data).to_string(2).c_str()
						if (&(in[0].data) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> in_data_V_tmp_mem;
							in_data_V_tmp_mem = (in[i_0].data).to_string(2).c_str();
							in_data_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = in_data_V_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 784; i++)
		{
			sprintf(tvin_in_data_V, "%s\n", (in_data_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_in_data_V, tvin_in_data_V);
		}

		tcl_file.set_num(784, &tcl_file.in_data_V_depth);
		sprintf(tvin_in_data_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_in_data_V, tvin_in_data_V);

		// release memory allocation
		delete [] in_data_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_in_keep_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_in_keep_V, tvin_in_keep_V);

		sc_bv<4>* in_keep_V_tvin_wrapc_buffer = new sc_bv<4>[784];

		// RTL Name: in_keep_V
		{
			// bitslice(3, 0)
			{
				int hls_map_index = 0;
				// celement: in.keep.V(3, 0)
				{
					// carray: (0) => (783) @ (1)
					for (int i_0 = 0; i_0 <= 783; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : in[i_0].keep
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : in[0].keep
						// regulate_c_name       : in_keep_V
						// input_type_conversion : (in[i_0].keep).to_string(2).c_str()
						if (&(in[0].keep) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<4> in_keep_V_tmp_mem;
							in_keep_V_tmp_mem = (in[i_0].keep).to_string(2).c_str();
							in_keep_V_tvin_wrapc_buffer[hls_map_index].range(3, 0) = in_keep_V_tmp_mem.range(3, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 784; i++)
		{
			sprintf(tvin_in_keep_V, "%s\n", (in_keep_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_in_keep_V, tvin_in_keep_V);
		}

		tcl_file.set_num(784, &tcl_file.in_keep_V_depth);
		sprintf(tvin_in_keep_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_in_keep_V, tvin_in_keep_V);

		// release memory allocation
		delete [] in_keep_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_in_strb_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_in_strb_V, tvin_in_strb_V);

		sc_bv<4>* in_strb_V_tvin_wrapc_buffer = new sc_bv<4>[784];

		// RTL Name: in_strb_V
		{
			// bitslice(3, 0)
			{
				int hls_map_index = 0;
				// celement: in.strb.V(3, 0)
				{
					// carray: (0) => (783) @ (1)
					for (int i_0 = 0; i_0 <= 783; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : in[i_0].strb
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : in[0].strb
						// regulate_c_name       : in_strb_V
						// input_type_conversion : (in[i_0].strb).to_string(2).c_str()
						if (&(in[0].strb) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<4> in_strb_V_tmp_mem;
							in_strb_V_tmp_mem = (in[i_0].strb).to_string(2).c_str();
							in_strb_V_tvin_wrapc_buffer[hls_map_index].range(3, 0) = in_strb_V_tmp_mem.range(3, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 784; i++)
		{
			sprintf(tvin_in_strb_V, "%s\n", (in_strb_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_in_strb_V, tvin_in_strb_V);
		}

		tcl_file.set_num(784, &tcl_file.in_strb_V_depth);
		sprintf(tvin_in_strb_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_in_strb_V, tvin_in_strb_V);

		// release memory allocation
		delete [] in_strb_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_in_user_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_in_user_V, tvin_in_user_V);

		sc_bv<1>* in_user_V_tvin_wrapc_buffer = new sc_bv<1>[784];

		// RTL Name: in_user_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: in.user.V(0, 0)
				{
					// carray: (0) => (783) @ (1)
					for (int i_0 = 0; i_0 <= 783; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : in[i_0].user
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : in[0].user
						// regulate_c_name       : in_user_V
						// input_type_conversion : (in[i_0].user).to_string(2).c_str()
						if (&(in[0].user) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> in_user_V_tmp_mem;
							in_user_V_tmp_mem = (in[i_0].user).to_string(2).c_str();
							in_user_V_tvin_wrapc_buffer[hls_map_index].range(0, 0) = in_user_V_tmp_mem.range(0, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 784; i++)
		{
			sprintf(tvin_in_user_V, "%s\n", (in_user_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_in_user_V, tvin_in_user_V);
		}

		tcl_file.set_num(784, &tcl_file.in_user_V_depth);
		sprintf(tvin_in_user_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_in_user_V, tvin_in_user_V);

		// release memory allocation
		delete [] in_user_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_in_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_in_last_V, tvin_in_last_V);

		sc_bv<1>* in_last_V_tvin_wrapc_buffer = new sc_bv<1>[784];

		// RTL Name: in_last_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: in.last.V(0, 0)
				{
					// carray: (0) => (783) @ (1)
					for (int i_0 = 0; i_0 <= 783; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : in[i_0].last
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : in[0].last
						// regulate_c_name       : in_last_V
						// input_type_conversion : (in[i_0].last).to_string(2).c_str()
						if (&(in[0].last) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> in_last_V_tmp_mem;
							in_last_V_tmp_mem = (in[i_0].last).to_string(2).c_str();
							in_last_V_tvin_wrapc_buffer[hls_map_index].range(0, 0) = in_last_V_tmp_mem.range(0, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 784; i++)
		{
			sprintf(tvin_in_last_V, "%s\n", (in_last_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_in_last_V, tvin_in_last_V);
		}

		tcl_file.set_num(784, &tcl_file.in_last_V_depth);
		sprintf(tvin_in_last_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_in_last_V, tvin_in_last_V);

		// release memory allocation
		delete [] in_last_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_in_id_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_in_id_V, tvin_in_id_V);

		sc_bv<1>* in_id_V_tvin_wrapc_buffer = new sc_bv<1>[784];

		// RTL Name: in_id_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: in.id.V(0, 0)
				{
					// carray: (0) => (783) @ (1)
					for (int i_0 = 0; i_0 <= 783; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : in[i_0].id
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : in[0].id
						// regulate_c_name       : in_id_V
						// input_type_conversion : (in[i_0].id).to_string(2).c_str()
						if (&(in[0].id) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> in_id_V_tmp_mem;
							in_id_V_tmp_mem = (in[i_0].id).to_string(2).c_str();
							in_id_V_tvin_wrapc_buffer[hls_map_index].range(0, 0) = in_id_V_tmp_mem.range(0, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 784; i++)
		{
			sprintf(tvin_in_id_V, "%s\n", (in_id_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_in_id_V, tvin_in_id_V);
		}

		tcl_file.set_num(784, &tcl_file.in_id_V_depth);
		sprintf(tvin_in_id_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_in_id_V, tvin_in_id_V);

		// release memory allocation
		delete [] in_id_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_in_dest_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_in_dest_V, tvin_in_dest_V);

		sc_bv<1>* in_dest_V_tvin_wrapc_buffer = new sc_bv<1>[784];

		// RTL Name: in_dest_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: in.dest.V(0, 0)
				{
					// carray: (0) => (783) @ (1)
					for (int i_0 = 0; i_0 <= 783; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : in[i_0].dest
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : in[0].dest
						// regulate_c_name       : in_dest_V
						// input_type_conversion : (in[i_0].dest).to_string(2).c_str()
						if (&(in[0].dest) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> in_dest_V_tmp_mem;
							in_dest_V_tmp_mem = (in[i_0].dest).to_string(2).c_str();
							in_dest_V_tvin_wrapc_buffer[hls_map_index].range(0, 0) = in_dest_V_tmp_mem.range(0, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 784; i++)
		{
			sprintf(tvin_in_dest_V, "%s\n", (in_dest_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_in_dest_V, tvin_in_dest_V);
		}

		tcl_file.set_num(784, &tcl_file.in_dest_V_depth);
		sprintf(tvin_in_dest_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_in_dest_V, tvin_in_dest_V);

		// release memory allocation
		delete [] in_dest_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_out_data_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_out_data_V, tvin_out_data_V);

		sc_bv<32>* out_data_V_tvin_wrapc_buffer = new sc_bv<32>[10];

		// RTL Name: out_data_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: out.data.V(31, 0)
				{
					// carray: (0) => (9) @ (1)
					for (int i_0 = 0; i_0 <= 9; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out[i_0].data
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out[0].data
						// regulate_c_name       : out_data_V
						// input_type_conversion : (out[i_0].data).to_string(2).c_str()
						if (&(out[0].data) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> out_data_V_tmp_mem;
							out_data_V_tmp_mem = (out[i_0].data).to_string(2).c_str();
							out_data_V_tvin_wrapc_buffer[hls_map_index].range(31, 0) = out_data_V_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 10; i++)
		{
			sprintf(tvin_out_data_V, "%s\n", (out_data_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_out_data_V, tvin_out_data_V);
		}

		tcl_file.set_num(10, &tcl_file.out_data_V_depth);
		sprintf(tvin_out_data_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_out_data_V, tvin_out_data_V);

		// release memory allocation
		delete [] out_data_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_out_keep_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_out_keep_V, tvin_out_keep_V);

		sc_bv<4>* out_keep_V_tvin_wrapc_buffer = new sc_bv<4>[10];

		// RTL Name: out_keep_V
		{
			// bitslice(3, 0)
			{
				int hls_map_index = 0;
				// celement: out.keep.V(3, 0)
				{
					// carray: (0) => (9) @ (1)
					for (int i_0 = 0; i_0 <= 9; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out[i_0].keep
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out[0].keep
						// regulate_c_name       : out_keep_V
						// input_type_conversion : (out[i_0].keep).to_string(2).c_str()
						if (&(out[0].keep) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<4> out_keep_V_tmp_mem;
							out_keep_V_tmp_mem = (out[i_0].keep).to_string(2).c_str();
							out_keep_V_tvin_wrapc_buffer[hls_map_index].range(3, 0) = out_keep_V_tmp_mem.range(3, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 10; i++)
		{
			sprintf(tvin_out_keep_V, "%s\n", (out_keep_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_out_keep_V, tvin_out_keep_V);
		}

		tcl_file.set_num(10, &tcl_file.out_keep_V_depth);
		sprintf(tvin_out_keep_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_out_keep_V, tvin_out_keep_V);

		// release memory allocation
		delete [] out_keep_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_out_strb_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_out_strb_V, tvin_out_strb_V);

		sc_bv<4>* out_strb_V_tvin_wrapc_buffer = new sc_bv<4>[10];

		// RTL Name: out_strb_V
		{
			// bitslice(3, 0)
			{
				int hls_map_index = 0;
				// celement: out.strb.V(3, 0)
				{
					// carray: (0) => (9) @ (1)
					for (int i_0 = 0; i_0 <= 9; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out[i_0].strb
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out[0].strb
						// regulate_c_name       : out_strb_V
						// input_type_conversion : (out[i_0].strb).to_string(2).c_str()
						if (&(out[0].strb) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<4> out_strb_V_tmp_mem;
							out_strb_V_tmp_mem = (out[i_0].strb).to_string(2).c_str();
							out_strb_V_tvin_wrapc_buffer[hls_map_index].range(3, 0) = out_strb_V_tmp_mem.range(3, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 10; i++)
		{
			sprintf(tvin_out_strb_V, "%s\n", (out_strb_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_out_strb_V, tvin_out_strb_V);
		}

		tcl_file.set_num(10, &tcl_file.out_strb_V_depth);
		sprintf(tvin_out_strb_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_out_strb_V, tvin_out_strb_V);

		// release memory allocation
		delete [] out_strb_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_out_user_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_out_user_V, tvin_out_user_V);

		sc_bv<1>* out_user_V_tvin_wrapc_buffer = new sc_bv<1>[10];

		// RTL Name: out_user_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: out.user.V(0, 0)
				{
					// carray: (0) => (9) @ (1)
					for (int i_0 = 0; i_0 <= 9; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out[i_0].user
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out[0].user
						// regulate_c_name       : out_user_V
						// input_type_conversion : (out[i_0].user).to_string(2).c_str()
						if (&(out[0].user) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> out_user_V_tmp_mem;
							out_user_V_tmp_mem = (out[i_0].user).to_string(2).c_str();
							out_user_V_tvin_wrapc_buffer[hls_map_index].range(0, 0) = out_user_V_tmp_mem.range(0, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 10; i++)
		{
			sprintf(tvin_out_user_V, "%s\n", (out_user_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_out_user_V, tvin_out_user_V);
		}

		tcl_file.set_num(10, &tcl_file.out_user_V_depth);
		sprintf(tvin_out_user_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_out_user_V, tvin_out_user_V);

		// release memory allocation
		delete [] out_user_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_out_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_out_last_V, tvin_out_last_V);

		sc_bv<1>* out_last_V_tvin_wrapc_buffer = new sc_bv<1>[10];

		// RTL Name: out_last_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: out.last.V(0, 0)
				{
					// carray: (0) => (9) @ (1)
					for (int i_0 = 0; i_0 <= 9; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out[i_0].last
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out[0].last
						// regulate_c_name       : out_last_V
						// input_type_conversion : (out[i_0].last).to_string(2).c_str()
						if (&(out[0].last) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> out_last_V_tmp_mem;
							out_last_V_tmp_mem = (out[i_0].last).to_string(2).c_str();
							out_last_V_tvin_wrapc_buffer[hls_map_index].range(0, 0) = out_last_V_tmp_mem.range(0, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 10; i++)
		{
			sprintf(tvin_out_last_V, "%s\n", (out_last_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_out_last_V, tvin_out_last_V);
		}

		tcl_file.set_num(10, &tcl_file.out_last_V_depth);
		sprintf(tvin_out_last_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_out_last_V, tvin_out_last_V);

		// release memory allocation
		delete [] out_last_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_out_id_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_out_id_V, tvin_out_id_V);

		sc_bv<1>* out_id_V_tvin_wrapc_buffer = new sc_bv<1>[10];

		// RTL Name: out_id_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: out.id.V(0, 0)
				{
					// carray: (0) => (9) @ (1)
					for (int i_0 = 0; i_0 <= 9; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out[i_0].id
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out[0].id
						// regulate_c_name       : out_id_V
						// input_type_conversion : (out[i_0].id).to_string(2).c_str()
						if (&(out[0].id) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> out_id_V_tmp_mem;
							out_id_V_tmp_mem = (out[i_0].id).to_string(2).c_str();
							out_id_V_tvin_wrapc_buffer[hls_map_index].range(0, 0) = out_id_V_tmp_mem.range(0, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 10; i++)
		{
			sprintf(tvin_out_id_V, "%s\n", (out_id_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_out_id_V, tvin_out_id_V);
		}

		tcl_file.set_num(10, &tcl_file.out_id_V_depth);
		sprintf(tvin_out_id_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_out_id_V, tvin_out_id_V);

		// release memory allocation
		delete [] out_id_V_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_out_dest_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_out_dest_V, tvin_out_dest_V);

		sc_bv<1>* out_dest_V_tvin_wrapc_buffer = new sc_bv<1>[10];

		// RTL Name: out_dest_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: out.dest.V(0, 0)
				{
					// carray: (0) => (9) @ (1)
					for (int i_0 = 0; i_0 <= 9; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out[i_0].dest
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out[0].dest
						// regulate_c_name       : out_dest_V
						// input_type_conversion : (out[i_0].dest).to_string(2).c_str()
						if (&(out[0].dest) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> out_dest_V_tmp_mem;
							out_dest_V_tmp_mem = (out[i_0].dest).to_string(2).c_str();
							out_dest_V_tvin_wrapc_buffer[hls_map_index].range(0, 0) = out_dest_V_tmp_mem.range(0, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 10; i++)
		{
			sprintf(tvin_out_dest_V, "%s\n", (out_dest_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_out_dest_V, tvin_out_dest_V);
		}

		tcl_file.set_num(10, &tcl_file.out_dest_V_depth);
		sprintf(tvin_out_dest_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_out_dest_V, tvin_out_dest_V);

		// release memory allocation
		delete [] out_dest_V_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		LSTM_Top(in, out);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_out_data_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_out_data_V, tvout_out_data_V);

		sc_bv<32>* out_data_V_tvout_wrapc_buffer = new sc_bv<32>[10];

		// RTL Name: out_data_V
		{
			// bitslice(31, 0)
			{
				int hls_map_index = 0;
				// celement: out.data.V(31, 0)
				{
					// carray: (0) => (9) @ (1)
					for (int i_0 = 0; i_0 <= 9; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out[i_0].data
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out[0].data
						// regulate_c_name       : out_data_V
						// input_type_conversion : (out[i_0].data).to_string(2).c_str()
						if (&(out[0].data) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> out_data_V_tmp_mem;
							out_data_V_tmp_mem = (out[i_0].data).to_string(2).c_str();
							out_data_V_tvout_wrapc_buffer[hls_map_index].range(31, 0) = out_data_V_tmp_mem.range(31, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 10; i++)
		{
			sprintf(tvout_out_data_V, "%s\n", (out_data_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_out_data_V, tvout_out_data_V);
		}

		tcl_file.set_num(10, &tcl_file.out_data_V_depth);
		sprintf(tvout_out_data_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_out_data_V, tvout_out_data_V);

		// release memory allocation
		delete [] out_data_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_out_keep_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_out_keep_V, tvout_out_keep_V);

		sc_bv<4>* out_keep_V_tvout_wrapc_buffer = new sc_bv<4>[10];

		// RTL Name: out_keep_V
		{
			// bitslice(3, 0)
			{
				int hls_map_index = 0;
				// celement: out.keep.V(3, 0)
				{
					// carray: (0) => (9) @ (1)
					for (int i_0 = 0; i_0 <= 9; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out[i_0].keep
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out[0].keep
						// regulate_c_name       : out_keep_V
						// input_type_conversion : (out[i_0].keep).to_string(2).c_str()
						if (&(out[0].keep) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<4> out_keep_V_tmp_mem;
							out_keep_V_tmp_mem = (out[i_0].keep).to_string(2).c_str();
							out_keep_V_tvout_wrapc_buffer[hls_map_index].range(3, 0) = out_keep_V_tmp_mem.range(3, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 10; i++)
		{
			sprintf(tvout_out_keep_V, "%s\n", (out_keep_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_out_keep_V, tvout_out_keep_V);
		}

		tcl_file.set_num(10, &tcl_file.out_keep_V_depth);
		sprintf(tvout_out_keep_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_out_keep_V, tvout_out_keep_V);

		// release memory allocation
		delete [] out_keep_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_out_strb_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_out_strb_V, tvout_out_strb_V);

		sc_bv<4>* out_strb_V_tvout_wrapc_buffer = new sc_bv<4>[10];

		// RTL Name: out_strb_V
		{
			// bitslice(3, 0)
			{
				int hls_map_index = 0;
				// celement: out.strb.V(3, 0)
				{
					// carray: (0) => (9) @ (1)
					for (int i_0 = 0; i_0 <= 9; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out[i_0].strb
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out[0].strb
						// regulate_c_name       : out_strb_V
						// input_type_conversion : (out[i_0].strb).to_string(2).c_str()
						if (&(out[0].strb) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<4> out_strb_V_tmp_mem;
							out_strb_V_tmp_mem = (out[i_0].strb).to_string(2).c_str();
							out_strb_V_tvout_wrapc_buffer[hls_map_index].range(3, 0) = out_strb_V_tmp_mem.range(3, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 10; i++)
		{
			sprintf(tvout_out_strb_V, "%s\n", (out_strb_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_out_strb_V, tvout_out_strb_V);
		}

		tcl_file.set_num(10, &tcl_file.out_strb_V_depth);
		sprintf(tvout_out_strb_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_out_strb_V, tvout_out_strb_V);

		// release memory allocation
		delete [] out_strb_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_out_user_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_out_user_V, tvout_out_user_V);

		sc_bv<1>* out_user_V_tvout_wrapc_buffer = new sc_bv<1>[10];

		// RTL Name: out_user_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: out.user.V(0, 0)
				{
					// carray: (0) => (9) @ (1)
					for (int i_0 = 0; i_0 <= 9; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out[i_0].user
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out[0].user
						// regulate_c_name       : out_user_V
						// input_type_conversion : (out[i_0].user).to_string(2).c_str()
						if (&(out[0].user) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> out_user_V_tmp_mem;
							out_user_V_tmp_mem = (out[i_0].user).to_string(2).c_str();
							out_user_V_tvout_wrapc_buffer[hls_map_index].range(0, 0) = out_user_V_tmp_mem.range(0, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 10; i++)
		{
			sprintf(tvout_out_user_V, "%s\n", (out_user_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_out_user_V, tvout_out_user_V);
		}

		tcl_file.set_num(10, &tcl_file.out_user_V_depth);
		sprintf(tvout_out_user_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_out_user_V, tvout_out_user_V);

		// release memory allocation
		delete [] out_user_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_out_last_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_out_last_V, tvout_out_last_V);

		sc_bv<1>* out_last_V_tvout_wrapc_buffer = new sc_bv<1>[10];

		// RTL Name: out_last_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: out.last.V(0, 0)
				{
					// carray: (0) => (9) @ (1)
					for (int i_0 = 0; i_0 <= 9; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out[i_0].last
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out[0].last
						// regulate_c_name       : out_last_V
						// input_type_conversion : (out[i_0].last).to_string(2).c_str()
						if (&(out[0].last) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> out_last_V_tmp_mem;
							out_last_V_tmp_mem = (out[i_0].last).to_string(2).c_str();
							out_last_V_tvout_wrapc_buffer[hls_map_index].range(0, 0) = out_last_V_tmp_mem.range(0, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 10; i++)
		{
			sprintf(tvout_out_last_V, "%s\n", (out_last_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_out_last_V, tvout_out_last_V);
		}

		tcl_file.set_num(10, &tcl_file.out_last_V_depth);
		sprintf(tvout_out_last_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_out_last_V, tvout_out_last_V);

		// release memory allocation
		delete [] out_last_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_out_id_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_out_id_V, tvout_out_id_V);

		sc_bv<1>* out_id_V_tvout_wrapc_buffer = new sc_bv<1>[10];

		// RTL Name: out_id_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: out.id.V(0, 0)
				{
					// carray: (0) => (9) @ (1)
					for (int i_0 = 0; i_0 <= 9; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out[i_0].id
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out[0].id
						// regulate_c_name       : out_id_V
						// input_type_conversion : (out[i_0].id).to_string(2).c_str()
						if (&(out[0].id) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> out_id_V_tmp_mem;
							out_id_V_tmp_mem = (out[i_0].id).to_string(2).c_str();
							out_id_V_tvout_wrapc_buffer[hls_map_index].range(0, 0) = out_id_V_tmp_mem.range(0, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 10; i++)
		{
			sprintf(tvout_out_id_V, "%s\n", (out_id_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_out_id_V, tvout_out_id_V);
		}

		tcl_file.set_num(10, &tcl_file.out_id_V_depth);
		sprintf(tvout_out_id_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_out_id_V, tvout_out_id_V);

		// release memory allocation
		delete [] out_id_V_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_out_dest_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_out_dest_V, tvout_out_dest_V);

		sc_bv<1>* out_dest_V_tvout_wrapc_buffer = new sc_bv<1>[10];

		// RTL Name: out_dest_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: out.dest.V(0, 0)
				{
					// carray: (0) => (9) @ (1)
					for (int i_0 = 0; i_0 <= 9; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : out[i_0].dest
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : out[0].dest
						// regulate_c_name       : out_dest_V
						// input_type_conversion : (out[i_0].dest).to_string(2).c_str()
						if (&(out[0].dest) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> out_dest_V_tmp_mem;
							out_dest_V_tmp_mem = (out[i_0].dest).to_string(2).c_str();
							out_dest_V_tvout_wrapc_buffer[hls_map_index].range(0, 0) = out_dest_V_tmp_mem.range(0, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 10; i++)
		{
			sprintf(tvout_out_dest_V, "%s\n", (out_dest_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_out_dest_V, tvout_out_dest_V);
		}

		tcl_file.set_num(10, &tcl_file.out_dest_V_depth);
		sprintf(tvout_out_dest_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_out_dest_V, tvout_out_dest_V);

		// release memory allocation
		delete [] out_dest_V_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "in_data_V"
		delete [] tvin_in_data_V;
		// release memory allocation: "in_keep_V"
		delete [] tvin_in_keep_V;
		// release memory allocation: "in_strb_V"
		delete [] tvin_in_strb_V;
		// release memory allocation: "in_user_V"
		delete [] tvin_in_user_V;
		// release memory allocation: "in_last_V"
		delete [] tvin_in_last_V;
		// release memory allocation: "in_id_V"
		delete [] tvin_in_id_V;
		// release memory allocation: "in_dest_V"
		delete [] tvin_in_dest_V;
		// release memory allocation: "out_data_V"
		delete [] tvout_out_data_V;
		delete [] tvin_out_data_V;
		// release memory allocation: "out_keep_V"
		delete [] tvout_out_keep_V;
		delete [] tvin_out_keep_V;
		// release memory allocation: "out_strb_V"
		delete [] tvout_out_strb_V;
		delete [] tvin_out_strb_V;
		// release memory allocation: "out_user_V"
		delete [] tvout_out_user_V;
		delete [] tvin_out_user_V;
		// release memory allocation: "out_last_V"
		delete [] tvout_out_last_V;
		delete [] tvin_out_last_V;
		// release memory allocation: "out_id_V"
		delete [] tvout_out_id_V;
		delete [] tvin_out_id_V;
		// release memory allocation: "out_dest_V"
		delete [] tvout_out_dest_V;
		delete [] tvin_out_dest_V;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

