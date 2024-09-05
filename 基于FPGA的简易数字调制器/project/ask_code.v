module ask_code(
                clk,
                m_ser_code_in,
                dds_sin_data_in,//10kÕıÏÒ²¨
                ask_code_sin_out
                );
input       clk;
input       m_ser_code_in;
input  [9:0]dds_sin_data_in;

output [9:0]ask_code_sin_out;

wire       clk;
wire       m_ser_code_in;
wire  [9:0]dds_sin_data_in;

assign ask_code_sin_out=(m_ser_code_in)? dds_sin_data_in:10'd0;
endmodule 