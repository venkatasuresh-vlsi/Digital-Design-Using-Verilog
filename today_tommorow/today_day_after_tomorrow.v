module today_day_after_tomorrow (
          input [4:0] today,
		  output [4:0] day_after_tomorrow,
		  output error
		  );
		  wire [4:0] inc;
		  
		  assign inc = today + 2;
		  assign eq1 = (today == 31);
		  assign eq2 = (today == 30);
		  
		  assign day_after_tomorrow = eq1 ? 5'd2 : 
		                           eq2 ? 5'd1 : inc;
		  assign error = (today == 0);
		  
		endmodule
		  