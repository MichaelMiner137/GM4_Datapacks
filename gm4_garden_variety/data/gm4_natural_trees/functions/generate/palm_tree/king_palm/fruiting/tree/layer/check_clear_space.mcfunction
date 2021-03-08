# recursively checks how much clear space there is above a sapling
# @s = sapling marker area_effect_cloud
# at positioned ~ ~n ~ where n is the current iteration of the recursion
# run from gm4_garden_variety:trees/TREE_TYPE/fruiting/tree/initialize

# set min height
scoreboard players add $max_layer gm4_tree_layer 1

# recurse if max_height for species was not reached yet
execute unless score $max_layer gm4_tree_layer >= #king_palm_max_height gm4_tree_limit positioned ~ ~1 ~ if predicate gm4_fruiting_trees:5x5_clear run function gm4_natural_trees:generate/palm_tree/king_palm/fruiting/tree/layer/check_clear_space
