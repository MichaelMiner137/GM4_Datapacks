# generate the tree's leaf segments (about 1 block)
# @s = TREE_TYPE leaf AEC marker
# run from gm4_garden_variety:generation/methods/palm_tree/leaf_segment

# move forward
execute at @s run tp @s ^ ^ ^.1

# loop function until segment_loop hits 0
scoreboard players remove leaf_segment_loop gm4_tree_data 1
execute if score leaf_segment_loop gm4_tree_data matches 1.. run function gm4_garden_variety:generate/palm_tree/king_palm/generation/leaf_segment


