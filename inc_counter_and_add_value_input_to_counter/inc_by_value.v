module inc_by_value (
     input clk, rst, inc, 
	 input [2:0] val,
	 output reg [7:0] cnt
	 );
	 always @(posedge clk or posedge rst) begin
	     if (rst) cnt <= 0;
		 else cnt <= inc ? cnt + val : cnt;
		end
	 
	endmodule
			 