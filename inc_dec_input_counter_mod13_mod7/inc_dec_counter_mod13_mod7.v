module inc_dec_counter_mod13_mod7 (
     input clk, rst,
	 input inc, dec,
	 output reg [3:0] cnt
	 );
	 `ifdef behavioral
	 always @(posedge clk or posedge rst) begin
	     if (rst) cnt <= 10;
		 else begin
		     case ({inc, dec})
			     2'b10 : cnt <= cnt == 13 ? 10 : cnt + 1;
				 2'b01 : cnt <= cnt == 7 ? 10 : cnt - 1;
				 default : cnt <= cnt;
				endcase 
			end 
		end
	 `endif
	 
	 `ifdef dataflow
	     wire [3:0] b1;
		 wire [3:0] b3;
		 wire [3:0] b5;
		 wire [3:0] b2;
		 wire [3:0] b6;
		 wire [3:0] b8;
		 wire [3:0] b0;
		 wire b4, b7, b9;
		 assign b1 = inc ? b3 : b2;
		 assign b2 = dec ? b6 : cnt;
		 assign b3 = b4 ? 10 : b5;
		 assign b4 = cnt == 13;
		 assign b5 = cnt + 1;
		 assign b6 = b7 ? 10 : b8;
		 assign b7 = cnt == 7;
		 assign b8 = cnt - 1;
		 assign b9 = inc & dec;
		 assign b0 = b9 ? cnt : b1;
		 
	 always @(posedge clk or posedge rst) begin
	     if (rst) cnt <= 10;
		 else cnt <= b0;
		end
	 `endif
	 
	endmodule