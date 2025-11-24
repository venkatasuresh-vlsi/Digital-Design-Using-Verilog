module MMMMM (
     input [7:0] a, b, c, d, e, 
	 output [7:0] max, midH, mid, midL, min
	 );
	 wire [7:0] max1, midH1, midL1, min1, min2;
	 
	 MMMM inst_1 (a, b, c, d, max1, midH1, midL1, min1);
	 MM inst_2 (max1, e, max, min2);
	 MMMM inst_3 (midH1, midL1, min1, min2, midH, mid, midL, min);
	 
	endmodule