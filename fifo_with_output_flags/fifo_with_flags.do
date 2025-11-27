vlib work
vdel -all
vlib work 

vlog fifo_with_flags.v -sv +acc 
vlog fifo_with_flags_tb.v +acc

vsim work.tb
#add wave -r *
#add wave sim:/tb/Suresh/box
do wave.do
#add wave sim:/tb/Suresh/cnt
run -all