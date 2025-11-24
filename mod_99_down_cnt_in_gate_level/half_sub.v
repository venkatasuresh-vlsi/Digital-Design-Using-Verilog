module half_sub (
     input a, b, 
	 output diff, barrow
	 );
	 xor G1 (diff, a, b);
	 not G2 (a_bar, a);
	 and G3 (barrow, a_bar, b);
	 
	endmodule