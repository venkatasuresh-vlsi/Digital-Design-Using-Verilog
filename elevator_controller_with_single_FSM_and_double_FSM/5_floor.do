vlib work
vdel -all
vlib work

vlog 5_floor.v +acc -sv +define+IMPROVED2
vlog 5_floor_tb.v +acc

vsim work.tb 
do wave.do
#add wave -r *
run -all