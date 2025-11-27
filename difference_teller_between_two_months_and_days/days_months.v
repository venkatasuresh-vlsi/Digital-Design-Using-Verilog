module difference_in_days (
    input [4:0] day1, day2,
    input [3:0] mon1, mon2,
    output reg [8:0] day_diff, 
    output reg [3:0] mon_diff
);
    integer b1, b2; 

    function [8:0] days_before;
        input [3:0] m;
        begin
            case (m)
                1:  days_before = 0;    
                2:  days_before = 31;   
                3:  days_before = 59;
                4:  days_before = 90;  
                5:  days_before = 120;  
                6:  days_before = 151;  
                7:  days_before = 181;  
                8:  days_before = 212;  
                9:  days_before = 243;  
                10: days_before = 273;  
                11: days_before = 304; 
                12: days_before = 334;  
                default: days_before = 0;
            endcase
        end
    endfunction

    always @(*) begin
        b1 = days_before(mon1) + day1;
        b2 = days_before(mon2) + day2;

        if (b1 >= b2)
            day_diff = b1 - b2;
        else
            day_diff = b2 - b1;

        if (mon1 >= mon2)
            mon_diff = mon1 - mon2;
        else
            mon_diff = mon2 - mon1;
    end
endmodule
