# generates the tree's leaf layers
# @s = TREE_TYPE leaf AEC marker
# run from gm4_garden_variety:generation/palm_tree/trunk

########## INITIALIZATION ##########

# correct initial position and get initial rotation (generation)
execute if score leaf_layer_loop gm4_tree_data = leaf_layers gm4_tree_data at @s run tp @s ^ ^ ^
execute if score leaf_layer_loop gm4_tree_data = leaf_layers gm4_tree_data at @s store result score current_leaf_y_rot gm4_tree_data run data get entity @s Rotation[1]



########## OPTIONAL MODIFIERS ##########

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

# DEV
execute if score debug gm4_tree_data matches 1 at @s run particle barrier ~ ~.5 ~-9
execute if score debug gm4_tree_data matches 1 at @s run particle happy_villager ~ ~ ~10
execute if score debug gm4_tree_data matches 1 at @s align xyz run particle barrier ~.5 ~.5 ~3.5


########## CORE GENERATION ##########

# generate additional features (generation)
execute at @s run function #gm4_garden_variety:generation/palm_tree/leaf_layer

# calculate an even amount of space between palms (generation)
scoreboard players operation palm_separation gm4_tree_data = #360 gm4_math_num
scoreboard players operation palm_separation gm4_tree_data /= adjusted_palm_amount gm4_tree_data

# summon palm spreader marker and begin generation (generation)
scoreboard players operation palm_spreader_loop gm4_tree_data = adjusted_palm_amount gm4_tree_data
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["gm4_tree_palm_spreader"]}
execute as @e[type=area_effect_cloud,tag=gm4_tree_palm_spreader,limit=1,sort=nearest] at @s run function gm4_garden_variety:generation/palm_tree/palm_spreader

# generate leaf layer and move forward (generation)
scoreboard players set leaf_segment_loop gm4_tree_data 10
execute at @s run function #gm4_garden_variety:generation/palm_tree/leaf_segment
scoreboard players add current_leaf_layer gm4_tree_data 1

# modify y rotation (generation)
scoreboard players operation leaf_y_rot_mod gm4_tree_data = current_leaf_y_rot gm4_tree_data
scoreboard players operation leaf_y_rot_mod gm4_tree_data += leaf_arc gm4_tree_data
scoreboard players operation leaf_y_rot_mod gm4_tree_data += leaf_arc_addition_factor gm4_tree_data
scoreboard players operation current_leaf_y_rot gm4_tree_data = leaf_y_rot_mod gm4_tree_data
execute store result entity @s Rotation[1] float 1 run scoreboard players get current_leaf_y_rot gm4_tree_data

# loop function until layer_loop hits 0 (generation)
scoreboard players remove leaf_layer_loop gm4_tree_data 1
execute if score leaf_layer_loop gm4_tree_data matches 0 run kill @s
execute if score leaf_layer_loop gm4_tree_data matches 1.. run function gm4_garden_variety:generation/palm_tree/leaf


