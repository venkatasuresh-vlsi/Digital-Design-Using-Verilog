module tb; 
     reg clk, rst, wr, rd;
	 reg [15:0] din, dinNBA;
	 wire [15:0] dout;
	 wire [3:0] wrptr, rdptr;
	 reg wrNBA, rdNBA;
	 
	 always @* wrNBA <= wr;
	 always @* rdNBA <= rd;
	 always @* dinNBA <= din;
	  
	 fifo Suresh (clk, rst, wrNBA, rdNBA, dinNBA, dout, wrptr, rdptr);
	 
	 initial clk = 0;
	 always #5 clk = !clk;
	 
	 initial begin
	     rst = 1; wr = 0; rd = 0; wrNBA = 0; rdNBA = 0;
		 #2 rst = 0;
		end
	 initial begin
	     repeat (5) @(posedge clk);
		 repeat (18) begin
		     @(posedge clk); wr = 1; din = $random;
			 @(posedge clk); wr = 0;
			 repeat ($urandom_range(3, 10)) @(posedge clk);
			end 
		 repeat (18) begin
		     @(posedge clk); rd = 1;
		     @(posedge clk); rd = 0;
			 repeat ($urandom_range(3, 10)) @(posedge clk);
			end
		 $finish;
		end
	endmodule