module up_down_100 (
     input clk, rst,
	 output reg [6:0] cnt
	 );
	 reg dir;
	  
	 parameter up = 0, down = 1;
	 
	 always @(posedge clk or posedge rst) begin
	     if (rst) 
		     dir <= up;
		 else begin
		     case (dir)
			     up : dir <= (cnt == 98) ? down : up;
				 down : dir <= (cnt == 1) ? up : down;
				endcase
			end
		end
	 always @(posedge clk or posedge rst) begin
	     if (rst)
		     cnt <= 0;
		 else begin
		     if (cnt == 100)
			     cnt <= 99;
			 else begin
			     if (cnt == 0)
				     cnt <= 2;
				 else begin
				     case (dir)
					     up : cnt <= cnt + 2;
						 down : cnt <= cnt - 1;
						endcase
					end
				end
			end 
		end 
	endmodule