module sub (
     input [6:0] a, b, 
	 output [6:0] diff
	 );

	 half_sub inst_1 (a[0], b[0], diff[0], b0);	 	 
     full_sub inst_2 (a[1], b[1], b0, diff[1], b1);
     full_sub inst_3 (a[2], b[2], b1, diff[2], b2);
     full_sub inst_4 (a[3], b[3], b2, diff[3], b3);
     full_sub inst_5 (a[4], b[4], b3, diff[4], b4);
     full_sub inst_6 (a[5], b[5], b4, diff[5], b5);
     full_sub inst_7 (a[6], b[6], b5, diff[6], unused);
	 
	 endmodule