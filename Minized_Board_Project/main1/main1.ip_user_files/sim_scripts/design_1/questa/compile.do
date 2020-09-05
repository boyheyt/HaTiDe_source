vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_protocol_checker_v2_0_2
vlib questa_lib/msim/axi_vip_v1_1_2
vlib questa_lib/msim/processing_system7_vip_v1_0_4

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_2 questa_lib/msim/axi_protocol_checker_v2_0_2
vmap axi_vip_v1_1_2 questa_lib/msim/axi_vip_v1_1_2
vmap processing_system7_vip_v1_0_4 questa_lib/msim/processing_system7_vip_v1_0_4

vlog -work xilinx_vip -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_2 -L axi_vip_v1_1_2 -L processing_system7_vip_v1_0_4 -L xilinx_vip "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+F:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+F:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"F:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"F:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"F:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"F:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"F:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"F:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"F:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"F:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"F:/Xilinx/Vivado/2018.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_2 -L axi_vip_v1_1_2 -L processing_system7_vip_v1_0_4 -L xilinx_vip "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+F:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+F:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"F:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"F:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"F:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"F:/Xilinx/Vivado/2018.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+F:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+F:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../main1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_2 -L axi_vip_v1_1_2 -L processing_system7_vip_v1_0_4 -L xilinx_vip "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+F:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+F:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../main1.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_2 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_2 -L axi_vip_v1_1_2 -L processing_system7_vip_v1_0_4 -L xilinx_vip "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+F:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+F:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../main1.srcs/sources_1/bd/design_1/ipshared/3755/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_2 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_2 -L axi_vip_v1_1_2 -L processing_system7_vip_v1_0_4 -L xilinx_vip "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+F:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+F:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../main1.srcs/sources_1/bd/design_1/ipshared/725c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_4 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_2 -L axi_vip_v1_1_2 -L processing_system7_vip_v1_0_4 -L xilinx_vip "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+F:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+F:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../../main1.srcs/sources_1/bd/design_1/ipshared/b193/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+F:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/02c8/hdl/verilog" "+incdir+../../../../main1.srcs/sources_1/bd/design_1/ipshared/b193/hdl" "+incdir+F:/Xilinx/Vivado/2018.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
"../../../bd/design_1/ip/design_1_top_0_0/sim/design_1_top_0_0.v" \
"../../../bd/design_1/ip/design_1_KeyPadInterpreter_0_0/sim/design_1_KeyPadInterpreter_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

