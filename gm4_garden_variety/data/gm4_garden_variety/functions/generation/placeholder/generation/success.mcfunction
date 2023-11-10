
# post load data
function gm4_garden_variety:generation/placeholder/generation/post_load_data

#tellraw @p {"nbt":"placeholder","storage":"gm4_garden_variety:reference"}

# placed block tracker
scoreboard players set $placed_block gm4_gv_placeholder 0

# place block
function gm4_garden_variety_trees:trees/king_palm/process_placeholder

# kill marker
kill @s
