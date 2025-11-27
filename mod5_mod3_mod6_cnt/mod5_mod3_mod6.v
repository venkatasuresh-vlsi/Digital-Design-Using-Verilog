module mod5_mod3_mod6 (
     input clk, rst,
	 output reg [2:0] cnt 
	 );
	 reg [1:0] state;
	 
	 parameter mod5 = 2'd0, mod3 = 2'd1, mod6 = 2'd2;
	 
	 always @(posedge clk or posedge rst) begin
	     if (rst)
		     state <= mod5;
		 else begin
		     case (state)
			     mod5 : state <= (cnt == 4) ? mod3 : mod5;				 
			     mod3 : state <= (cnt == 2) ? mod6 : mod3;				 
			     mod6 : state <= (cnt == 5) ? mod5 : mod6;				 
				endcase
			end
	    end 
	 always @(posedge clk or posedge rst) begin
	     if (rst)
		     cnt <= 0;
		 else begin
		     case (state)
			     mod5 : cnt <= (cnt == 4) ? 0 : cnt + 1;
			     mod3 : cnt <= (cnt == 2) ? 0 : cnt + 1;
			     mod6 : cnt <= (cnt == 5) ? 0 : cnt + 1;
				endcase
			end
		end
		
	endmodule