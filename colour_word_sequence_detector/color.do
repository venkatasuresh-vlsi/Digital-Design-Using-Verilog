vlib work
vdel -all
vlib work

vlog color.v +acc -sv
vlog color_tb.v 

vsim work.tb
add wave -r *
run -all