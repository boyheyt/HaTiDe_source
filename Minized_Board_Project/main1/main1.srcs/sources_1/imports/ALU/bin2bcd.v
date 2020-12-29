module Bin2BCD(bin, bcd, en);
//input ports and their sizes
    input [15:0] bin;
	input en;
    //output ports and, their size
    output [19:0] bcd;
    //Internal variables
    reg [19:0] bcd_tmp; 
    reg [3:0] i;   
    assign bcd = bcd_tmp; 
     //Always block - implement the Double Dabble algorithm
     always @(bin)
        begin
            bcd_tmp = 0; //initialize bcd to zero.
            for (i = 0; i < 15; i = i+1) //run for 16 iterations
            begin
                bcd_tmp = {bcd_tmp[18:0],bin[15-i]}; //concatenation
                    
                //if a hex digit of 'bcd' is more than 4, add 3 to it.  
                if(i < 15 && bcd_tmp[3:0] > 4) 
                    bcd_tmp[3:0] = bcd_tmp[3:0] + 3;
                if(i < 15 && bcd_tmp[7:4] > 4)
                    bcd_tmp[7:4] = bcd_tmp[7:4] + 3;
                if(i < 15 && bcd_tmp[11:8] > 4)
                    bcd_tmp[11:8] = bcd_tmp[11:8] + 3;
				if(i < 15 && bcd_tmp[15:12] > 4)
                    bcd_tmp[15:12] = bcd_tmp[15:12] + 3;  
				if(i < 15 && bcd_tmp[19:16] > 4)
                    bcd_tmp[19:16] = bcd_tmp[19:16] + 3;  		
            end
        end     
              
endmodule

 
