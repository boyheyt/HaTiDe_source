// Author: Adam Nunez, adam.a.nunez@gmail.com
// Copyright (C) 2015  Adam Nunez
// 
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

module KeyPadDecoder(
input [3:0] In, 
output reg [8:0] Out
);
   
// This module accepts as input a four bit value that describes
// the row col vector and decodes into the value at that location
// for a 4 by 4 matrix keypad with layout ...   
// 1 2 3 A
// 4 5 6 B
// 7 8 9 C
// * 0 # D				
   
always @(In) begin
    case (In)
		4'b0000: Out = 9'b101001000;//9'b100110001;
		4'b0001: Out = 9'b100110010;
		4'b0010: Out = 9'b100110011;
		4'b0011: Out = 9'b100101011;
		4'b0100: Out = 9'b100110100;
		4'b0101: Out = 9'b100110101;
		4'b0110: Out = 9'b100110110;
		4'b0111: Out = 9'b100101101;
		4'b1000: Out = 9'b100110111;
		4'b1001: Out = 9'b100111000;
		4'b1010: Out = 9'b100111001;
		4'b1011: Out = 9'b101111000;
		4'b1100: Out = 9'b100101110;
		4'b1101: Out = 9'b100110000;
		4'b1110: Out = 9'b100111101;
		4'b1111: Out = 9'b111111101;
     default: Out = 9'b000000000;
     endcase
end

endmodule