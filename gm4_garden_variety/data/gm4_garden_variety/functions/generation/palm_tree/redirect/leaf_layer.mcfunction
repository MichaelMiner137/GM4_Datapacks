# generates the tree's palm layers (calls different function for each tree) 
# @s = TREE_TYPE palm AEC marker
# run from gm4_garden_variety:generation/palm_tree/leaf_layer

execute if score king_palm gm4_tree_type matches 1 run function gm4_garden_variety:generate/palm_tree/king_palm/generation/leaf_layer
execute if score caranday_palm gm4_tree_type matches 1 run function gm4_garden_variety:generate/palm_trees/caranday_palm/generation/leaf_layer
execute if score fox_tail_palm gm4_tree_type matches 1 run function gm4_garden_variety:generate/palm_trees/fox_tail_palm/generation/leaf_layer
execute if score windmill_palm gm4_tree_type matches 1 run function gm4_garden_variety:generate/palm_trees/windmill_palm/generation/leaf_layer
execute if score spindle_palm gm4_tree_type matches 1 run function gm4_garden_variety:generate/palm_trees/spindle_palm/generation/leaf_layer
execute if score coconut_palm gm4_tree_type matches 1 run function gm4_garden_variety:generate/palm_trees/coconut_palm/generation/leaf_layer

