module colour (
     input clk, rst,
	 input [6:0] letter,
	 output reg HIT
	 );
	 
	 enum {None, sc, so1, sl, so2, su, sr} state;
	 
	 
	 `include "ascii.txt"
	 
	 always @(posedge clk or posedge rst) begin
	     if (rst) state <= None;
		 else begin
		     case (state)
			     None : state <= letter == C ? sc : None;
				 sc : begin 
				     case (letter)
					     C : state <= sc;
						 O : state <= so1;
						 default : state <= None;
						endcase
					end
				 so1 : begin
				     case (letter)
					     C : state <= sc;
						 L : state <= sl; 
						 default : state <= None;
                        endcase
					end
				 sl : begin 
				     case (letter) 
					     C : state <= sc;
						 O : state <= so2;
						 default : state <= None;
						endcase 
					end
				 so2 : begin 
				     case (letter)
					     C : state <= sc;
						 U : state <= su;
						 R : state <= sr;
						 default : state <= None;
						endcase
					end
				 su : begin 
				     case (letter)
					     C : state <= sc;
						 R : state <= sr;
						 default : state <= None;
						endcase 
					end
				 sr : begin
				     case (letter) 
					     C : state <= sc;
						 default : state <= None;
						endcase 
					end
				endcase 
			end 
		end 
		
	 assign HIT = state == sr;
	 
	endmodule
