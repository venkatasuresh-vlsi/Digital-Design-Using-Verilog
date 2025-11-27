module two_pulse_counter(
     input clk, rst, inc,
	 output reg [3:0] cnt
	 );
	 
	 reg [2:0] i_cnt;
	 `ifdef behavioral
	 always @(posedge clk or posedge rst) begin
	     if (rst) i_cnt <= 0;
		 else i_cnt <= inc ? i_cnt + 1 : 1;
		end 
	
	 always @(posedge clk or posedge rst) begin
	     if (rst) cnt <= 0;
		 else cnt <= (inc && (i_cnt[0] == 1'b0)) ? cnt + 1 : cnt;
		end
	 `endif
	 `ifdef dataflow 
	     wire [2:0] b1, b2;
		 wire [3:0] b4, b5;
		 wire b3;
		 
		 assign b1 = inc ? b2 : 1;
		 assign b2 = i_cnt + 1;
		 assign b3 = inc & !i_cnt[0];
		 assign b4 = b3 ? b5 : cnt;
		 assign b5 = cnt + 1;
		 
		 always @(posedge clk or posedge rst) begin
		     if (rst) i_cnt <= 0;
			 else i_cnt <= b1;
			end
		 always @(posedge clk or posedge rst) begin
		     if (rst) cnt <= 0;
			 else cnt <= b4;
			end
	 `endif
	endmodule