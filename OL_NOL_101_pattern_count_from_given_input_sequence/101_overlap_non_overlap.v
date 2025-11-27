module overlap_non_overlap_101 (
     input [31:0] I,
	 input overlap,
	 output [3:0] Y
	 );
	 genvar i;
	 
	 wire [31:2] n, r;
	 wire [3:0] s1[32:2];
	 wire [3:0] s2[32:2];
	 wire [3:0] Y1, Y2;
	 
	 for (i = 31; i >= 2; i = i - 1) begin
	      assign n[i] = (I[i:i-2] == 3'b101);
		  assign s1[i] = s1[i+1] + r[i];
	      if (i == 31) assign r[i] = n[i];
		  else if (i == 30) assign r[i] = n[i];
		  else  assign r[i] = r[i + 2] ? 0 : n[i];

	    end
	 assign s1[32] = 0;
	 assign Y1 = s1[2];
	 
	 
	 for (i = 31; i >= 2; i = i - 1) begin
	      assign n[i] = (I[i:i-2] == 3'b101);
		  assign s2[i] = s2[i+1] + n[i];
		end
	 assign s2[32] = 0;
	 assign Y2 = s2[2];
	 
	 
	 assign Y = overlap ? Y2 : Y1;
	 
	endmodule