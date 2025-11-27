module tb;
     reg clk, rst;
	 wire [2:0] cnt;
	 
	 updown_counter_double4_with_three_states Suresh (clk, rst, cnt);
	 
	 initial clk = 0;
	 always #5 clk = !clk;
	 
	 initial begin
	      rst = 1;
		  #10;
		  rst = 0;
		  #1000;
		  $finish;
		end
	endmodule