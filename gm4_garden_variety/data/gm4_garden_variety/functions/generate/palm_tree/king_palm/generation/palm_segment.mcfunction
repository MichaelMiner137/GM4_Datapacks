# generate the tree's palm segments (about 1 block)
# @s = TREE_TYPE palm AEC marker
# run from gm4_garden_variety:generation/palm_tree/palm_segment

# place wood to construct the trunk
execute if score current_palm_layers gm4_tree_data matches ..6 at @s run fill ~ ~ ~ ~ ~ ~ birch_leaves[persistent=false] keep
execute if score current_palm_layers gm4_tree_data matches 7.. at @s run fill ~ ~ ~ ~ ~ ~ birch_leaves[persistent=true] keep

# move forward
execute at @s run tp @s ^ ^ ^.1

# loop function until segment_loop hits 0
scoreboard players remove leaf_segment_loop gm4_tree_data 1
execute if score leaf_segment_loop gm4_tree_data matches 1.. run function gm4_garden_variety:generate/palm_tree/king_palm/generation/palm_segment


