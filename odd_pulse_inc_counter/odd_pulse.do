vlib work
vdel -all
vlib work 

vlog odd_pulse.v +define+behavioral +acc
vlog odd_pulse_tb.v +acc

vsim work.tb
add wave -r *
run -all