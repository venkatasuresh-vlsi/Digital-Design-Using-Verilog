vlib work
vdel -all
vlib work 

vlog fifo.v -sv +acc 
vlog fifo_tb.v +acc

vsim work.tb
add wave -r *
add wave sim:/tb/Suresh/box
run -all