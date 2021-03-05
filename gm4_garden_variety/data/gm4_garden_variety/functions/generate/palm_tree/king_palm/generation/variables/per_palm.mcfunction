# generates variables for each palm based on the current seed
# run from gm4_garden_variety:generation/variables/per_palm

# arc rate for each palm (layer based)
execute if score current_leaf_layer gm4_tree_data matches 1..2 run scoreboard players operation palm_arc gm4_tree_data = current_seed gm4_tree_data
execute if score current_leaf_layer gm4_tree_data matches 1 run scoreboard players operation palm_arc gm4_tree_data %= #10 gm4_math_num
execute if score current_leaf_layer gm4_tree_data matches 1 run scoreboard players add palm_arc gm4_tree_data 5
execute if score current_leaf_layer gm4_tree_data matches 1 run scoreboard players set palm_arc_addition_rate gm4_tree_data 1
execute if score current_leaf_layer gm4_tree_data matches 1 run scoreboard players set palm_arc_addition_amount gm4_tree_data 5
execute if score current_leaf_layer gm4_tree_data matches 2 run scoreboard players operation palm_arc gm4_tree_data %= #5 gm4_math_num
execute if score current_leaf_layer gm4_tree_data matches 2 run scoreboard players add palm_arc gm4_tree_data 5
execute if score current_leaf_layer gm4_tree_data matches 2 run scoreboard players set palm_arc_addition_rate gm4_tree_data 1
execute if score current_leaf_layer gm4_tree_data matches 2 run scoreboard players set palm_arc_addition_amount gm4_tree_data 2
function gm4_garden_variety:get/next_seed_value

# x rotation offset for each palm (1-10) (-/+)
scoreboard players operation palm_offet gm4_tree_data = current_seed gm4_tree_data
scoreboard players operation palm_offet gm4_tree_data %= #10 gm4_math_num
scoreboard players add palm_offet gm4_tree_data 1
function gm4_garden_variety:get/random_sign
scoreboard players operation palm_offet gm4_tree_data *= random_sign gm4_math_num
function gm4_garden_variety:get/next_seed_value

# initial y rotation for each palm (layer based)
execute if score current_leaf_layer gm4_tree_data matches 1 at @s run tp @s ~ ~ ~ ~ -65
execute if score current_leaf_layer gm4_tree_data matches 2 at @s run tp @s ~ ~ ~ ~ -80

# length of each palm (layer based)
execute if score current_leaf_layer gm4_tree_data matches 1..2 run scoreboard players operation palm_layers gm4_tree_data = current_seed gm4_tree_data
execute if score current_leaf_layer gm4_tree_data matches 1 run scoreboard players set palm_layers gm4_tree_data 7
execute if score current_leaf_layer gm4_tree_data matches 2 run scoreboard players operation palm_layers gm4_tree_data %= #2 gm4_math_num
execute if score current_leaf_layer gm4_tree_data matches 2 run scoreboard players add palm_layers gm4_tree_data 6
function gm4_garden_variety:get/next_seed_value
