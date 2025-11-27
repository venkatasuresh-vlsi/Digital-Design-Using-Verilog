module updown_counter_double4_with_three_states (
     input clk, rst,
	 output reg [2:0] cnt
	 );
	 `ifdef VERILOG
	 reg [1:0] state;
	 
	 parameter up = 2'b00, 
	           f4 = 2'b01,  
			   down = 2'b10; 
	 `endif
	 
	 `ifdef SV
	     enum {up, f4, down} state;
	 `endif
	 
	 always @(posedge clk or posedge rst) begin
	     if (rst) state <= up;
		 else begin
		     case (state)
			     up : if (cnt == 3) state <= f4;
				      else state <= cnt == 6 ? down : up;
				 f4 : state <= up;
				 down : state <= cnt == 1 ? up : down;
				endcase 
			end
		end
	 always @(posedge clk or posedge rst) begin
	     if (rst) cnt <= 0;
		 else begin
		     case (state) 
			     up : cnt <= cnt + 1;
				 f4 : cnt <= 4;
				 down : cnt <= cnt - 1;
				endcase 
			end 
		end
	
	endmodule