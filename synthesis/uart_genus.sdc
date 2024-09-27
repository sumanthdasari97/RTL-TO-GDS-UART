# ####################################################################

#  Created by Genus(TM) Synthesis Solution 22.14-s059_1 on Thu Sep 26 15:20:20 CDT 2024

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design uart_top

set_load -pin_load 0.1 [get_ports tx]
set_load -pin_load 0.1 [get_ports {rx_data[7]}]
set_load -pin_load 0.1 [get_ports {rx_data[6]}]
set_load -pin_load 0.1 [get_ports {rx_data[5]}]
set_load -pin_load 0.1 [get_ports {rx_data[4]}]
set_load -pin_load 0.1 [get_ports {rx_data[3]}]
set_load -pin_load 0.1 [get_ports {rx_data[2]}]
set_load -pin_load 0.1 [get_ports {rx_data[1]}]
set_load -pin_load 0.1 [get_ports {rx_data[0]}]
set_clock_gating_check -setup 0.0 
set_drive 1.0 [get_ports rx]
set_drive 1.0 [get_ports {tx_data[7]}]
set_drive 1.0 [get_ports {tx_data[6]}]
set_drive 1.0 [get_ports {tx_data[5]}]
set_drive 1.0 [get_ports {tx_data[4]}]
set_drive 1.0 [get_ports {tx_data[3]}]
set_drive 1.0 [get_ports {tx_data[2]}]
set_drive 1.0 [get_ports {tx_data[1]}]
set_drive 1.0 [get_ports {tx_data[0]}]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.1 [get_clocks pll_clk]
set_clock_uncertainty -hold 0.1 [get_clocks pll_clk]
## List of unsupported SDC commands ##
set_max_area 0
