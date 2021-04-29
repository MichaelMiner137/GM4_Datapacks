# generates variables for the tree based on the current seed
# run from gm4_natural_trees:generate/palm_tree/TREE_TYPE/generate



########## TRUNK ##########

# initial x rotation for the tree (1-360)
scoreboard players set tree_x_rot_minimum gm4_tree_data 1
scoreboard players set tree_x_rot_range gm4_tree_data 360

# initial y rotation for the tree (81-90)
scoreboard players set tree_y_rot_minimum gm4_tree_data 81
scoreboard players set tree_y_rot_range gm4_tree_data 10

# amount of trunk layers for the tree (9-11)
scoreboard players set trunk_layers_minimum gm4_tree_data 9
scoreboard players set trunk_layers_range gm4_tree_data 3

# arc rate for the trunk layers (1,0,0)
scoreboard players set minimum_trunk_arc gm4_tree_data -40
scoreboard players set trunk_arc_rate gm4_tree_data 1
scoreboard players set trunk_arc_amount gm4_tree_data 1
scoreboard players set trunk_arc_addition_rate gm4_tree_data 0
scoreboard players set trunk_arc_addition_amount gm4_tree_data 0



########## LEAF ##########

# amount of leaf layers for the tree (2)
scoreboard players set leaf_layers_minimum gm4_tree_data 2
scoreboard players set leaf_layers_range gm4_tree_data 1

# layer at which leafs start to generate on the trunk (1,2)
scoreboard players set leaf_layer_start_minimum gm4_tree_data 1
scoreboard players set leaf_layer_start_range gm4_tree_data 2

# leaf layer progression mode (1) (0 = Spiral, 1 = Alternating, 2 = Random)
scoreboard players set leaf_layer_rotation_mode gm4_tree_data 1



########## PALM ##########

# amount of palms for the tree (5-7)
scoreboard players set palm_amount_minimum gm4_tree_data 5
scoreboard players set palm_amount_range gm4_tree_data 3

# minimum palm amount for the tree (3)
scoreboard players set minimum_palm_amount gm4_tree_data 3

# rate at which palm amount is reduced (1,0)
scoreboard players set palm_reduction_rate gm4_tree_data 1
scoreboard players set palm_reduction_amount gm4_tree_data 0



########## DECORATION ##########

# amount of leaves that contain a sapling (1, 20)
scoreboard players set sapling_leaves_minimum gm4_tree_data 1
scoreboard players set sapling_leaves_range gm4_tree_data 1
scoreboard players set sapling_leaves_block_chance gm4_tree_data 10

# amount of leaves that may contain fruit (1, 20%)
scoreboard players set fruit_leaves_chance gm4_tree_data 5
scoreboard players set fruit_leaves_minimum gm4_tree_data 1
scoreboard players set fruit_leaves_range gm4_tree_data 1



########## FINALIZE ##########

# apply trait override variables
function gm4_natural_trees:generate/king_palm/generation/variables/tree_trait_override

# convert user variables to generation variables
function gm4_garden_variety:generation/variables/initial/tree