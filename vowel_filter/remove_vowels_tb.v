module tb;
     reg  [7:0] i1,i2,i3,i4,i5,i6,i7,i8;
     wire [7:0] y1,y2,y3,y4,y5,y6,y7,y8;
	 
	 `include "capital_letters.txt"
	 
	 hw35 Suresh(i1, i2, i3, i4, i5, i6, i7, i8, y1, y2, y3, y4, y5, y6, y7, y8);
	 
	 initial begin
	     repeat (30) begin
			 i8 = $urandom_range(A, Z);
			 i7 = $urandom_range(A, Z);
			 i6 = $urandom_range(A, Z);
			 i5 = $urandom_range(A, Z);
			 i4 = $urandom_range(A, Z);
			 i3 = $urandom_range(A, Z);
			 i2 = $urandom_range(A, Z);
			 i1 = $urandom_range(A, Z);
			 #1;
			 $display("%s  %s  %s  %s  %s  %s  %s  %s     %s  %s  %s  %s  %s  %s  %s  %s",
			         i1, i2, i3, i4, i5, i6, i7, i8, y1, y2, y3, y4, y5, y6, y7, y8);
			end
			 i8 = S;
			 i7 = A;
			 i6 = V;
			 i5 = I;
			 i4 = N;
			 i3 = I;
			 i2 = R;
			 i1 = S;
			  #1;
			 $display("%s  %s  %s  %s  %s  %s  %s  %s     %s  %s  %s  %s  %s  %s  %s  %s",
			         i1, i2, i3, i4, i5, i6, i7, i8, y1, y2, y3, y4, y5, y6, y7, y8);
		end
	endmodule