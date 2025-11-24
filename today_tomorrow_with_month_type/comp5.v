module comp5 (
     input [4:0] a, b, 
	 output eq
	 );
	 comp inst_1 (a[0], b[0], eq0);
	 comp inst_2 (a[1], b[1], eq1);
	 comp inst_3 (a[2], b[2], eq2);
	 comp inst_4 (a[3], b[3], eq3);
	 comp inst_5 (a[4], b[4], eq4);
	 
	 and G1 (eq, eq0, eq1, eq2, eq3, eq4);
	 
	endmodule