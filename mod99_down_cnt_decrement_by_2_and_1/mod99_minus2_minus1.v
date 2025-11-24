module mod99_minus2_minus1 (
     input clk, rst,
	 output reg [6:0] cnt
	 );
	 wire [6:0] b1, b2, b5, b6;
	 
	 assign b1 = cnt - 2;
	 assign b2 = cnt - 1;
	 assign b3 = (cnt < 7'd51);
	 assign b4 = (cnt == 0);
	 assign b5 = b3 ? b2 : b1;
	 assign b6 = b4 ? 7'd98 : b5;
	 
	 always @(posedge clk or posedge rst) begin
	     if (rst)
		     cnt <= 7'd98;
		 else 
		     cnt <= b6;
		end
	endmodule