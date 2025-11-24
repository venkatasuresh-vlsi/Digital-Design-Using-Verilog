module mod99_down_counter_structural (
     input clk, rst,
	 output reg [6:0] cnt
	 );
	 wire [6:0] b1, b3;
	 
     sub inst_1 (cnt, 7'd1, b1);
	 comparator inst_2 (cnt, 1'b0, b2);
	 mux7 inst_3 (b1, 7'd99, b2, b3);
	 
	 always @(posedge clk or posedge rst) begin
	     if (rst) 
		     cnt <= 7'd99;
		 else 
		     cnt <= b3;
		end
	endmodule