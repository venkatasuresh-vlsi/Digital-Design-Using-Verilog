module mod99_down_counter (
     input clk, rst,
	 output reg [6:0] cnt
	 );
	 wire [6:0] b1, b3;
	 
	 assign b1 = cnt - 1;
	 assign b2 = (cnt == 0);
	 assign b3 = b2 ? 7'd99 : b1;
	 
	 always @(posedge clk or posedge rst) begin
	     if (rst) 
		     cnt <= 7'd99;
		 else 
		     cnt <= b3;
		end
	endmodule