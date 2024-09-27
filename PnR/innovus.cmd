#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Fri Sep 27 13:44:21 2024                
#                                                     
#######################################################

#@(#)CDS: Innovus v22.14-s061_1 (64bit) 10/18/2023 11:21 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 22.14-s061_1 NR231009-1305/22_14-UB (database version 18.20.617) {superthreading v2.20}
#@(#)CDS: AAE 22.14-s016 (64bit) 10/18/2023 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 22.14-s019_1 () Oct 15 2023 21:00:30 ( )
#@(#)CDS: SYNTECH 22.14-s011_1 () Oct  3 2023 04:55:33 ( )
#@(#)CDS: CPE v22.14-s052
#@(#)CDS: IQuantus/TQuantus 21.2.2-s297 (64bit) Mon Oct 2 17:11:06 PDT 2023 (Linux 3.10.0-693.el7.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
define_proc_arguments ViaFillQor -info {This procedure extracts Viafill details from innovus db} -define_args {
        {-window "window coordinates" "" list optional}
        {-window_size "window size in microns" "" string optional}
    
    }
define_proc_arguments ProcessFills -info {This procedure processes Fill types} -define_args {
    {-fillInfo "Design Fill data" "" list required}
				{-csvName "File path for Fill Data csv file" "Path of CSV file" string required}
				{-selectFill "type of fill to be selected in session" "list of BRIDGE/EXTENSION/STAMP/FLOATING" list required}
    {-output_data "Boolean Flag to output Fill Data for further processing" "" string required}
}
define_proc_arguments FillQor -info {This procedure extracts fill details from innovus db} -define_args {
    {-layers "Fills Cleanup on which all layers" "list of Metal/Routing layers" list optional}
				{-selectFill "type of fill to be selected in session" "list of BRIDGE/EXTENSION/STAMP/FLOATING" list optional}
				{-outData "Boolean Flag to output Fill Data for further processing" "" boolean optional}
    {-outDataFile "File path for Fill Data csv file" "Path of CSV file" string optional}
}
define_proc_arguments ProcessFills_fast -info {This procedure processes Fill types} -define_args {
    {-fillInfo "Design Fill data" "" list required}
				{-csvName "File path for Fill Data csv file" "Path of CSV file" string required}
				{-selectFill "type of fill to be selected in session" "list of BRIDGE/EXTENSION/STAMP/FLOATING" list required}
    {-output_data "Boolean Flag to output Fill Data for further processing" "" string required}
}
define_proc_arguments FillQor_fast -info {This procedure extracts fill details from innovus db} -define_args {
    {-layers "Fills Cleanup on which all layers" "list of Metal/Routing layers" list optional}
				{-selectFill "type of fill to be selected in session" "list of BRIDGE/EXTENSION/STAMP/FLOATING" list optional}
				{-outData "Boolean Flag to output Fill Data for further processing" "" boolean optional}
    {-outDataFile "File path for Fill Data csv file" "Path of CSV file" string optional}
}
define_proc_arguments ProcessFills_fast_stampOnly -info {This procedure processes Fill types} -define_args {
    {-fillInfo "Design Fill data" "" list required}
	
}
define_proc_arguments FillQor_fast_stampOnly -info {This procedure extracts fill details from innovus db} -define_args {
    {-layers "Fills Cleanup on which all layers" "list of Metal/Routing layers" list optional}
}
win
set enc_check_rename_command_name 1
set init_gnd_net VSS
set init_lef_file {../lef/gsclib045_tech.lef ../lef/gsclib045_macro.lef}
set init_design_settop 0
set init_verilog ../synthesis/outputs/uart_netlist.v
set init_mmmc_file uartmmmc.view
set init_pwr_net VDD
init_design
set init_gnd_net VSS
set init_lef_file {../lef/gsclib045_tech.lef ../lef/gsclib045_macro.lef}
set init_design_settop 0
set init_verilog ../synthesis/outputs/uart_netlist.v
set init_mmmc_file ../../../../alu_4bit_design_database_45nm/physical_design/alu_4bit_MMMC.view
set init_pwr_net VDD
init_design
set init_gnd_net VSS
set init_lef_file {../lef/gsclib045_tech.lef ../lef/gsclib045_macro.lef}
set init_design_settop 0
set init_verilog ../synthesis/outputs/uart_netlist.v
set init_mmmc_file UART_MMMCview
set init_pwr_net VDD
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site CoreSite -r 1 0.699954 2.5 2.5 2.5 2.5
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site CoreSite -r 0.993360995851 0.698429 2.6 2.66 2.6 2.66
uiSetTool select
getIoFlowFlag
fit
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -instanceBasename *
globalNetConnect VSS -type pgpin -pin VSS -instanceBasename *
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -instanceBasename *
globalNetConnect VSS -type pgpin -pin VSS -instanceBasename *
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -instanceBasename *
globalNetConnect VSS -type pgpin -pin VSS -instanceBasename *
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal11 bottom Metal11 left Metal10 right Metal10} -width {top 0.7 bottom 0.7 left 0.7 right 0.7} -spacing {top 0.2 bottom 0.2 left 0.2 right 0.2} -offset {top 0.5 bottom 0.5 left 0.5 right 0.5} -center 1 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setLayerPreference Metal11 -isVisible 0
setLayerPreference Metal11 -isVisible 1
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal1 -direction horizontal -width 0.4 -spacing 0.2 -number_of_sets 4 -start_from left -start_offset 1 -stop_offset 0 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal11 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal11 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
undo
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal10 -direction vertical -width 0.4 -spacing 0.2 -number_of_sets 4 -start_from left -start_offset 1 -stop_offset 0 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal11 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal11 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
undo
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal11 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal10 -direction vertical -width 0.4 -spacing 0.2 -number_of_sets 5 -start_from left -start_offset 1 -stop_offset 0 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal11 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal11 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal11(11) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal11(11) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal11(11) }
saveDesign uart_power_planning.enc
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report uart_top.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
zoomBox -5.92650 19.48950 16.99250 31.01100
pan 2.47750 27.46850
zoomBox -0.99300 23.57600 4.31650 26.24500
zoomBox 0.01550 24.41200 1.71950 25.26850
zoomBox -0.97600 23.78850 3.54150 26.05950
zoomBox -2.43400 22.87300 6.22100 27.22400
zoomBox -5.27500 21.17600 11.30650 29.51150
zoomBox -9.12250 19.01950 17.87900 32.59350
zoomBox -15.38750 15.50950 28.58050 37.61250
zoomBox -25.58750 9.79450 46.00700 45.78550
zoomBox -81.79400 -23.23650 141.53800 89.03400
fit
selectVia 0.5000 51.9700 1.2000 52.6700 11 VSS
zoomBox -1.50450 48.22000 7.14100 52.56600
deselectAll
selectVia 0.5000 51.9700 1.2000 52.6700 11 VSS
zoomBox -0.30750 50.14050 4.20600 52.40950
zoomBox -0.11200 50.45500 3.72500 52.38400
zoomBox 0.41950 51.30750 2.42250 52.31450
deselectAll
selectVia 0.5000 51.9700 1.2000 52.6700 11 VSS
ui_view_box
dbquery -area {-1.239 51.27 2.9385 53.37} -objType inst
dbquery -area {-1.239 51.27 2.9385 53.37} -objType regular
dbquery -area {-1.239 51.27 2.9385 53.37} -objType special
selectVia 0.5000 51.9700 1.2000 52.6700 11 VSS
deselectVia 0.5000 51.9700 1.2000 52.6700 11 VSS
deselectVia 0.5000 51.9700 1.2000 52.6700 11 VSS
selectWire 0.5000 51.9700 52.9000 52.6700 11 VSS
deselectWire 0.5000 51.9700 52.9000 52.6700 11 VSS
deselectWire 0.5000 51.9700 52.9000 52.6700 11 VSS
selectWire 0.5000 51.9700 52.9000 52.6700 11 VSS
deselectWire 0.5000 51.9700 52.9000 52.6700 11 VSS
deselectWire 0.5000 51.9700 52.9000 52.6700 11 VSS
selectWire 0.5000 0.5300 1.2000 52.6700 10 VSS
deselectWire 0.5000 0.5300 1.2000 52.6700 10 VSS
deselectWire 0.5000 0.5300 1.2000 52.6700 10 VSS
selectWire 0.5000 0.5300 1.2000 52.6700 10 VSS
deselectWire 0.5000 0.5300 1.2000 52.6700 10 VSS
deselectWire 0.5000 0.5300 1.2000 52.6700 10 VSS
selectWire 0.5000 51.9700 52.9000 52.6700 11 VSS
zoomBox 1.25900 51.78350 1.05650 52.03850
fit
zoomBox -275.91600 -70.73250 315.41350 226.53250
fit
addEndCap -preCap FILL4 -postCap FILL4 -prefix ENDCAP
zoomBox 7.13000 19.89150 67.89700 50.43950
zoomBox 13.47650 23.50900 65.12900 49.47500
zoomBox 23.45700 29.13800 60.77700 47.89900
zoomBox -105.31950 -37.97200 117.69700 74.13950
fit
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -drouteAutoStop 0
setNanoRouteMode -quiet -drouteFixAntenna 0
setNanoRouteMode -quiet -droutePostRouteSwapVia {}
setNanoRouteMode -quiet -droutePostRouteSpreadWire 1
setNanoRouteMode -quiet -droutePostRouteWidenWireRule LEFSpecialRouteSpec
setNanoRouteMode -quiet -drouteUseMultiCutViaEffort {}
setNanoRouteMode -quiet -drouteOnGridOnly 0
setNanoRouteMode -quiet -routeIgnoreAntennaTopCellPin 0
setNanoRouteMode -quiet -timingEngine {}
setUsefulSkewMode -noBoundary false -maxAllowedDelay 1
setPlaceMode -reset
setPlaceMode -congEffort auto -timingDriven 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 0 -placeIOPins 1 -moduleAwareSpare 0 -maxRouteLayer 4 -preserveRouting 1 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
setPlaceMode -fp false
place_design
setDrawView fplan
zoomOut
deselectAll
selectObject Module clk_divider
deselectAll
selectObject Module uart
gui_select -rect {-27.37500 16.94000 24.91500 15.89000}
deselectAll
deselectAll
fit
selectObject Module uart
deselectAll
selectObject Module uart
setDrawView place
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
saveDesign uart_placemet.enc
setDrawView fplan
setDrawView place
setDrawView fplan
setDrawView place
deselectAll
setDrawView fplan
setDrawView fplan
setDrawView place
setDrawView place
setDrawView fplan
setDrawView place
setDrawView fplan
setDrawView place
setDrawView fplan
setDrawView place
setDrawView fplan
setDrawView fplan
setDrawView ameba
setDrawView place
setDrawView ameba
setDrawView place
setLayerPreference node_layer -isVisible 0
setLayerPreference node_overlay -isVisible 1
setLayerPreference congestH -color {#000066 #0000c9 #0053ff #00fcfa #00a953 #53a900 #f9fc00 #ff5300 #ff5858 #ffffff}
setLayerPreference congestV -color {#000066 #0000c9 #0053ff #00fcfa #00a953 #53a900 #f9fc00 #ff5300 #ff5858 #ffffff}
fit
setLayerPreference node_overlay -isVisible 0
setLayerPreference node_overlay -isVisible 1
fit
setLayerPreference densityMap -isVisible 0
setLayerPreference densityMap -isVisible 1
setLayerPreference node_layer -isVisible 1
zoomBox 18.50950 45.55450 35.06900 53.87900
selectPhyPin 26.6600 52.9500 26.7400 53.2000 2 {baud_rate_sel[3]}
zoomBox 14.03250 41.67850 45.75550 57.62600
zoomBox -37.48400 19.08400 99.48550 87.93950
fit
gui_select -rect {56.97500 52.99000 56.55500 28.35000}
deselectAll
uiSetTool ruler
setLayerPreference node_layer -isVisible 0
uiSetTool ruler
zoomBox -5.37400 16.05700 21.58900 29.61150
zoomBox 0.38100 20.16100 7.72950 23.85500
zoomBox 1.57950 21.01600 4.84100 22.65550
zoomBox -19.61550 4.09400 51.93050 40.06050
zoomBox -128.79100 -82.81900 298.75200 132.10950
fit
setLayerPreference node_layer -isVisible 1
setLayerPreference allLayers -isVisible 0
setLayerPreference allLayers -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report uart_top.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference stdCell -isVisible 0
uiSetTool select
getCTSMode -obs_engine -quiet
create_ccopt_clock_tree_spec
ctd_win -side none -id ctd_window
selectInst {clk_divider/clk_count_reg[23]}
zoomSelected
deselectInst {clk_divider/clk_count_reg[23]}
selectInst {clk_divider/clk_count_reg[27]}
zoomSelected
deselectInst {clk_divider/clk_count_reg[27]}
selectInst {clk_divider/clk_count_reg[14]}
zoomSelected
deselectInst {clk_divider/clk_count_reg[14]}
selectInst {clk_divider/clk_count_reg[19]}
zoomSelected
deselectInst {clk_divider/clk_count_reg[19]}
selectInst {clk_divider/clk_count_reg[17]}
zoomSelected
deselectInst {clk_divider/clk_count_reg[17]}
selectInst {clk_divider/clk_count_reg[18]}
zoomSelected
deselectInst {clk_divider/clk_count_reg[18]}
fit
getCTSMode -obs_engine -quiet
setOptMode -fixCap true -fixTran true -fixFanoutLoad true
optDesign -preCTS
setOptMode -fixCap true -fixTran true -fixFanoutLoad true
optDesign -preCTS
setLayerPreference stdCell -isVisible 1
setLayerPreference node_overlay -isVisible 0
setLayerPreference node_overlay -isVisible 1
fit
setLayerPreference node_overlay -isVisible 0
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isVisible 0
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix uart_top_preCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -hold -pathReports -slackReports -numPaths 100 -prefix uart_top_preCTS -outDir timingReports
setDelayCalMode -siAware false
timeDesign -preCTS
report_timing
optDesign -pre
optDesign -preCTS
redraw
saveDesign uart_preCtsopt.enc
setLayerPreference node_layer -isVisible 1
create_ccopt_clock_tree_spec
get_ccopt_clock_trees *
set_ccopt_property target_max_trans 0.05
set_ccopt_property target_skew 0.02
ccopt_design
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
timeDesign -postCTS
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix uart_top_postCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 50 -prefix uart_top_postCTS -outDir timingReports
saveDesign uart_postCtsopt.enc
setNanoRouteMode -quiet -drouteFixAntenna 1
setNanoRouteMode -quiet -routeInsertAntennaDiode 0
setNanoRouteMode -quiet -routeWithTimingDriven 0
setNanoRouteMode -quiet -routeWithEco 0
setNanoRouteMode -quiet -routeWithLithoDriven 0
setNanoRouteMode -quiet -droutePostRouteLithoRepair 0
setNanoRouteMode -quiet -routeWithSiDriven 0
setNanoRouteMode -quiet -drouteAutoStop 0
setNanoRouteMode -quiet -routeSelectedNetOnly 0
setNanoRouteMode -quiet -routeTopRoutingLayer 6
setNanoRouteMode -quiet -routeBottomRoutingLayer 1
setNanoRouteMode -quiet -drouteEndIteration 1
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
redraw
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setNanoRouteMode -quiet -drouteFixAntenna 1
setNanoRouteMode -quiet -routeInsertAntennaDiode 0
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeWithEco 0
setNanoRouteMode -quiet -routeWithLithoDriven 0
setNanoRouteMode -quiet -droutePostRouteLithoRepair 0
setNanoRouteMode -quiet -routeWithSiDriven 1
setNanoRouteMode -quiet -drouteAutoStop 0
setNanoRouteMode -quiet -routeSelectedNetOnly 0
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
routeDesign -globalDetail
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference node_layer -isVisible 0
setLayerPreference violation -isVisible 1
zoomBox -23.43050 2.05450 75.51800 51.79650
zoomBox -10.71700 9.46800 60.77350 45.40650
zoomBox 1.54150 17.08150 45.44600 39.15250
zoomBox 14.79650 25.31400 28.87250 32.39000
selectMarker 21.4000 28.3100 22.4000 30.0200 -1 12 87
deselectAll
selectMarker 21.4000 28.3100 22.4000 30.0200 -1 12 87
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
zoomBox 18.77600 27.83000 26.12450 31.52400
zoomBox 21.86100 29.83300 22.61800 30.21350
fit
zoomBox 45.61 38.895 46.64 39.975
zoomBox 44.87550 38.82700 47.40350 40.09800
zoomBox 43.41200 38.26600 49.11200 41.13150
zoomBox 45.56 35.275 46.58 36.355
deselectAll
selectInst clk_divider/inc_add_102_27_g411__7410
gui_select -rect {45.89700 35.71400 45.96950 35.71800}
deselectAll
zoomBox 44.63300 35.09750 47.60650 36.59250
zoomBox 43.81150 34.69600 48.65550 37.13100
zoomBox 36.36 38.885 37.44 39.965
zoomBox 36.36 35.655 37.44 36.735
zoomBox 45.61 38.895 46.64 39.975
zoomBox 43.45200 38.30150 48.29600 40.73650
zoomBox 42.94500 38.11300 48.64400 40.97800
zoomBox 41.64650 37.63100 49.53500 41.59650
zoomBox 40.82050 37.32450 50.10150 41.99000
zoomBox 35.78100 35.45350 53.56200 44.39200
zoomBox 31.73150 33.95050 56.34250 46.32250
zoomBox 22.56250 30.54700 62.63750 50.69300
zoomBox 20.545 27.455 23.255 30.875
selectMarker 21.4000 28.3100 22.4000 30.0200 -1 12 87
uiSetTool move
uiSetTool move
editMove -dx 0.2615 -dy 0.0695
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
uiSetTool move
fit
fit
zoomBox -6.01000 12.43000 54.75800 42.97850
zoomBox 12.90750 23.62650 32.38900 33.42000
zoomBox 16.35150 25.66500 28.31600 31.67950
uiSetTool move
editMove -dx 1.2605 -dy 0.15
uiSetTool select
fit
violationBrowserClose
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 100 -prefix uart_top_postRoute -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 100 -prefix uart_top_postRoute -outDir timingReports
saveDesign uart_postroute.enc
deselectAll
setLayerPreference node_layer -isVisible 1
getCTSMode -obs_engine -quiet
verifyConnectivity -type all -geomConnect -error 1000 -warning 50
setOptMode -fixCap true -fixTran true -fixFanoutLoad true
setDelayCalMode -engine default -siAware true
optDesign -postRoute
setOptMode -fixCap true -fixTran true -fixFanoutLoad true
setDelayCalMode -engine default -siAware true
optDesign -postRoute
getNanoRouteMode -quiet -routeWithTimingDriven
setNanoRouteMode -quiet -routeWithSiDriven true
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
setNanoRouteMode -quiet -routeWithSiPostRouteFix true
report_power
setLayerPreference node_layer -isVisible 0
getFillerMode -quiet
addFiller -cell FILL4 -prefix FILLER -fitGap
getFillerMode -quiet
addFiller -cell FILL1 -prefix FILLER -fitGap
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
verifyConnectivity -type all -geomLoop -error 1000 -warning 50
getCTSMode -obs_engine -quiet
verifyEndCap -tripleWell -wrongLocation -error 1000
verifyEndCap -tripleWell -wrongLocation -error 1000
verifyEndCap -tripleWell -wrongLocation -row 5 -error 1000
setMetalFill -layer Metal1 -windowSize 120.000 120.000 -windowStep 60.000 60.000 -minDensity 20.000 -maxDensity 65.000
setMetalFill -layer Metal2 -windowSize 120.000 120.000 -windowStep 60.000 60.000 -minDensity 20.000 -maxDensity 65.000
setMetalFill -layer Metal3 -windowSize 120.000 120.000 -windowStep 60.000 60.000 -minDensity 20.000 -maxDensity 65.000
setMetalFill -layer Metal4 -windowSize 120.000 120.000 -windowStep 60.000 60.000 -minDensity 20.000 -maxDensity 65.000
setMetalFill -layer Metal5 -windowSize 120.000 120.000 -windowStep 60.000 60.000 -minDensity 20.000 -maxDensity 65.000
setMetalFill -layer Metal6 -windowSize 120.000 120.000 -windowStep 60.000 60.000 -minDensity 20.000 -maxDensity 65.000
setMetalFill -layer Metal7 -windowSize 120.000 120.000 -windowStep 60.000 60.000 -minDensity 20.000 -maxDensity 65.000
setMetalFill -layer Metal8 -windowSize 120.000 120.000 -windowStep 60.000 60.000 -minDensity 20.000 -maxDensity 65.000
setMetalFill -layer Metal9 -windowSize 120.000 120.000 -windowStep 60.000 60.000 -minDensity 20.000 -maxDensity 65.000
setMetalFill -layer Metal10 -windowSize 120.000 120.000 -windowStep 60.000 60.000 -minDensity 20.000 -maxDensity 65.000
setMetalFill -layer Metal11 -windowSize 120.000 120.000 -windowStep 60.000 60.000 -minDensity 20.000 -maxDensity 65.000
verifyMetalDensity -report uart_top.density.rpt -detailed -saveToDB
gui_select -rect {29.39500 53.06000 34.78500 52.01000}
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report uart_top.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
setDrawView ameba
setDrawView fplan
setDrawView ameba
setDrawView fplan
verifyPowerVia -report {} -layerRange {{} {}}
verifyPowerVia -report via_verification_report -layerRange {11 1}
selectObject Module uart
zoomBox -47.42750 -21.70500 142.12700 73.58500
deselectAll
selectObject Module clk_divider
deselectAll
selectObject Module uart
setLayerPreference groupmain_Congestion -isVisible 1
setDrawView place
setLayerPreference node_overlay -isVisible 1
fit
setLayerPreference metalDensityMap -isVisible 0
setLayerPreference timingMap -isVisible 0
setLayerPreference pinDensityMap -isVisible 0
setLayerPreference densityMap -isVisible 0
setLayerPreference densityMap -isVisible 1
setLayerPreference densityMap -isVisible 0
setLayerPreference powerDensity -isVisible 0
setLayerPreference groupmain_Congestion -isVisible 0
setLayerPreference groupmain_Congestion -isVisible 1
setLayerPreference groupmain_Congestion -isVisible 0
setLayerPreference groupmain_Congestion -isVisible 1
setLayerPreference congestH -color {#000066 #0000c9 #0053ff #00fcfa #00a953 #53a900 #f9fc00 #ff5300 #ff5858 #ffffff}
setLayerPreference congestV -color {#000066 #0000c9 #0053ff #00fcfa #00a953 #53a900 #f9fc00 #ff5300 #ff5858 #ffffff}
setLayerPreference node_net -isVisible 0
setLayerPreference node_route -isVisible 0
setLayerPreference node_layer -isVisible 0
setLayerPreference violation -isVisible 0
setLayerPreference node_layer -isVisible 1
setLayerPreference congestH -color {#000066 #0000c9 #0053ff #00fcfa #00a953 #53a900 #f9fc00 #ff5300 #ff5858 #ffffff}
setLayerPreference congestV -color {#000066 #0000c9 #0053ff #00fcfa #00a953 #53a900 #f9fc00 #ff5300 #ff5858 #ffffff}
setLayerPreference node_route -isVisible 1
setLayerPreference node_net -isVisible 1
setLayerPreference Metal7 -isVisible 0
setLayerPreference Metal8 -isVisible 0
setLayerPreference Metal9 -isVisible 0
setLayerPreference Metal11 -isVisible 0
setLayerPreference Bondpad -isVisible 0
setLayerPreference Metal10 -isVisible 0
verify_drc -error 1000000000
editDelete -regular_wire_with_drc
routeDesign
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report uart_top.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report uart_top.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
deselectAll
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
zoomBox -26.7 -26.7 80.1 79.9
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isVisible 0
zoomBox -26.7 -26.7 80.1 79.9
zoomBox -26.7 -26.7 80.1 79.9
zoomBox -26.7 -26.7 80.1 79.9
zoomBox -26.7 -26.7 80.1 79.9
zoomBox -26.7 -26.7 80.1 79.9
zoomBox -26.7 -26.7 80.1 79.9
zoomBox -26.7 -26.7 80.1 79.9
zoomBox -26.7 -26.7 80.1 79.9
zoomBox -26.7 -26.7 80.1 79.9
zoomBox -26.7 -26.7 80.1 79.9
zoomBox -26.7 -26.7 80.1 79.9
zoomBox -26.7 -26.7 80.1 79.9
zoomBox 11.745 34.295 14.455 37.715
zoomBox 10.22550 34.55700 16.00800 37.46400
selectMarker 12.6000 35.1500 13.6000 36.8600 -1 12 87
ui_view_box
dbquery -area {7.9975 33.44 18.2025 38.57} -objType inst
dbquery -area {7.9975 33.44 18.2025 38.57} -objType regular
dbquery -area {7.9975 33.44 18.2025 38.57} -objType special
selectMarker 12.6000 35.1500 13.6000 36.8600 -1 12 87
deselectMarker 12.6000 35.1500 13.6000 36.8600 -1 12 87
deselectMarker 12.6000 35.1500 13.6000 36.8600 -1 12 87
selectInst uart/sender/g1077
deselectInst uart/sender/g1077
deselectInst uart/sender/g1077
selectMarker 12.6000 35.1500 13.6000 36.8600 -1 12 87
deselectAll
selectInst {uart/sender/no_bits_sent_reg[3]}
selectInst {uart/sender/no_bits_sent_reg[3]}
deselectInst {uart/sender/no_bits_sent_reg[3]}
deselectInst {uart/sender/no_bits_sent_reg[3]}
ui_view_box
ui_view_box
dbquery -area {10.2255 34.557 16.008 37.464} -objType inst
dbquery -area {10.2255 34.557 16.008 37.464} -objType regular
dbquery -area {10.2255 34.557 16.008 37.464} -objType special
selectInst {uart/sender/no_bits_sent_reg[0]}
deselectInst {uart/sender/no_bits_sent_reg[0]}
deselectInst {uart/sender/no_bits_sent_reg[0]}
selectInst {uart/sender/no_bits_sent_reg[0]}
deselectInst {uart/sender/no_bits_sent_reg[0]}
deselectInst {uart/sender/no_bits_sent_reg[0]}
selectInst {uart/sender/no_bits_sent_reg[0]}
deselectInst {uart/sender/no_bits_sent_reg[0]}
deselectInst {uart/sender/no_bits_sent_reg[0]}
selectInst {uart/sender/no_bits_sent_reg[0]}
deselectInst {uart/sender/no_bits_sent_reg[0]}
deselectInst {uart/sender/no_bits_sent_reg[0]}
selectInst {uart/sender/no_bits_sent_reg[0]}
fit
fit
fit
fit
setLayerPreference node_layer -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
violationBrowser -all -no_display_false -displayByLayer
violationBrowserClose
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
deselectAll
selectInst FE_OFC168_no_bits_sent_0
deselectAll
selectWire 34.2600 5.9450 34.3400 18.9450 2 {r_buffer[5]}
::uiSetTool defineArea {::Rda_Verify::getBBox vedrc}
::uiSetTool defineArea {::Rda_Verify::getBBox vedrc}
uiSetTool select
deselectAll
selectInst FILLER_T_0_29
set_verify_drc_mode -layer_range {}
set_verify_drc_mode -disable_rules {} -check_ndr_spacing auto -check_only default -check_same_via_cell true -exclude_pg_net false -ignore_trial_route false -ignore_cell_blockage false -use_min_spacing_on_block_obs auto -report uart_top.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
getCTSMode -obs_engine -quiet
ctd_win -side none -id ctd_window
selectInst clk_divider/CTS_ccl_a_buf_00001
zoomSelected
deselectInst clk_divider/CTS_ccl_a_buf_00001
selectInst clk_divider/CTS_ccl_a_buf_00002
zoomSelected
deselectInst clk_divider/CTS_ccl_a_buf_00002
selectInst clk_divider/CTS_ccl_a_buf_00003
zoomSelected
deselectInst clk_divider/CTS_ccl_a_buf_00003
get_ccopt_skew_groups
get_ccopt_delay_corner
all_delay_corners
get_ccopt_skew_groups
setLayerPreference node_layer -isVisible 0
fit
setLayerPreference congestH -color {#000066 #0000c9 #0053ff #00fcfa #00a953 #53a900 #f9fc00 #ff5300 #ff5858 #ffffff}
setLayerPreference congestV -color {#000066 #0000c9 #0053ff #00fcfa #00a953 #53a900 #f9fc00 #ff5300 #ff5858 #ffffff}
setLayerPreference node_layer -isVisible 1
setLayerPreference node_inst -isVisible 0
setLayerPreference congestH -color {#000066 #0000c9 #0053ff #00fcfa #00a953 #53a900 #f9fc00 #ff5300 #ff5858 #ffffff}
setLayerPreference congestV -color {#000066 #0000c9 #0053ff #00fcfa #00a953 #53a900 #f9fc00 #ff5300 #ff5858 #ffffff}
setLayerPreference node_inst -isVisible 1
setLayerPreference node_overlay -isVisible 1
fit
setLayerPreference densityMap -isVisible 0
setLayerPreference pinDensityMap -isVisible 0
setLayerPreference timingMap -isVisible 0
setLayerPreference metalDensityMap -isVisible 0
setLayerPreference powerDensity -isVisible 0
setLayerPreference groupmain_Congestion -isVisible 0
setLayerPreference metalDensityMap -isVisible 1
setLayerPreference metalDensityMap -isVisible 0
setLayerPreference timingMap -isVisible 1
setLayerPreference timingMap -isVisible 0
setLayerPreference pinDensityMap -isVisible 1
setLayerPreference pinDensityMap -isVisible 0
setLayerPreference pinDensityMap -isVisible 1
setLayerPreference node_power -isVisible 1
setLayerPreference node_power -isVisible 0
setLayerPreference node_power -isVisible 1
setLayerPreference powerNet -isVisible 0
setLayerPreference powerNet -isVisible 1
setLayerPreference node_overlay -isVisible 1
fit
setLayerPreference node_overlay -isVisible 0
setLayerPreference node_power -isVisible 0
setLayerPreference node_power -isVisible 1
setLayerPreference netRect -isSelectable 1
setLayerPreference netRect -isSelectable 0
setLayerPreference netRect -isSelectable 1
setLayerPreference netRect -isVisible 0
setLayerPreference netRect -isVisible 1
setLayerPreference netRect -isVisible 0
setLayerPreference netRect -isVisible 1
setLayerPreference netRect -isVisible 0
setLayerPreference netRect -isVisible 1
setLayerPreference powerNet -isVisible 0
setLayerPreference powerNet -isVisible 1
setLayerPreference node_route -isVisible 0
setLayerPreference powerNet -isVisible 0
setLayerPreference powerNet -isVisible 1
setLayerPreference node_gird -isVisible 1
setLayerPreference node_gird -isVisible 0
setLayerPreference node_misc -isVisible 1
setLayerPreference node_misc -isVisible 0
setLayerPreference node_misc -isVisible 1
setLayerPreference node_bump -isVisible 0
setLayerPreference node_bump -isVisible 1
setLayerPreference Bondpad -isVisible 0
setLayerPreference Bondpad -isVisible 1
setLayerPreference node_route -isVisible 1
setLayerPreference node_bump -isVisible 0
setLayerPreference node_bump -isVisible 1
setLayerPreference violation -isVisible 0
uiSetTool addPoly
editAddPoly 56.205 43.75
editAddPoly 60.265 36.96
editAddPoly 62.015 37.8
editAddPoly 58.725 35.63
editAddPoly 58.095 37.52
editAddPoly 60.405 39.13
editAddPoly 56.065 43.12
editAddPoly 57.255 44.1
uiSetTool select
uiSetTool layerBlk
uiSetTool select
deselectAll
saveDesign uart_finaldrc.enc
streamOut uart.gds -mapFile streamOut.map -libName DesignLib -units 2000 -mode ALL
report_timing
report_timing timing_final.rpt
report_timing > timing_final.rpt
extractRC
selectObject Module uart
deselectObject Module uart
selectObject IO_Pin {baud_rate_sel[0]}
selectObject IO_Pin {baud_rate_sel[1]}
selectObject IO_Pin {baud_rate_sel[2]}
selectObject IO_Pin {baud_rate_sel[3]}
deselectObject IO_Pin {baud_rate_sel[0]}
deselectObject IO_Pin {baud_rate_sel[1]}
deselectObject IO_Pin {baud_rate_sel[2]}
deselectObject IO_Pin {baud_rate_sel[3]}
selectObject Module uart
setLayerPreference node_layer -isVisible 0
deselectObject Module uart
selectObject Module uart
deselectObject Module uart
selectObject Module uart
deselectObject Module uart
selectObject Module uart
deselectObject Module uart
selectObject Module uart
deselectObject Module uart
selectObject Module uart
selectObject Module uart/recver
deselectObject Module uart/recver
selectObject Module uart/sender
deselectObject Module uart/sender
selectObject Net uart/UNCONNECTED_HIER_Z
selectObject HTerm {uart/d_in[0]}
selectObject HTerm {uart/d_in[1]}
selectObject HTerm {uart/d_in[2]}
selectObject HTerm {uart/d_in[3]}
selectObject HTerm {uart/d_in[4]}
selectObject HTerm {uart/d_in[5]}
selectObject HTerm {uart/d_in[6]}
selectObject HTerm {uart/d_in[7]}
selectObject HTerm uart/wrn
selectObject Module uart/sender
deselectAll
selectInst FILLER_T_0_247
setLayerPreference node_layer -isVisible 1
getAnalysisMode -checkType -quiet
get_time_unit
report_timing -machine_readable -max_paths 10000 -max_slack 0.75 -path_exceptions all -late > top.mtarpt
load_timing_debug_report -name default_report top.mtarpt -max_path_num 10000 -updateCategory 0 -isDrv 0
ctd_win -side left -id ctdMain
setLayerPreference node_inst -isVisible 0
setLayerPreference node_layer -isVisible 0
deselectAll
setLayerPreference Metal1 -isVisible 1
setLayerPreference Metal1 -isVisible 0
setLayerPreference Metal2 -isVisible 1
setLayerPreference Metal2 -isVisible 0
setLayerPreference Metal2 -isVisible 1
setLayerPreference Metal2 -isVisible 0
setLayerPreference Metal3 -isVisible 1
setLayerPreference Metal3 -isVisible 0
setLayerPreference Metal9 -isVisible 1
setLayerPreference Metal9 -isVisible 0
setLayerPreference Metal8 -isVisible 1
setLayerPreference Metal8 -isVisible 0
setLayerPreference Metal7 -isVisible 1
setLayerPreference Metal7 -isVisible 0
setLayerPreference Metal6 -isVisible 1
setLayerPreference Via5 -isVisible 1
setLayerPreference Metal5 -isVisible 1
setLayerPreference Metal4 -isVisible 1
setLayerPreference Metal3 -isVisible 1
setLayerPreference node_layer -isVisible 1
setLayerPreference instanceCell -isVisible 1
setExtractRCMode -engine postRoute -effortLevel low -coupled true -capFilterMode relOnly -coupling_c_th 3 -total_c_th 5 -relative_c_th 0.03
reset_parasitics
extractRC
rcOut -spef uart_top.spef -rc_corner RC_CORNER
getIoFlowFlag

