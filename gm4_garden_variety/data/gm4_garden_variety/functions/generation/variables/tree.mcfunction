# generates variables for the tree based on the current seed
# run from gm4_natural_trees:generate/palm_tree/TREE_TYPE/generate



########## TRUNK ##########

# initial x rotation for the tree
scoreboard players operation tree_x_rot gm4_tree_data = current_seed gm4_tree_data
scoreboard players operation tree_x_rot gm4_tree_data %= tree_x_rot_range gm4_tree_data
scoreboard players operation tree_x_rot gm4_tree_data += tree_x_rot_minimum gm4_tree_data
execute if score tree_x_rot gm4_tree_data matches 1000.. run scoreboard players set tree_x_rot gm4_tree_data 0
function gm4_garden_variety:get/next_seed_value

# initial y rotation for the tree
scoreboard players operation tree_y_rot gm4_tree_data = current_seed gm4_tree_data
scoreboard players operation tree_y_rot gm4_tree_data %= tree_y_rot_range gm4_tree_data
scoreboard players operation tree_y_rot gm4_tree_data += tree_y_rot_minimum gm4_tree_data
execute if score tree_y_rot gm4_tree_data matches 1.. run scoreboard players operation tree_y_rot gm4_tree_data *= #-1 gm4_gv_math_num
execute if score tree_y_rot gm4_tree_data = matches 1000.. run scoreboard players set tree_y_rot gm4_tree_data 0
function gm4_garden_variety:get/next_seed_value

# amount of trunk layers for the tree
scoreboard players operation trunk_layers gm4_tree_data = current_seed gm4_tree_data
scoreboard players operation trunk_layers gm4_tree_data %= trunk_layers_range gm4_tree_data
scoreboard players operation trunk_layers gm4_tree_data += trunk_layers_minimum gm4_tree_data
execute if score trunk_layers gm4_tree_data = matches 1000.. run scoreboard players set trunk_layers gm4_tree_data 0
function gm4_garden_variety:get/next_seed_value



########## LEAF ##########

# amount of leaf layers for the tree
scoreboard players operation leaf_layers gm4_tree_data = current_seed gm4_tree_data
scoreboard players operation leaf_layers gm4_tree_data %= leaf_layers_range gm4_tree_data
scoreboard players operation leaf_layers gm4_tree_data += leaf_layers_minimum gm4_tree_data
execute if score leaf_layers gm4_tree_data = matches 1000.. run scoreboard players set leaf_layers gm4_tree_data 0
function gm4_garden_variety:get/next_seed_value

# layer at which leafs start to generate on the trunk (2)       *implementation varies per tree
scoreboard players operation leaf_layer_start gm4_tree_data = current_seed gm4_tree_data
scoreboard players operation leaf_layer_start gm4_tree_data %= leaf_layer_start_range gm4_tree_data
scoreboard players operation leaf_layer_start gm4_tree_data += leaf_layer_start_minimum gm4_tree_data
execute if score leaf_layer_start gm4_tree_data = matches 1000.. run scoreboard players set leaf_layer_start gm4_tree_data 0
function gm4_garden_variety:get/next_seed_value



########## PALM ##########

# amount of palms for the tree 
scoreboard players operation palm_amount gm4_tree_data = current_seed gm4_tree_data
scoreboard players operation palm_amount gm4_tree_data %= palm_amount_range gm4_tree_data
scoreboard players operation palm_amount gm4_tree_data += palm_amount_minimum gm4_tree_data
execute if score palm_amount gm4_tree_data = matches 1000.. run scoreboard players set palm_amount gm4_tree_data 0
function gm4_garden_variety:get/next_seed_value



########## DECORATION ##########

# amount of leaves that contain a sapling
scoreboard players operation sapling_leaves gm4_tree_data = current_seed gm4_tree_data
scoreboard players operation sapling_leaves gm4_tree_data %= sapling_leaves_range gm4_tree_data
scoreboard players operation sapling_leaves gm4_tree_data += sapling_leaves_minimum gm4_tree_data
execute if score sapling_leaves gm4_tree_data = matches 1000.. run scoreboard players set sapling_leaves gm4_tree_data 0
function gm4_garden_variety:get/next_seed_value

# amount of leaves that may contain fruit
scoreboard players operation fruit_leaves_chance_success gm4_tree_data = current_seed gm4_tree_data
scoreboard players operation fruit_leaves_chance_success gm4_tree_data %= fruit_leaves_chance gm4_tree_data
execute if score fruit_leaves_chance_success gm4_tree_data matches 1.. run scoreboard players set fruit_leaves gm4_tree_data 0
#
execute if score fruit_leaves_chance_success gm4_tree_data matches 0 run scoreboard players operation fruit_leaves gm4_tree_data = current_seed gm4_tree_data
execute if score fruit_leaves_chance_success gm4_tree_data matches 0 run scoreboard players operation fruit_leaves gm4_tree_data %= fruit_leaves_range gm4_tree_data
execute if score fruit_leaves_chance_success gm4_tree_data matches 0 run scoreboard players operation fruit_leaves gm4_tree_data += fruit_leaves_minimum gm4_tree_data
execute if score fruit_leaves gm4_tree_data = matches 1000.. run scoreboard players set fruit_leaves gm4_tree_data 0
function gm4_garden_variety:get/next_seed_value

