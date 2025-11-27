vlib work
vdel -all
vlib work 

vlog mod5_mod3_mod6.v +acc
vlog mod5_mod3_mod6_tb.v +acc

vsim work.tb 
add wave -r * 
run -all 