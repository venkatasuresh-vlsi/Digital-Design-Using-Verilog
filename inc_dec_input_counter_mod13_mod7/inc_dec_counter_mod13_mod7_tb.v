module tb;
     reg clk, rst;
	 reg inc, dec;
	 wire [3:0] cnt;
	 
	 inc_dec_counter_mod13_mod7 Suresh (clk, rst, inc, dec, cnt);
	 
	 initial begin
	     rst = 1; inc = 0; dec = 0; #5; rst = 0;
		 
		 @(negedge clk); inc <= 1; @(negedge clk); inc <= 0;@(posedge clk); @(posedge clk);
		 @(negedge clk); inc <= 1; @(negedge clk); inc <= 0;@(posedge clk); @(posedge clk);
		 @(negedge clk); inc <= 1; @(negedge clk); inc <= 0;@(posedge clk); @(posedge clk);
		 @(negedge clk); inc <= 1; @(negedge clk); inc <= 0;@(posedge clk); @(posedge clk);
		 @(negedge clk); inc <= 1; @(negedge clk); inc <= 0;@(posedge clk); @(posedge clk);
		 @(negedge clk); inc <= 1; @(negedge clk); inc <= 0;@(posedge clk); @(posedge clk);
		 @(negedge clk); inc <= 1; @(negedge clk); inc <= 0;@(posedge clk); @(posedge clk);
		 @(negedge clk); inc <= 1; @(negedge clk); inc <= 0;@(posedge clk); @(posedge clk);
		 @(negedge clk); inc <= 1; @(negedge clk); inc <= 0;@(posedge clk); @(posedge clk);
		 @(negedge clk); inc <= 1; @(negedge clk); inc <= 0;@(posedge clk); @(posedge clk);
		 
		 @(negedge clk); dec <= 1; @(negedge clk); dec <= 0;@(posedge clk); @(posedge clk);
		 @(negedge clk); dec <= 1; @(negedge clk); dec <= 0;@(posedge clk); @(posedge clk);
		 @(negedge clk); dec <= 1; @(negedge clk); dec <= 0;@(posedge clk); @(posedge clk);
		 @(negedge clk); dec <= 1; @(negedge clk); dec <= 0;@(posedge clk); @(posedge clk);
		 @(negedge clk); dec <= 1; @(negedge clk); dec <= 0;@(posedge clk); @(posedge clk);
		 @(negedge clk); dec <= 1; @(negedge clk); dec <= 0;@(posedge clk); @(posedge clk);
		 @(negedge clk); dec <= 1; @(negedge clk); dec <= 0;@(posedge clk); @(posedge clk);
		 
		 @(negedge clk); inc <= 1; @(negedge clk); inc <= 0;@(posedge clk); @(posedge clk);
		 @(negedge clk); inc <= 1; @(negedge clk); inc <= 0;@(posedge clk); @(posedge clk);
		 
		 @(negedge clk); inc <= 1; dec <= 1; @(negedge clk); inc <= 0; dec <= 0;@(posedge clk); @(posedge clk);
		 $finish;
		end
	 always #10 clk = !clk;
	 initial clk = 0;
	
	endmodule
		 