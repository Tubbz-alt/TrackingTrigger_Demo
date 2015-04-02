SetActiveLib -work
comp -include "$dsn\src\backend.vhd" 
comp -include "$dsn\src\TestBench\backend_TB.vhd" 
asim +access +r TESTBENCH_FOR_backend 
wave 
wave -noreg clock
wave -noreg load
wave -noreg road
wave -noreg addr
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\backend_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_backend 
  
 
run 10000 ns
