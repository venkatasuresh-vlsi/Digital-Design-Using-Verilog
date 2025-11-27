module tb;
	 reg clk, rst, ra, rb, rc, rd, re;
	 reg raNBA, rbNBA, rcNBA, rdNBA, reNBA;
	 wire [2:0] floor;
	 wire [4:0] r;

     assign r = {ra, rb, rc, rd, re};

     floor_EC_5 Suresh (clk, rst, raNBA, rbNBA, rcNBA, rdNBA, reNBA, floor);

	 always @* raNBA<=ra;
	 always @* rbNBA<=rb;
	 always @* rcNBA<=rc;
	 always @* rdNBA<=rd;
	 always @* reNBA<=re;
	 
	 always #5 clk=!clk;

	 initial
		begin
		clk=0;rst=1;
		{ra,rb,rc,rd,re,raNBA,rbNBA,rcNBA,rdNBA,reNBA}=0;
		#2;
		rst=0;
		end
		
	 initial
		begin
		repeat (20)
			begin
			{ra,rb,rc,rd,re}=$random;
			repeat (5) @(posedge clk);
			end
		$finish;
		end
		
	endmodule
		
