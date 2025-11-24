module MMMM (
     input [7:0] a, b, c, d,
	 output [7:0] max, midH, midL, min
	 );
	 wire [7:0] max1, mid1, min1, min2;
	 
	 MMM inst_1 (a, b, c, max1, mid1, min1);
	 MM inst_2 (max1, d, max, min2);
	 MMM inst_3 (mid1, min1, min2, midH, midL, min);
	 
	endmodule