vlib work
vdel -all
vlib work

vlog 101_overlap_non_overlap.v 
vlog 101_overlap_non_overlap_tb.v 

vsim work.tb 
run -all
