# generates the tree's trunk layers 
# @s = TREE_TYPE trunk AEC marker
# run from #gm4_garden_variety:generation/methods/palm_tree/initialize

########## INITIALIZATION ##########

advancement grant @a[distance=..15] only gm4:palm_tree

# set initial rotation from variables (generation)
execute if score trunk_layer_loop gm4_tree_data = trunk_layers gm4_tree_data store result entity @s Rotation[0] float 1 run scoreboard players get tree_x_rot gm4_tree_data
execute if score trunk_layer_loop gm4_tree_data = trunk_layers gm4_tree_data store result entity @s Rotation[1] float 1 run scoreboard players get tree_y_rot gm4_tree_data 
execute if score trunk_layer_loop gm4_tree_data = trunk_layers gm4_tree_data run scoreboard players operation current_trunk_y_rot gm4_tree_data = tree_y_rot gm4_tree_data 



########## ADDITIONAL FEATURES ##########

# default variables used in other equations
function gm4_garden_variety:generation/default_operations/trunk

# generate additional features on current layer
execute at @s run function #gm4_garden_variety:generation/methods/palm_tree/trunk_layer

# DEV - visual display
execute if score debug gm4_tree_data matches 1 at @s if score trunk_layer_loop gm4_tree_data matches 1.. run particle barrier ~ ~.5 ~-8
execute if score debug gm4_tree_data matches 1 at @s run particle soul_fire_flame ~ ~ ~10 0 0 0 0 1



########## CORE GENERATION ##########

# summon leaf marker and begin generation
execute if score leaf_start gm4_tree_data = current_trunk_layer gm4_tree_data at @s run summon area_effect_cloud ~ ~ ~ {Tags:["gm4_tree_leaf"]}
execute if score leaf_start gm4_tree_data = current_trunk_layer gm4_tree_data at @s run tp @e[type=area_effect_cloud,tag=gm4_tree_leaf,limit=1,sort=nearest] @s
execute if score leaf_start gm4_tree_data = current_trunk_layer gm4_tree_data at @s run execute as @e[type=area_effect_cloud,tag=gm4_tree_leaf,limit=1,sort=nearest] at @s run function gm4_garden_variety:generation/methods/palm_tree/leaf

# generate trunk layer and move forward
scoreboard players set trunk_segment_loop gm4_tree_data 10
execute if score trunk_layer_loop gm4_tree_data matches 1.. at @s run function #gm4_garden_variety:generation/methods/palm_tree/trunk_segment
scoreboard players add current_trunk_layer gm4_tree_data 1

# modify y rotation
scoreboard players operation trunk_y_rot_mod gm4_tree_data = current_trunk_y_rot gm4_tree_data
scoreboard players operation trunk_y_rot_mod gm4_tree_data += trunk_arc_factor gm4_tree_data
scoreboard players operation trunk_y_rot_mod gm4_tree_data += trunk_arc_addition_factor gm4_tree_data
scoreboard players operation current_trunk_y_rot gm4_tree_data = trunk_y_rot_mod gm4_tree_data
execute if score current_trunk_y_rot gm4_tree_data > minimum_trunk_arc gm4_tree_data run scoreboard players operation current_trunk_y_rot gm4_tree_data = minimum_trunk_arc gm4_tree_data
execute store result entity @s Rotation[1] float 1 run scoreboard players get current_trunk_y_rot gm4_tree_data

# loop function until layer_loop hits 0
scoreboard players remove trunk_layer_loop gm4_tree_data 1
execute if score trunk_layer_loop gm4_tree_data matches -1 run kill @s
execute if score trunk_layer_loop gm4_tree_data matches 0.. run function gm4_garden_variety:generation/methods/palm_tree/trunk


