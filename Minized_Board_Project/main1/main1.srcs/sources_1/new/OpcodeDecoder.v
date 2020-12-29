`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/29/2020 08:13:00 PM
// Design Name: 
// Module Name: OpcodeDecoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module OpcodeDecoder(
    input [3:0] data_in,
    input [1:0] op_out
    );
  reg [1:0] op;
  assign op_out = op;
  always @(*)
    begin
	case (data_in)
	   4'b0011 : op = 2'b00;
	   4'b0111 : op = 2'b01;
	   4'b1011 : op = 2'b10;
	   4'b1111 : op = 2'b11;
	endcase
	end
endmodule
