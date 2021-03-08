# generates the tree's leaf layers
# @s = TREE_TYPE leaf AEC marker
# run from gm4_garden_variety:generation/methods/palm_tree/trunk

########## INITIALIZATION ##########

# correct initial position and get initial rotation (generation)
execute if score leaf_layer_loop gm4_tree_data = leaf_layers gm4_tree_data at @s run tp @s ^ ^ ^.1
execute if score leaf_layer_loop gm4_tree_data = leaf_layers gm4_tree_data at @s store result score current_leaf_y_rot gm4_tree_data run data get entity @s Rotation[1]



########## ADDITIONAL FEATURES ##########

# default variables used in other equations
function gm4_garden_variety:generation/default_operations/leaf

# generate additional features on current layer
execute at @s run function #gm4_garden_variety:generation/methods/palm_tree/leaf_layer

# DEV - visual display
execute if score debug gm4_tree_data matches 1 at @s run particle barrier ~ ~.5 ~-9
execute if score debug gm4_tree_data matches 1 at @s run particle happy_villager ~ ~ ~10



########## CORE GENERATION ##########

# summon palm spreader marker and begin generation
scoreboard players operation palm_spreader_loop gm4_tree_data = adjusted_palm_amount gm4_tree_data
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["gm4_tree_palm_spreader"]}
execute as @e[type=area_effect_cloud,tag=gm4_tree_palm_spreader,limit=1,sort=nearest] at @s run function gm4_garden_variety:generation/methods/palm_tree/palm_spreader

# generate leaf layer and move forward
scoreboard players set leaf_segment_loop gm4_tree_data 10
execute at @s run function #gm4_garden_variety:generation/methods/palm_tree/leaf_segment
scoreboard players add current_leaf_layer gm4_tree_data 1

# modify y rotation
scoreboard players operation leaf_y_rot_mod gm4_tree_data = current_leaf_y_rot gm4_tree_data
scoreboard players operation leaf_y_rot_mod gm4_tree_data += leaf_arc gm4_tree_data
scoreboard players operation leaf_y_rot_mod gm4_tree_data += leaf_arc_addition_factor gm4_tree_data
scoreboard players operation current_leaf_y_rot gm4_tree_data = leaf_y_rot_mod gm4_tree_data
execute store result entity @s Rotation[1] float 1 run scoreboard players get current_leaf_y_rot gm4_tree_data

# loop function until layer_loop hits 0
scoreboard players remove leaf_layer_loop gm4_tree_data 1
execute if score leaf_layer_loop gm4_tree_data matches 0 run kill @s
execute if score leaf_layer_loop gm4_tree_data matches 1.. run function gm4_garden_variety:generation/methods/palm_tree/leaf


