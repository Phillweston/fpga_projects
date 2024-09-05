// Copyright (C) 1991-2009 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// *****************************************************************************
// This file contains a Verilog test bench template that is freely editable to  
// suit user's needs .Comments are provided in each section to help the user    
// fill out necessary details.                                                  
// *****************************************************************************
// Generated on "05/10/2013 17:34:23"
                                                                                
// Verilog Test Bench template for design : DDS_top
// 
// Simulation tool : ModelSim (Verilog)
// 

`timescale 1 ns/ 1 ps
module DDS_top_vlg_tst();
// constants                                           
// general purpose registers
// test vector input registers
reg clk;
reg reset;
// wires                                               
wire [9:0] ask_code_sin_out;
wire dpsk_code_out;
wire [9:0] dpsk_code_sin_out;
wire [9:0] fsk_code_sin_out;
wire m_ser_out;
wire [9:0] psk_code_sin_out;

// assign statements (if any)                          
DDS_top i1 (
// port map - connection between master ports and signals/registers   
	.ask_code_sin_out(ask_code_sin_out),
	.clk(clk),
	.dpsk_code_out(dpsk_code_out),
	.dpsk_code_sin_out(dpsk_code_sin_out),
	.fsk_code_sin_out(fsk_code_sin_out),
	.m_ser_out(m_ser_out),
	.psk_code_sin_out(psk_code_sin_out),
	.reset(reset)
);
initial                                                
begin                                                  
// code that executes only once                        
// insert code here --> begin                          
    clk<=1'b0;
    reset<=1'b0;                                                   
// --> end                                             
$display("Running testbench");                       
end                                                    
always                                                 
// optional sensitivity list                           
// @(event1 or event2 or .... eventn)                  
begin                                                  
// code executes for every event on sensitivity list   
// insert code here --> begin                          
   #1     clk<=~clk;
          reset<=1'b1;                                                                                       
// --> end                                             
end                                                    
endmodule

