vlib work
vdel -all
vlib work

vlog updown_100.v +acc
vlog updown_100_tb.v +acc

vsim work.tb 
add wave -r *
run -all