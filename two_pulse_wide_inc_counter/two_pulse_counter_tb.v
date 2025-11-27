module tb;
     reg clk, rst, inc;
	 wire [3:0] cnt;
	 
	 reg incNBA;
	 always @* incNBA <= inc;
	 
	 two_pulse_counter Suresh (clk, rst, incNBA, cnt);
	 
	 initial clk = 0;
	 always #5 clk = !clk;
	 
	 initial begin
	     rst = 1; inc = 0;
		 #5;
		 rst = 0;
		 repeat(30) begin
		 @(posedge clk); inc = 1;
		 @(posedge clk);
		 @(posedge clk); inc = 0;
		 end
		 @(posedge clk); inc = 1;
		 @(posedge clk);
		 @(posedge clk);
		 @(posedge clk);
		 @(posedge clk);
		 @(posedge clk);
		 @(posedge clk); inc = 0;  @(posedge clk);
		 $finish;
		
		end 
	endmodule
		 