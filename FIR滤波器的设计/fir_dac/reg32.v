// *******************************************************************************
// 32Î»¼Ä´æÆ÷Ä£¿é
// *******************************************************************************/
module reg32(clk,reset_n,data_in,data_out);
input  clk;
input  reset_n;
input  [31:0] data_in;
output [31:0] data_out;

wire clk;
wire reset_n;
wire [31:0] data_in;
reg [31:0] data_out;

always @(posedge clk or negedge reset_n)
 begin
  if(!reset_n)
   data_out<=32'h0000_0000;
 else
   data_out<=data_in;
  end 
endmodule
