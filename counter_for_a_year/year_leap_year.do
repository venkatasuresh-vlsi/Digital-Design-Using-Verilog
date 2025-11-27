vlib work
vdel -all
vlib work 

vlog -sv year_leap_year.v 
vlog year_leap_year_tb.v 

vsim work.tb
add wave -r *
run -all