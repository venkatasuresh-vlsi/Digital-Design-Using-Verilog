vlib work
vdel -all
vlib work

vlog mux.v 
vlog muxN.v 
vlog tb_muxN.v 
 

vsim work.tb -l mux.log
run -all

