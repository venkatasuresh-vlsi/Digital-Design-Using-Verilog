module today_tomorrow (
     input [4:0] today,
	 input [1:0] month_type,
	 output [4:0] tomorrow,
	 output error
	 );
	 `ifdef structural
		 wire [4:0] b2, b9, b10, b11;
		 
		 RCA inst_1 (today, 5'd1, b2);
		 
		 comp5 inst_2 (today, 5'd30, b1);
		 comp5 inst_3 (today, 5'd31, b3);
		 comp5 inst_4 (today, 5'd28, b4);
		 comp5 inst_5 (today, 5'd0, b5);
		 comp5 inst_6 (today, 5'd29, b6);
		 
		 or G1 (b7, b3, b5);
		 or G2 (b8, b5, b6, b1, b3);
		 
		 mux_4x1 inst_7 (b7, b5, b8, 1'b1, month_type, error);//error
		 
		 mux5 inst_8 (b2, 5'd1, b1, b9);
		 mux5 inst_9 (b2, 5'd1, b3, b10);
		 mux5 inst_10 (b2, 5'd1, b4, b11);
		 
		 mux_4x1_5 inst_11 (b9, b10, b11, 5'd0, month_type, tomorrow);
	 `endif
     
     `ifdef dataflow
	     wire [4:0] b1, b7, b10, b11;
		 
	     assign b1 = today + 1;
		 assign b2 = (today == 5'd30);
		 assign b3 = (today == 5'd31);
		 assign b4 = (today == 5'd28);
		 assign b5 = (today == 5'd0);
		 assign b6 = (today == 5'd29);
		 assign b7 = b2 ? 5'd1 : b1;
		 assign b8 = b3 | b5;
		 assign b9 = b2 | b3 | b5 | b6;
		 assign b10 = b3 ? 5'd1 : b1;
		 assign b11 = b4 ? 5'd1 : b1;
		 assign tomorrow = (month_type == 2'b00) ? b7 :
		                 (month_type == 2'b01) ? b10 :
						   (month_type == 2'b10) ? b11 : 5'd0;
		 
		 assign error = (month_type == 2'b00) ? b8 :
		                 (month_type == 2'b01) ? b5 :
						   (month_type == 2'b10) ? b9 : 1'b1;
						   
	 `endif
	endmodule
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 