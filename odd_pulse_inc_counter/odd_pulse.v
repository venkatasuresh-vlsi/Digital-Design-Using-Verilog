module odd_pulse_incrementer (
     input clk, rst, inc,
     output reg [3:0] cnt
     );
     reg [3:0] pulse_cnt;   
     `ifdef behavioral
     always @(posedge clk or posedge rst) begin
        if (rst) begin
            cnt   <= 0;
            pulse_cnt <= 0;
        end
        else if (inc) begin
            pulse_cnt <= pulse_cnt + 1;   
			
            if (pulse_cnt[0] == 1'b1)  
                cnt <= cnt;
            else                       
                cnt <= cnt + 1;
        end
     end
	 `endif
     `ifdef dataflow
	 wire [3:0] b1;
	 wire [3:0] b2;
	 assign b1 = inc ? b2 : pulse_cnt;
	 assign b2 = pulse_cnt + 1;
	 wire [3:0] b3;
	 wire [3:0] b4;
	 assign b3 = (inc && pulse_cnt[0] == 1'b0) ? b4 : cnt;
	 assign b4 = cnt + 1;
	 always @(posedge clk or posedge rst) begin
	     if (rst) pulse_cnt <= 0;
		 else pulse_cnt <= b1;
		end
	 always @(posedge clk or posedge rst) begin
	     if (rst) cnt <= 0;
		 else cnt <= b3;
		end
	 `endif


endmodule
