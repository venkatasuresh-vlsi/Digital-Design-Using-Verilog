module tb;
     reg clk, rst, inc;
	 wire [3:0] cnt;
	 
	 odd_pulse_incrementer Suresh (clk, rst, inc, cnt);
	 
	 initial clk = 0;
	 always #5 clk = !clk;
	 
	 initial begin
	     rst = 1; inc = 0; #10;
		 rst = 0;
		 #10;
		 repeat (40) begin
		     @(posedge clk);
		     @(negedge clk);
			 inc = 1; @(negedge clk); inc = 0;
			 @(posedge clk);
		     @(posedge clk);
			end
		 $finish;
		end
		
	endmodule
			