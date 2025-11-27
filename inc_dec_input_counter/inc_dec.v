module inc_dec_counter (
     input clk, rst,
	 input inc, dec,
	 output reg [3:0] cnt
	 );
	 
	 always @(posedge clk or posedge rst) begin
	     if (rst) cnt <= 0;
		 else begin
		     case ({inc, dec})
			     2'b10 : cnt <= cnt + 1;
				 2'b01 : cnt <= cnt - 1;
				 default : cnt <= cnt;
				endcase
			end
		end
	endmodule