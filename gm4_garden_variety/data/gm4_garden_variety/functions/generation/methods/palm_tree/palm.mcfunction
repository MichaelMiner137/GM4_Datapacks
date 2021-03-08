# generates the tree's palm layers
# @s = caranday palm palm AEC marker
# run from gm4_garden_variety:generation/methods/palm_tree/palm_spreader

########## OPTIONAL MODIFIERS ##########

# identify every other layer by a factor of 2 (math)
scoreboard players operation palm_layer_eo2 gm4_tree_data = palm_layer_eo2 gm4_tree_data
scoreboard players operation palm_layer_eo2 gm4_tree_data %= #2 gm4_math_num

# find the palm arc reduction factor (math)
scoreboard players operation palm_layer_eoc_paar gm4_tree_data = current_palm_layers gm4_tree_data
scoreboard players remove palm_layer_eoc_paar gm4_tree_data 1
scoreboard players operation palm_layer_eoc_paar gm4_tree_data /= palm_arc_addition_rate gm4_tree_data
scoreboard players operation palm_arc_addition_factor gm4_tree_data = palm_arc_addition_amount gm4_tree_data
scoreboard players operation palm_arc_addition_factor gm4_tree_data *= palm_layer_eoc_paar gm4_tree_data

# DEV
execute if score debug gm4_tree_data matches 1 at @s run particle dragon_breath ~ ~ ~10

########## CORE GENERATION ##########

# generate additional features (generation)
execute at @s run function #gm4_garden_variety:generation/methods/palm_tree/palm_layer

# get initial rotation (generation)
execute if score palm_layer_loop gm4_tree_data = palm_layers gm4_tree_data store result score current_palm_y_rot gm4_tree_data run data get entity @s Rotation[1]

# generate palm segment and move forward (generation)
scoreboard players set leaf_segment_loop gm4_tree_data 10
execute at @s run function #gm4_garden_variety:generation/methods/palm_tree/palm_segment
scoreboard players add current_palm_layers gm4_tree_data 1

# modify y rotation (generation)
scoreboard players operation palm_y_rot_mod gm4_tree_data = current_palm_y_rot gm4_tree_data
scoreboard players operation palm_y_rot_mod gm4_tree_data += palm_arc gm4_tree_data
scoreboard players operation palm_y_rot_mod gm4_tree_data += palm_arc_addition_factor gm4_tree_data
scoreboard players operation current_palm_y_rot gm4_tree_data = palm_y_rot_mod gm4_tree_data
execute store result entity @s Rotation[1] float 1 run scoreboard players get current_palm_y_rot gm4_tree_data

# loop function until palm_layer_loop hits 0 (generation)
scoreboard players remove palm_layer_loop gm4_tree_data 1
execute if score palm_layer_loop gm4_tree_data matches 0 run kill @s
execute if score palm_layer_loop gm4_tree_data matches 1.. run function gm4_garden_variety:generation/methods/palm_tree/palm