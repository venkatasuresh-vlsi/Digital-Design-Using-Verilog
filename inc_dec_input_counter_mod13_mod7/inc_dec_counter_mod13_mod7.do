vlib work
vdel -all
vlib work

vlog inc_dec_counter_mod13_mod7.v +acc +define+dataflow
vlog inc_dec_counter_mod13_mod7_tb.v +acc

vsim work.tb
add wave -r *
run -all