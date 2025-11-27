vlib work
vdel -all
vlib work

vlog piso_br_2.v +acc
vlog piso_br_2_tb.v +acc

vsim work.tb 
#add wave -r *
do wave.do
run -all