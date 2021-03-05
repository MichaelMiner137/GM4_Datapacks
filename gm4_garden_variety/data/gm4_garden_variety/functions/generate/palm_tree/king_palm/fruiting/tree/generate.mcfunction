# begins tree generation
# @s = sapling marker area_effect_cloud
# positioned ~ ~n ~ above the AEC rotated as @s
# run from gm4_garden_variety:generate via #gm4_garden_variety:layer/generate

# set target height and rotation from seed and environment
execute if score $current_layer gm4_tree_layer matches 0 run function gm4_garden_variety:generate/palm_tree/king_palm/generate

# cancel generation once all branches were placed
execute if score $current_layer gm4_tree_layer matches 0 run scoreboard players set $cancel_generation gm4_tree_layer 1
