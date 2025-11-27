vlib work
vdel -all
vlib work

vlog -sv counter_double4_with_three_states.v +define+SV
vlog counter_double4_with_three_states_tb.v 

vsim work.tb
add wave -r * 
run -all