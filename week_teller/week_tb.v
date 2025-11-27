module tb; 
	 reg  [4:0] date_in;
	 reg  [3:0] mon_in;
	 reg  [2:0] week_in;     
	 wire [2:0] week_out1;
	 wire [2:0] week_out2;
	 wire err;

     hw34 Suresh (date_in, mon_in, week_in, week_out1, week_out2, err);
	 
	 initial begin
	     repeat(35) begin
		     date_in = $urandom_range(1, 31);
			 mon_in = $urandom_range(1, 12);
			 week_in = $urandom_range(0, 6);
			 #1;
	         $display("date_in=%0d | mon_in=%0d | week_in = %0d ---- week_out1=%0d | week_out2=%0d | error=%0d", 
			          date_in, mon_in, week_in, week_out1, week_out2, err);
			end
			 date_in = 19;
			 mon_in = 10;
			 week_in = 0;
			 #1;
	         $display("date_in=%0d | mon_in=%0d | week_in = %0d ---- week_out1=%0d | week_out2=%0d | error=%0d", 
			          date_in, mon_in, week_in, week_out1, week_out2, err);
			 date_in = 31;
			 mon_in = 1;
			 week_in = 5;
			 #1;
	         $display("date_in=%0d | mon_in=%0d | week_in = %0d ---- week_out1=%0d | week_out2=%0d | error=%0d", 
			          date_in, mon_in, week_in, week_out1, week_out2, err);
		end
	endmodule