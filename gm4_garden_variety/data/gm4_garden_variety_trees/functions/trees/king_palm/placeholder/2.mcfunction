
#particle block mangrove_leaves ~ ~ ~ 0.25 0.25 0.25 0 10

# oak_leaves
execute if score $placed_block gm4_gv_placeholder matches 0 if score $waterlogged gm4_gv_placeholder matches 0 store success score $placed_block gm4_gv_placeholder run setblock ~ ~ ~ oak_leaves[persistent=false]
execute if score $placed_block gm4_gv_placeholder matches 0 if score $waterlogged gm4_gv_placeholder matches 1 store success score $placed_block gm4_gv_placeholder run setblock ~ ~ ~ oak_leaves[persistent=false,waterlogged=true]
