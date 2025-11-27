vlib work
vdel -all
vlib work

vlog inc_by_value.v +acc 
vlog inc_by_value_tb.v +acc

vsim work.tb 
add wave -r *
run -all