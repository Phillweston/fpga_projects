module fsk_code(
                clk,
                m_ser_code_in,
                dds_sin_data_in1,//1kÕıÏÒ²¨
                dds_sin_data_in2,//10kÕıÏÒ²¨
                fsk_code_sin_out
                );
input       clk;
input       m_ser_code_in;
input  [9:0]dds_sin_data_in1;
input  [9:0]dds_sin_data_in2;

output [9:0]fsk_code_sin_out;

wire       clk;
wire       m_ser_code_in;
wire   [9:0]dds_sin_data_in1;
wire   [9:0]dds_sin_data_in2;

assign fsk_code_sin_out=(m_ser_code_in)? dds_sin_data_in2:dds_sin_data_in1;
endmodule 