## DEFINE VARS
set sdc_version 1.5
set_load_unit -picofarads 1 #load

# Use the correct clock name from your design
create_clock -name {clk_230400} -period 43.40278 [get_ports {clk_230400}]

# False paths (Reset paths)
set_false_path -from [get_ports {clrn}]

## INPUTS
# Set input delay for all inputs, using the correct clock name
set_input_delay -clock clk_230400 -max 0.2 [all_inputs]

# Set input transitions (adjusted for rise and fall times)
set_input_transition -min -rise 0.003 [all_inputs]
set_input_transition -max -rise 0.16 [all_inputs]
set_input_transition -min -fall 0.003 [all_inputs]
set_input_transition -max -fall 0.16 [all_inputs]

## OUTPUTS
# Set load for all outputs
set_load -min 0.0014 [all_outputs]
set_load -max 0.32 [all_outputs]

# Add clock uncertainty (optional)
set_clock_uncertainty 0.1 [get_clocks {clk_230400}]

#ihavetakenthisconstraintsfilefromthepublicgithubrepoandmakechnagesaccordingly
