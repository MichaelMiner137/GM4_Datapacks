
# load data
function gm4_garden_variety:generation/placeholder/load_data

# placed block tracker
scoreboard players set $placed_block gm4_gv_placeholder 0

# trunk
execute if score $identifier gm4_gv_placeholder matches 1 run function gm4_garden_variety_trees:trees/king_palm/placeholder/1
execute if score $identifier gm4_gv_placeholder matches 2 run function gm4_garden_variety_trees:trees/king_palm/placeholder/2

# kill marker
kill @s
