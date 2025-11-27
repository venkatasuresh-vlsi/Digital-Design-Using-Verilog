vlib work
vdel -all
vlib work

vlog 2_state_ec.v +acc -sv 
vlog 2_state_ec_tb.v +acc

vsim work.tb 
do wave1.do
#add wave -r *
run -all