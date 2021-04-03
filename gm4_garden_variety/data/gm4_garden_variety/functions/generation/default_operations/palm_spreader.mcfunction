# spawns the tree's palm markers
# @s = TREE_TYPE palm spreader AEC marker
# run from gm4_garden_variety:generation/methods/palm_tree/palm_spreader



# calculate x rotation offset for each palm (spiral, alternating & random) (math)
scoreboard players operation leaf_layer_rot_spiral_mod gm4_tree_data = leaf_layer_spiral gm4_tree_data
scoreboard players operation leaf_layer_rot_spiral_mod gm4_tree_data *= current_leaf_layer gm4_tree_data
scoreboard players operation leaf_layer_rot_alternate_mod gm4_tree_data = palm_separation gm4_tree_data
scoreboard players operation leaf_layer_rot_alternate_mod gm4_tree_data /= #2 gm4_gv_math_num
scoreboard players operation leaf_layer_rot_alternate_mod gm4_tree_data *= leaf_layer_eoc2 gm4_tree_data
scoreboard players operation leaf_layer_rot_random_mod gm4_tree_data = current_seed gm4_tree_data
scoreboard players operation leaf_layer_rot_random_mod gm4_tree_data /= #360 gm4_gv_math_num

# apply x rotation offset for each palm (math)
execute if score leaf_layer_rotation_mode gm4_tree_data matches 0 run scoreboard players operation palm_rot_mod_2 gm4_tree_data = leaf_layer_rot_spiral_mod gm4_tree_data
execute if score leaf_layer_rotation_mode gm4_tree_data matches 1 run scoreboard players operation palm_rot_mod_2 gm4_tree_data = leaf_layer_rot_alternate_mod gm4_tree_data
execute if score leaf_layer_rotation_mode gm4_tree_data matches 2 run scoreboard players operation palm_rot_mod_2 gm4_tree_data = leaf_layer_rot_random_mod gm4_tree_data

