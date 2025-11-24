module EIGHT (
     input a, b, c, d, e, f, g, h,
	 output sum, cout0, cout1, cout2
	 );
	 wire s0, c0, c1, c2, c3;
	 
	 SEVEN inst_1 (a, b, c, d, e, f, g, s0, c0, c1);
	 half_adder inst_2 (s0, h, sum, c2);
	 half_adder inst_3 (c0, c2, cout0, c3);
	 half_adder inst_4 (c1, c3, cout1, cout2);
	 
	endmodule