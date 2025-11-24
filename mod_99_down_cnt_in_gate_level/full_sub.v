module full_sub (
     input a, b, c,
	 output diff, barrow
	 );
	 half_sub inst_1 (a, b, d0, b0);
	 half_sub inst_2 (d0, c, diff, b1);
	 half_sub inst_3 (b0, b1, barrow, unused);
	 
	endmodule