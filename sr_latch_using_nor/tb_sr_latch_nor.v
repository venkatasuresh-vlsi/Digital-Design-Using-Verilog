module tb;
     reg m, n;
	 wire q, q_bar;
	 
	 sr_latch_using_nor Venkata_Suresh(m, n, q, q_bar);
	 
	 initial begin
	     m = 1; n = 0;
		 #1;
		 $display(m,,n,,,Venkata_Suresh.s,,Venkata_Suresh.r,,,q,,q_bar);
		 m = 0; n = 0;
		 #1;
		 $display(m,,n,,,Venkata_Suresh.s,,Venkata_Suresh.r,,,q,,q_bar);
		 m = 0; n = 1;
		 #1;
		 $display(m,,n,,,Venkata_Suresh.s,,Venkata_Suresh.r,,,q,,q_bar);
		 m = 0; n = 0;
		 #1;
		 $display(m,,n,,,Venkata_Suresh.s,,Venkata_Suresh.r,,,q,,q_bar);
		 m = 1; n = 1;
		 #1;
		 $display(m,,n,,,Venkata_Suresh.s,,Venkata_Suresh.r,,,q,,q_bar);
		 m = 0; n = 0;
		 #1;
		 $display(m,,n,,,Venkata_Suresh.s,,Venkata_Suresh.r,,,q,,q_bar);
		end
	endmodule