module find_101_non_overlap (
     input  wire [15:0] a,   
     output wire [3:0]  y   
     );

     wire [13:0] m;
     wire [13:0] g;

     assign m[13] = (a[15:13] == 3'b101);
     assign m[12] = (a[14:12] == 3'b101);
     assign m[11] = (a[13:11] == 3'b101);
     assign m[10] = (a[12:10] == 3'b101);
     assign m[9]  = (a[11:9]  == 3'b101);
     assign m[8]  = (a[10:8]  == 3'b101);
     assign m[7]  = (a[9:7]   == 3'b101);
     assign m[6]  = (a[8:6]   == 3'b101);
     assign m[5]  = (a[7:5]   == 3'b101);
     assign m[4]  = (a[6:4]   == 3'b101);
     assign m[3]  = (a[5:3]   == 3'b101);
     assign m[2]  = (a[4:2]   == 3'b101);
     assign m[1]  = (a[3:1]   == 3'b101);
     assign m[0]  = (a[2:0]   == 3'b101);

     assign g[13] = m[13];
     assign g[12] = m[12] & ~g[13];
     assign g[11] = m[11] & ~(g[12] | g[13]);
     assign g[10] = m[10] & ~(g[11] | g[12]);
     assign g[9]  = m[9]  & ~(g[10] | g[11]);
     assign g[8]  = m[8]  & ~(g[9]  | g[10]);
     assign g[7]  = m[7]  & ~(g[8]  | g[9]);
     assign g[6]  = m[6]  & ~(g[7]  | g[8]);
     assign g[5]  = m[5]  & ~(g[6]  | g[7]);
     assign g[4]  = m[4]  & ~(g[5]  | g[6]); 
     assign g[3]  = m[3]  & ~(g[4]  | g[5]);
     assign g[2]  = m[2]  & ~(g[3]  | g[4]);
     assign g[1]  = m[1]  & ~(g[2]  | g[3]);
     assign g[0]  = m[0]  & ~(g[1]  | g[2]);

     assign y = g[13] + g[12] + g[11] + g[10] + g[9] + g[8] + g[7]  + g[6]  + g[5]  + g[4]  + g[3] + g[2] + g[1]  + g[0];

   endmodule
