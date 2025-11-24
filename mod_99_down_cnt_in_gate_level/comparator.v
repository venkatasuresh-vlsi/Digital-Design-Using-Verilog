module comparator (
     input [6:0] a, 
	 input b,
	 output eq
	 );
	 nor G1 (eq, a[0], a[1], a[2], a[3], a[4], a[5], a[6], b);
	 
	endmodule