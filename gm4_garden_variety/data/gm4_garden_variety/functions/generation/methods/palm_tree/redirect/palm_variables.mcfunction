# generates the tree's trunk layers
# @s = caranday palm trunk AEC marker
# run from gm4_garden_variety:generation/methods/palm_tree/palm_spreader

execute if score king_palm gm4_tree_type matches 1 run function gm4_garden_variety:generate/palm_tree/king_palm/generation/variables/per_palm
execute if score caranday_palm gm4_tree_type matches 1 run function gm4_garden_variety:generate/palm_trees/caranday_palm/generation/variables/per_palm
execute if score fox_tail_palm gm4_tree_type matches 1 run function gm4_garden_variety:generate/palm_trees/fox_tail_palm/generation/variables/per_palm
execute if score windmill_palm gm4_tree_type matches 1 run function gm4_garden_variety:generate/palm_trees/windmill_palm/generation/variables/per_palm
execute if score spindle_palm gm4_tree_type matches 1 run function gm4_garden_variety:generate/palm_trees/spindle_palm/generation/variables/per_palm
execute if score coconut_palm gm4_tree_type matches 1 run function gm4_garden_variety:generate/palm_trees/coconut_palm/generation/variables/per_palm

