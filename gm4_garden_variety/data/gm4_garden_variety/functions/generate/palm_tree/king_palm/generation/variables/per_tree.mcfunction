# generates variables for the tree based on the current seed
# run from gm4_garden_variety:trees/TREE_TYPE/generate

# initial x rotation for the tree (1-360)
scoreboard players operation initial_trunk_x_rot gm4_tree_data = current_seed gm4_tree_data
scoreboard players operation initial_trunk_x_rot gm4_tree_data %= #360 gm4_math_num
scoreboard players add initial_trunk_x_rot gm4_tree_data 1
function gm4_garden_variety:get/next_seed_value

# initial y rotation for the tree (81-90)
scoreboard players operation initial_trunk_y_rot gm4_tree_data = current_seed gm4_tree_data
scoreboard players operation initial_trunk_y_rot gm4_tree_data %= #10 gm4_math_num
execute if score initial_trunk_y_rot gm4_tree_data matches 1.. run scoreboard players operation initial_trunk_y_rot gm4_tree_data *= #-1 gm4_math_num
scoreboard players remove initial_trunk_y_rot gm4_tree_data 81
function gm4_garden_variety:get/next_seed_value

# amount of trunk layers for the tree (9-11)
scoreboard players operation trunk_layers gm4_tree_data = current_seed gm4_tree_data
scoreboard players operation trunk_layers gm4_tree_data %= #3 gm4_math_num
scoreboard players add trunk_layers gm4_tree_data 9
function gm4_garden_variety:get/next_seed_value

# arc rate for the trunk layers (1,0,0)
scoreboard players set trunk_arc gm4_tree_data 1
scoreboard players set trunk_arc_addition_rate gm4_tree_data 0
scoreboard players set trunk_arc_addition_amount gm4_tree_data 0

# arc rate for the leaf layers (copies trunk)
scoreboard players operation leaf_arc gm4_tree_data = trunk_arc gm4_tree_data
scoreboard players operation leaf_arc_addition_rate gm4_tree_data = trunk_arc_addition_rate gm4_tree_data
scoreboard players operation leaf_arc_addition_amount gm4_tree_data = trunk_arc_addition_amount gm4_tree_data

# amount of palms for the tree (5-7)
scoreboard players operation palm_amount gm4_tree_data = current_seed gm4_tree_data
scoreboard players operation palm_amount gm4_tree_data %= #3 gm4_math_num
scoreboard players add palm_amount gm4_tree_data 5
function gm4_garden_variety:get/next_seed_value

# minimum palm amount for the tree (3)
scoreboard players add minimum_palm_amount gm4_tree_data 3

# rate at which palm amount is reduced (2,1)
scoreboard players set palm_reduction_rate gm4_tree_data 1
scoreboard players set palm_reduction_amount gm4_tree_data 1

# amount of leaf layers for the tree (2)
scoreboard players set leaf_layers gm4_tree_data 2

# layer at which leafs start to generate on the trunk (2)       *implementation varies per tree
scoreboard players set leaf_layer_start gm4_tree_data 2

# leaf layer progression mode (1) (0 = Spiral, 1 = Alternating)
scoreboard players set leaf_layer_rotation_mode gm4_tree_data 0

# amount of leaves that contain a sapling (1)
scoreboard players set sapling_leaves gm4_tree_data 1

# amount of leaves that may contain fruit (1, 20%)
scoreboard players operation fruit_leaves gm4_tree_data = current_seed gm4_tree_data
scoreboard players operation fruit_leaves gm4_tree_data %= #5 gm4_math_num
execute if score fruit_leaves gm4_tree_data matches 1.. run scoreboard players set fruit_leaves gm4_tree_data -1
execute if score fruit_leaves gm4_tree_data matches 0 run scoreboard players set fruit_leaves gm4_tree_data 1
execute if score fruit_leaves gm4_tree_data matches -1 run scoreboard players set fruit_leaves gm4_tree_data 0
function gm4_garden_variety:get/next_seed_value

