module mul8 (
     input [7:0] a, b, 
	 output [16:0] y
	 );
     assign p00 = a[0] & b[0];
	 assign p10 = a[1] & b[0];
	 assign p20 = a[2] & b[0];
	 assign p30 = a[3] & b[0];
	 assign p40 = a[4] & b[0];
	 assign p50 = a[5] & b[0];
	 assign p60 = a[6] & b[0];
	 assign p70 = a[7] & b[0];
	 
	 assign p01 = a[0] & b[1];
	 assign p11 = a[1] & b[1];
	 assign p21 = a[2] & b[1];
	 assign p31 = a[3] & b[1];
	 assign p41 = a[4] & b[1];
	 assign p51 = a[5] & b[1];
	 assign p61 = a[6] & b[1];
	 assign p71 = a[7] & b[1];
	 
	 assign p02 = a[0] & b[2];
	 assign p12 = a[1] & b[2];
	 assign p22 = a[2] & b[2];
	 assign p32 = a[3] & b[2];
	 assign p42 = a[4] & b[2];
	 assign p52 = a[5] & b[2];
	 assign p62 = a[6] & b[2];
	 assign p72 = a[7] & b[2];
	 
	 assign p03 = a[0] & b[3];
	 assign p13 = a[1] & b[3];
	 assign p23 = a[2] & b[3];
	 assign p33 = a[3] & b[3];
	 assign p43 = a[4] & b[3];
	 assign p53 = a[5] & b[3];
	 assign p63 = a[6] & b[3];
	 assign p73 = a[7] & b[3];
	 
	 assign p04 = a[0] & b[4];
	 assign p14 = a[1] & b[4];
	 assign p24 = a[2] & b[4];
	 assign p34 = a[3] & b[4];
	 assign p44 = a[4] & b[4];
	 assign p54 = a[5] & b[4];
	 assign p64 = a[6] & b[4];
	 assign p74 = a[7] & b[4];
	 
	 assign p05 = a[0] & b[5];
	 assign p15 = a[1] & b[5];
	 assign p25 = a[2] & b[5];
	 assign p35 = a[3] & b[5];
	 assign p45 = a[4] & b[5];
	 assign p55 = a[5] & b[5];
	 assign p65 = a[6] & b[5];
	 assign p75 = a[7] & b[5];
	 
	 assign p06 = a[0] & b[6];
	 assign p16 = a[1] & b[6];
	 assign p26 = a[2] & b[6];
	 assign p36 = a[3] & b[6];
	 assign p46 = a[4] & b[6];
	 assign p56 = a[5] & b[6];
	 assign p66 = a[6] & b[6];
	 assign p76 = a[7] & b[6];
	 
	 assign p07 = a[0] & b[7];
	 assign p17 = a[1] & b[7];
	 assign p27 = a[2] & b[7];
	 assign p37 = a[3] & b[7];
	 assign p47 = a[4] & b[7];
	 assign p57 = a[5] & b[7];
	 assign p67 = a[6] & b[7];
	 assign p77 = a[7] & b[7];
	 
	 assign y[0] = p00;
	 
	 half_adder inst_1 (p10, p01, y[1], c1);
	 XTRA_full_adder inst_2 (p20, p11, p02, c1, y[2], c2, c3);
	 FIVE inst_3 (p30, p21, p12, p03, c2, y[3], c4, c5);
	 SEVEN inst_4 (p40, p31, p22, p13, p04, c3, c4, y[4], c6, c7);
	 EIGHT inst_5 (p50, p41, p32, p23, p14, p05, c5, c6, y[5], c8, c9, c10);
	 NINE inst_6 (p60, p51, p42, p33, p24, p15, p06, c7, c8, y[6], c11, c12, c13);
	 TEN inst_7 (p70, p61, p52, p43, p34, p25, p16, p07, c9, c11, y[7], c14, c15, c16);
	 TEN inst_8 (p71, p62, p53, p44, p35, p26, p17, c10, c12, c14, y[8], c17, c18, c19);
	 NINE inst_9 (p72, p63, p54, p45, p36, p27, c13, c15, c17, y[9], c20, c21, c22);
	 EIGHT inst_10 (p73, p64, p55, p46, p37, c16, c18, c20, y[10], c23, c24, c25);
	 SEVEN inst_11 (p74, p65, p56, p47, c19, c21, c23, y[11], c26, c27);
	 SIX inst_12 (p75, p66, p57, c22, c24, c26, y[12], c28, c29);
	 FIVE inst_13 (p76, p67, c25, c27, c28, y[13], c30, c31);	 
	 full_adder inst_14 (p77, c29, c30, y[14], c32);	 
	 half_adder inst_15 (c31, c32, y[15], y[16]);
	 
	endmodule
	 