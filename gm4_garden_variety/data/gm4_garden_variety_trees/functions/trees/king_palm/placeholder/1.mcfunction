
#particle block mangrove_wood ~ ~ ~ 0.25 0.25 0.25 0 10

# stripped_mangrove_log
execute if score $placed_block gm4_gv_placeholder matches 0 store success score $placed_block gm4_gv_placeholder if score $current_pattern gm4_gv_placeholder matches 1 if score $axis gm4_gv_placeholder matches 1 if score $surrounded gm4_gv_placeholder matches 1 run setblock ~ ~ ~ stripped_mangrove_log[axis=y]
execute if score $placed_block gm4_gv_placeholder matches 0 store success score $placed_block gm4_gv_placeholder if score $current_pattern gm4_gv_placeholder matches 1 if score $axis gm4_gv_placeholder matches 2 if score $surrounded gm4_gv_placeholder matches 1 run setblock ~ ~ ~ stripped_mangrove_log[axis=z]
execute if score $placed_block gm4_gv_placeholder matches 0 store success score $placed_block gm4_gv_placeholder if score $current_pattern gm4_gv_placeholder matches 1 if score $axis gm4_gv_placeholder matches 3 if score $surrounded gm4_gv_placeholder matches 1 run setblock ~ ~ ~ stripped_mangrove_log[axis=x]

# mangrove_log
execute if score $placed_block gm4_gv_placeholder matches 0 store success score $placed_block gm4_gv_placeholder if score $current_pattern gm4_gv_placeholder matches 1 if score $axis gm4_gv_placeholder matches 1 if score $capped gm4_gv_placeholder matches 1 run setblock ~ ~ ~ mangrove_log[axis=y]
execute if score $placed_block gm4_gv_placeholder matches 0 store success score $placed_block gm4_gv_placeholder if score $current_pattern gm4_gv_placeholder matches 1 if score $axis gm4_gv_placeholder matches 2 if score $capped gm4_gv_placeholder matches 1 run setblock ~ ~ ~ mangrove_log[axis=z]
execute if score $placed_block gm4_gv_placeholder matches 0 store success score $placed_block gm4_gv_placeholder if score $current_pattern gm4_gv_placeholder matches 1 if score $axis gm4_gv_placeholder matches 3 if score $capped gm4_gv_placeholder matches 1 run setblock ~ ~ ~ mangrove_log[axis=x]

# mangrove_wood
execute if score $placed_block gm4_gv_placeholder matches 0 store success score $placed_block gm4_gv_placeholder if score $current_pattern gm4_gv_placeholder matches 1 if score $axis gm4_gv_placeholder matches 1 run setblock ~ ~ ~ mangrove_wood[axis=y]
execute if score $placed_block gm4_gv_placeholder matches 0 store success score $placed_block gm4_gv_placeholder if score $current_pattern gm4_gv_placeholder matches 1 if score $axis gm4_gv_placeholder matches 2 run setblock ~ ~ ~ mangrove_wood[axis=z]
execute if score $placed_block gm4_gv_placeholder matches 0 store success score $placed_block gm4_gv_placeholder if score $current_pattern gm4_gv_placeholder matches 1 if score $axis gm4_gv_placeholder matches 3 run setblock ~ ~ ~ mangrove_wood[axis=x]

# stripped_oak_log
execute if score $placed_block gm4_gv_placeholder matches 0 store success score $placed_block gm4_gv_placeholder if score $current_pattern gm4_gv_placeholder matches 2 if score $axis gm4_gv_placeholder matches 1 if score $surrounded gm4_gv_placeholder matches 1 run setblock ~ ~ ~ stripped_oak_log[axis=y]
execute if score $placed_block gm4_gv_placeholder matches 0 store success score $placed_block gm4_gv_placeholder if score $current_pattern gm4_gv_placeholder matches 2 if score $axis gm4_gv_placeholder matches 2 if score $surrounded gm4_gv_placeholder matches 1 run setblock ~ ~ ~ stripped_oak_log[axis=z]
execute if score $placed_block gm4_gv_placeholder matches 0 store success score $placed_block gm4_gv_placeholder if score $current_pattern gm4_gv_placeholder matches 2 if score $axis gm4_gv_placeholder matches 3 if score $surrounded gm4_gv_placeholder matches 1 run setblock ~ ~ ~ stripped_oak_log[axis=x]

# oak_log
execute if score $placed_block gm4_gv_placeholder matches 0 store success score $placed_block gm4_gv_placeholder if score $current_pattern gm4_gv_placeholder matches 2 if score $axis gm4_gv_placeholder matches 1 if score $capped gm4_gv_placeholder matches 1 run setblock ~ ~ ~ oak_log[axis=y]
execute if score $placed_block gm4_gv_placeholder matches 0 store success score $placed_block gm4_gv_placeholder if score $current_pattern gm4_gv_placeholder matches 2 if score $axis gm4_gv_placeholder matches 2 if score $capped gm4_gv_placeholder matches 1 run setblock ~ ~ ~ oak_log[axis=z]
execute if score $placed_block gm4_gv_placeholder matches 0 store success score $placed_block gm4_gv_placeholder if score $current_pattern gm4_gv_placeholder matches 2 if score $axis gm4_gv_placeholder matches 3 if score $capped gm4_gv_placeholder matches 1 run setblock ~ ~ ~ oak_log[axis=x]

# oak_wood
execute if score $placed_block gm4_gv_placeholder matches 0 store success score $placed_block gm4_gv_placeholder if score $current_pattern gm4_gv_placeholder matches 2 if score $axis gm4_gv_placeholder matches 1 run setblock ~ ~ ~ oak_wood[axis=y]
execute if score $placed_block gm4_gv_placeholder matches 0 store success score $placed_block gm4_gv_placeholder if score $current_pattern gm4_gv_placeholder matches 2 if score $axis gm4_gv_placeholder matches 2 run setblock ~ ~ ~ oak_wood[axis=z]
execute if score $placed_block gm4_gv_placeholder matches 0 store success score $placed_block gm4_gv_placeholder if score $current_pattern gm4_gv_placeholder matches 2 if score $axis gm4_gv_placeholder matches 3 run setblock ~ ~ ~ oak_wood[axis=x]
