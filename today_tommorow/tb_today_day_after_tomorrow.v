module tb_today_day_after_tomorrow;
          reg [4:0] today;
		  wire [4:0] day_after_tomorrow;
		  wire error;
		  
		   today_day_after_tomorrow Venkata_Suresh (today, day_after_tomorrow, error);
		   
		   initial begin
		         repeat (100) begin
				         today = $random;
						 #1;
						 $display(today,,,day_after_tomorrow,,,error);
					end
			 end
		endmodule