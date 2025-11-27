module  piso_br_2 (
     input clk,rst,start,
	 input [7:0] din,
	 output reg dout
	 );
	 reg [1:0] cnt1;
	 reg [3:0] cnt;
	 
	 always @(posedge clk or posedge rst) begin
	     if (rst) cnt1 <= 0;
		 else if (cnt1 == 0) cnt1 <= start ? 1 : 0;
		      else cnt1 <= cnt1 == 2 ? 1 : cnt1 + 1; 
			
		 if (cnt == 0 && cnt1 == 2) cnt1 <= 0;
		end
	
	 always @(posedge  clk or posedge rst) begin
	     if (rst) cnt <= 8;
		 else begin
		     if (cnt == 8) cnt <= start ? 7 : 8;
			 else          cnt <= cnt == 0 && cnt1 == 2 ? 8 : cnt1 == 2 ? cnt - 1 : cnt;
			end
		end
	 
	  always @* begin
	     case(cnt)
		     8 : dout = 1'bx;
			 default : dout = din[cnt];
			endcase
		end
	
	endmodule
