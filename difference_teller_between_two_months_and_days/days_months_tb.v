module tb; 
	 reg [4:0] day1,day2;
   	 reg [3:0] mon1,mon2;
	 wire [8:0] day_diff;
	 wire [3:0] mon_diff;
	 
	 difference_in_days Suresh (day1, day2, mon1, mon2, day_diff, mon_diff);
	 
	 initial begin
	     repeat (30) begin 
	     day1 = $urandom_range(1, 31);
		 day2 = $urandom_range(1, 31);
		 mon1 = $urandom_range(1, 12);
		 mon2 = $urandom_range(1, 12);
		 #1;
		 $display("day1 = %0d | mon1 = %0d | day2 = %0d | mon2 = %0d ---- diff_in_days = %0d | mon_in_days = %0d", 
		           day1, mon1, day2, mon2, day_diff, mon_diff);
		 end
		 day1 = 1;
		 day2 = 31;
		 mon1 = 1;
		 mon2 = 12;
		 #1;
		 $display("day1 = %0d | mon1 = %0d | day2 = %0d | mon2 = %0d ---- diff_in_days = %0d | mon_in_days = %0d", 
		           day1, mon1, day2, mon2, day_diff, mon_diff);
		end
	endmodule