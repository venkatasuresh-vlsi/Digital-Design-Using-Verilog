module OL_111_101 (
    input clk, rst, i,
	output reg y
	);
	enum {None, s1, s11, s111, s10, s101} state;
	
	always @(posedge clk or posedge rst) begin
	     if (rst) state <= None;
		 else begin
		     case (state)
			     None : state <= i ? s1 : None; 
				 s1 : state <= i ? s11 : s10;
				 s11 : state <= i ? s111 : s10;
				 s111 : state <= i ? s111 : s10;
				 s10 : state <= i ? s101 : None;
				 s101 : state <= i ? s11 : s10;
				endcase 
			end 
		end 
	 always @(*)  y = (state == s111 || state == s101);
	
	endmodule