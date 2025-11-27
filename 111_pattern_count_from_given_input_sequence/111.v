module non_overlap_111 (
     input [31:0] I,
	 output [3:0] Y
	 );
	 wire [31:2] r, n;
	 
		assign r[31] = I[31:29] == 3'b111;
		assign r[30] = I[30:28] == 3'b111;
		assign r[29] = I[29:27] == 3'b111;
		assign r[28] = I[28:26] == 3'b111;
		assign r[27] = I[27:25] == 3'b111;
		assign r[26] = I[26:24] == 3'b111;
		assign r[25] = I[25:23] == 3'b111;
		assign r[24] = I[24:22] == 3'b111;
		assign r[23] = I[23:21] == 3'b111;
		assign r[22] = I[22:20] == 3'b111;
		assign r[21] = I[21:19] == 3'b111;
		assign r[20] = I[20:18] == 3'b111;
		assign r[19] = I[19:17] == 3'b111;
		assign r[18] = I[18:16] == 3'b111;
		assign r[17] = I[17:15] == 3'b111;
		assign r[16] = I[16:14] == 3'b111;
		assign r[15] = I[15:13] == 3'b111;
		assign r[14] = I[14:12] == 3'b111;
		assign r[13] = I[13:11] == 3'b111;
		assign r[12] = I[12:10] == 3'b111;
		assign r[11] = I[11:9] == 3'b111;
		assign r[10] = I[10:8] == 3'b111;
		assign r[9] = I[9:7] == 3'b111;
		assign r[8] = I[8:6] == 3'b111;
		assign r[7] = I[7:5] == 3'b111;
		assign r[6] = I[6:4] == 3'b111;
		assign r[5] = I[5:3] == 3'b111;
		assign r[4] = I[4:2] == 3'b111;
		assign r[3] = I[3:1] == 3'b111;
		assign r[2] = I[2:0] == 3'b111;
		
		assign n[31] = r[31];
		assign n[30] = n[31] ? 0 : r[30];
		assign n[29] = (n[31] | n[30]) ? 0 : r[29];
		assign n[28] = (n[30] | n[29]) ? 0 : r[28];
		assign n[27] = (n[29] | n[28]) ? 0 : r[27];
		assign n[26] = (n[28] | n[27]) ? 0 : r[26];
		assign n[25] = (n[27] | n[26]) ? 0 : r[25];
		assign n[24] = (n[26] | n[25]) ? 0 : r[24];
		assign n[23] = (n[25] | n[24]) ? 0 : r[23];
		assign n[22] = (n[24] | n[23]) ? 0 : r[22];
		assign n[21] = (n[23] | n[22]) ? 0 : r[21];
		assign n[20] = (n[22] | n[21]) ? 0 : r[20];
		assign n[19] = (n[21] | n[20]) ? 0 : r[19];
		assign n[18] = (n[20] | n[19]) ? 0 : r[18];
		assign n[17] = (n[19] | n[18]) ? 0 : r[17];
		assign n[16] = (n[18] | n[17]) ? 0 : r[16];
		assign n[15] = (n[17] | n[16]) ? 0 : r[15];
		assign n[14] = (n[16] | n[15]) ? 0 : r[14];
		assign n[13] = (n[15] | n[14]) ? 0 : r[13];
		assign n[12] = (n[14] | n[13]) ? 0 : r[12];
		assign n[11] = (n[13] | n[12]) ? 0 : r[11];
		assign n[10] = (n[12] | n[11]) ? 0 : r[10];
		assign n[9] = (n[11] | n[10]) ? 0 : r[9];
		assign n[8] = (n[10] | n[9]) ? 0 : r[8];
		assign n[7] = (n[9] | n[8]) ? 0 : r[7];
		assign n[6] = (n[8] | n[7]) ? 0 : r[6];
		assign n[5] = (n[7] | n[6]) ? 0 : r[5];
		assign n[4] = (n[6] | n[5]) ? 0 : r[4];
		assign n[3] = (n[5] | n[4]) ? 0 : r[3];
		assign n[2] = (n[4] | n[3]) ? 0 : r[2];

		
		assign Y = n[31] + 
		n[30] + 
		n[29] + 
		n[28] + 
		n[27] + 
		n[26] + 
		n[25] + 
		n[24] + 
		n[23] + 
		n[22] + 
		n[21] + 
		n[20] + 
		n[19] + 
		n[18] + 
		n[17] + 
		n[16] + 
		n[15] + 
		n[14] + 
		n[13] + 
		n[12] + 
		n[11] + 
		n[10] + 
		n[9] + 
		n[8] + 
		n[7] + 
		n[6] + 
		n[5] + 
		n[4] + 
		n[3] + 
		n[2];
	
	endmodule