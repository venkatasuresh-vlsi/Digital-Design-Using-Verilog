vlib work 
vdel -all
vlib work 

vlog two_pulse_counter.v +acc +define+dataflow
vlog two_pulse_counter_tb.v +acc

vsim work.tb 
add wave -r *
run -all
