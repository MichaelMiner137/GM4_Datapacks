# generates the tree's leaf layers
# @s = TREE_TYPE leaf AEC marker
# run from gm4_garden_variety:generation/methods/palm_tree/leaf



# find the leaf arc reduction factor (math)
scoreboard players operation leaf_layer_eoc_laar gm4_tree_data = current_leaf_layer gm4_tree_data
scoreboard players operation leaf_layer_eoc_laar gm4_tree_data += current_trunk_layer gm4_tree_data
scoreboard players remove leaf_layer_eoc_laar gm4_tree_data 2
scoreboard players operation leaf_layer_eoc_taar gm4_tree_data /= leaf_arc_addition_rate gm4_tree_data
scoreboard players operation leaf_arc_addition_factor gm4_tree_data = leaf_arc_addition_amount gm4_tree_data
scoreboard players operation leaf_arc_addition_factor gm4_tree_data *= leaf_layer_eoc_laar gm4_tree_data

# count every other layer by a factor of 2 (math)
scoreboard players operation leaf_layer_eoc2 gm4_tree_data = leaf_layer_loop gm4_tree_data
scoreboard players operation leaf_layer_eoc2 gm4_tree_data /= #2 gm4_math_num

# caclucate the rate at which the layers need to rotate to create a spiral (math)
scoreboard players operation leaf_layer_spiral gm4_tree_data = palm_separation gm4_tree_data
scoreboard players operation leaf_layer_spiral gm4_tree_data /= leaf_layers gm4_tree_data

# find the palm amount reduction factor (math)
scoreboard players operation leaf_layer_eoc_parr gm4_tree_data = current_leaf_layer gm4_tree_data
scoreboard players remove leaf_layer_eoc_parr gm4_tree_data 1
scoreboard players operation leaf_layer_eoc_parr gm4_tree_data /= palm_reduction_rate gm4_tree_data
scoreboard players operation palm_amount_reduction_factor gm4_tree_data = palm_reduction_amount gm4_tree_data
scoreboard players operation palm_amount_reduction_factor gm4_tree_data *= leaf_layer_eoc_parr gm4_tree_data

# apply the palm reduction factor (math)
scoreboard players operation adjusted_palm_amount gm4_tree_data = palm_amount gm4_tree_data
execute if score adjusted_palm_amount gm4_tree_data >= minimum_palm_amount gm4_tree_data run scoreboard players operation adjusted_palm_amount gm4_tree_data -= palm_amount_reduction_factor gm4_tree_data
