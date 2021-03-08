# spawns the tree's palm markers
# @s = TREE_TYPE palm spreader AEC marker
# run from gm4_garden_variety:generation/palm_tree/leaf

########## INITIALIZATION ##########

# generate palm variables 
function #gm4_garden_variety:generation/palm_tree/palm_variables

# apply x rotation offset for each palm (generation)
scoreboard players operation palm_rot_mod gm4_tree_data = palm_separation gm4_tree_data
scoreboard players operation palm_rot_mod gm4_tree_data *= palm_spreader_loop gm4_tree_data
#scoreboard players operation palm_rot_mod gm4_tree_data += palm_offet gm4_tree_data

# calculate x rotation offset for each palm (spiral, alternating & random) (math)
scoreboard players operation leaf_layer_rot_spiral_mod gm4_tree_data = leaf_layer_spiral gm4_tree_data
scoreboard players operation leaf_layer_rot_spiral_mod gm4_tree_data *= current_leaf_layer gm4_tree_data
scoreboard players operation leaf_layer_rot_alternate_mod gm4_tree_data = palm_separation gm4_tree_data
scoreboard players operation leaf_layer_rot_alternate_mod gm4_tree_data /= #2 gm4_math_num
scoreboard players operation leaf_layer_rot_alternate_mod gm4_tree_data *= leaf_layer_eoc2 gm4_tree_data
scoreboard players operation leaf_layer_rot_random_mod gm4_tree_data = current_seed gm4_tree_data
scoreboard players operation leaf_layer_rot_random_mod gm4_tree_data /= #360 gm4_math_num

# apply x rotation offset for each palm (spiral OR alternating) (math)
execute if score leaf_layer_rotation_mode gm4_tree_data matches 0 run scoreboard players operation palm_rot_mod gm4_tree_data += leaf_layer_rot_spiral_mod gm4_tree_data
execute if score leaf_layer_rotation_mode gm4_tree_data matches 1 run scoreboard players operation palm_rot_mod gm4_tree_data += leaf_layer_rot_alternate_mod gm4_tree_data
execute if score leaf_layer_rotation_mode gm4_tree_data matches 2 run scoreboard players operation palm_rot_mod gm4_tree_data += leaf_layer_rot_random_mod gm4_tree_data


# set rotation from variables (generation)
execute store result entity @s Rotation[0] float 1 run scoreboard players get palm_rot_mod gm4_tree_data



########## OPTIONAL MODIFIERS ##########

# DEV
execute if score debug gm4_tree_data matches 1 at @s positioned ~ ~ ~10 run particle dolphin ^ ^ ^1 0 0 0 0 1
execute if score debug gm4_tree_data matches 1 at @s run particle dolphin ~ ~ ~10 0 0 0 0 1



########## CORE GENERATION ##########

# set scores for the next part of generation (generation)
scoreboard players operation palm_layer_loop gm4_tree_data = palm_layers gm4_tree_data
scoreboard players set current_palm_layers gm4_tree_data 1

# summon palm marker and begin generation (generation)
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["gm4_tree_palm"]}
execute at @s run tp @e[type=area_effect_cloud,tag=gm4_tree_palm,limit=1,sort=nearest] @s
execute as @e[type=area_effect_cloud,tag=gm4_tree_palm,limit=1,sort=nearest] at @s run function gm4_garden_variety:generation/palm_tree/palm

# loop function until spreader_loop hits 0 (generation)
scoreboard players remove palm_spreader_loop gm4_tree_data 1
execute if score palm_spreader_loop gm4_tree_data matches 0 run kill @s
execute if score palm_spreader_loop gm4_tree_data matches 1.. run function gm4_garden_variety:generation/palm_tree/palm_spreader

