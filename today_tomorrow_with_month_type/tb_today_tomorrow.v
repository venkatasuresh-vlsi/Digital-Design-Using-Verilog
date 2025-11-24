module tb;
     reg [4:0] today;
	 reg [1:0] month_type;
	 wire [4:0] tomorrow;
	 wire error;
	 
	 integer i;
	 
	 today_tomorrow Suresh (today, month_type, tomorrow, error);
	 
	 initial begin
	     $display("month_type | today | tomorrow | error");
	     month_type = 2'd0;
		 for (i = 0; i < 32; i = i + 1) begin
		      today = i;
			  #1;
			  $display("  %b          %d        %d        %b", month_type, today, tomorrow, error);
			end
		    #1;
		 month_type = 2'd1;
		 for (i = 0; i < 32; i = i + 1) begin
		      today = i;
			  #1;
			  $display("  %b          %d        %d        %b", month_type, today, tomorrow, error);
			end
		    #1;
		 month_type = 2'd2;
		 for (i = 0; i < 32; i = i + 1) begin
		      today = i;
			  #1;
			  $display("  %b          %d        %d        %b", month_type, today, tomorrow, error);
			end
		 month_type = 2'd3;
		 for (i = 0; i < 32; i = i + 1) begin
		      today = i;
			  #1;
			  $display("  %b          %d        %d        %b", month_type, today, tomorrow, error);
			end
		end
	endmodule
			