vlib work
vdel -all
vlib work

vlog inc_dec.v +acc
vlog inc_dec_tb.v +acc

vsim work.tb
add wave -r *
run -all