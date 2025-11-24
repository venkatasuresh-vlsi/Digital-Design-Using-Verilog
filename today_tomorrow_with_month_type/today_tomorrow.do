vlib work
vdel -all
vlib work

vlog half_adder.v 
vlog full_adder.v 
vlog RCA.v 
vlog mux.v 
vlog mux5.v 
vlog mux_4x1.v 
vlog mux_4x1_5.v 
vlog comp.v 
vlog comp5.v 
vlog today_tomorrow.v +define+structural
vlog tb_today_tomorrow.v

vsim work.tb 
run -all