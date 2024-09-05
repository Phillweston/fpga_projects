//“1”码控制发0度相位，“0”码控制发180度相位
module psk_code(
                clk,
                m_ser_code_in,
                dds_sin_data_in2,//10k正弦波
                dds_sin_data_in3,//10k正弦波,相位相差180
                psk_code_sin_out//
                );
input       clk;
input       m_ser_code_in;
input  [9:0]dds_sin_data_in2;
input  [9:0]dds_sin_data_in3;

output [9:0]psk_code_sin_out;

wire        clk;
wire        m_ser_code_in;
wire   [9:0]dds_sin_data_in2;
wire   [9:0]dds_sin_data_in3;

assign psk_code_sin_out=(m_ser_code_in)? dds_sin_data_in2:dds_sin_data_in3;
endmodule 