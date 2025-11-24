module XTRA_full_adder (
     input a, b, c, d,
	 output sum, cout0, cout1
	 );
	 wire s0, c0, c1;
	 
	 full_adder inst_1 (a, b, c, s0, c0);
	 half_adder inst_2 (s0, d, sum, c1);
	 half_adder inst_3 (c0, c1, cout0, cout1);
	 
	endmodule