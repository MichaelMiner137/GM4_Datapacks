# generates the tree's palm layers
# @s = caranday palm palm AEC marker
# run from gm4_garden_variety:generation/methods/palm_tree/palm



# identify every other layer by a factor of 2 (math)
scoreboard players operation palm_layer_eo2 gm4_tree_data = palm_layer_eo2 gm4_tree_data
scoreboard players operation palm_layer_eo2 gm4_tree_data %= #2 gm4_gv_math_num

# find the palm arc reduction factor (math)
scoreboard players operation palm_layer_eoc_paar gm4_tree_data = current_palm_layer gm4_tree_data
scoreboard players remove palm_layer_eoc_paar gm4_tree_data 1
scoreboard players operation palm_layer_eoc_paar gm4_tree_data /= palm_arc_addition_rate gm4_tree_data
scoreboard players operation palm_arc_addition_factor gm4_tree_data = palm_arc_addition_amount gm4_tree_data
scoreboard players operation palm_arc_addition_factor gm4_tree_data *= palm_layer_eoc_paar gm4_tree_data
