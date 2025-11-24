module RCA (
     input [4:0] a, b, 
	 output [4:0] sum
	 );
	 half_adder inst_1 (a[0], b[0], sum[0], c0);
	 full_adder inst_2 (a[1], b[1], c0, sum[1], c1);
	 full_adder inst_3 (a[2], b[2], c1, sum[2], c2);
	 full_adder inst_4 (a[3], b[3], c2, sum[3], c3);
	 full_adder inst_5 (a[4], b[4], c3, sum[4], unused);
	 
	endmodule