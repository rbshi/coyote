# static
create_pblock pblock_static
resize_pblock pblock_static -add CLOCKREGION_X4Y0:CLOCKREGION_X7Y3
add_cells_to_pblock pblock_static [get_cells [list inst_int_static/axi_interconnect_0]]

# network_top_1 ()
# create_pblock pblock_network_top_1
# resize_pblock pblock_network_top_1 -add CLOCKREGION_X4Y4:CLOCKREGION_X7Y7
# add_cells_to_pblock pblock_network_top_1 [get_cells [list inst_network_top_1/inst_network_stack]]

# network_top_0 (rdma)
create_pblock pblock_network_top_0
resize_pblock pblock_network_top_0 -add CLOCKREGION_X0Y8:CLOCKREGION_X3Y11
add_cells_to_pblock pblock_network_top_0 [get_cells [list inst_network_top_0/inst_network_stack]]