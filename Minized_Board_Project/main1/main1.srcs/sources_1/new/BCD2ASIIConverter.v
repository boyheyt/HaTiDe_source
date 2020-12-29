`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/29/2020 08:18:36 PM
// Design Name: 
// Module Name: BCD2ASIIConverter
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


module BCD2ASIIConverter(
    input [19:0] InputBcd,
    output reg [8:0] Outputascii
    );
always @ (InputBcd);
begin
reg [8:0] a[4:0]
integer i;
Outputascii = 0; //initialize
for (i = 0; i < 5; i = i+1)
    begin
	   a[i] = [19-4*i:16-4*i] InputBcd;
	   case a[i]
	       4'b0000: Outputascii = 9'b100110000;
	       4'b0001: Outputascii = 9'b100110001;
	       4'b0010: Outputascii = 9'b100110010;
	       4'b0011: Outputascii = 9'b100110011;
           4'b0100: Outputascii = 9'b100110100;
           4'b0101: Outputascii = 9'b100110101;
	       4'b0110: Outputascii = 9'b100110110;
	       4'b0111: Outputascii = 9'b100110111;
	       4'b1000: Outputascii = 9'b100111000;
	       4'b1001: Outputascii = 9'b100111001;
	   default Outputascii = 9'b100110000;
	   endcase
    end
end
endmodule
