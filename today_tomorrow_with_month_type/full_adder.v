module full_adder (
     input a, b, c,
	 output sum, cout
	 );
	 half_adder inst_1 (a, b, s0, c0);
	 half_adder inst_2 (s0, c, sum, c1);
	 half_adder inst_3 (c0, c1, cout, unused);
	 
	endmodule