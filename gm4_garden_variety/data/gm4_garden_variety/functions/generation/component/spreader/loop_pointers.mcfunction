
# load data
function gm4_garden_variety:generation/component/spreader/load_data_pointer

# set rotation
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #spreader_generator.pointer_rotation.x gm4_gv_component
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get #spreader_generator.pointer_rotation.y gm4_gv_component

# create pointer
function gm4_garden_variety:generation/component/spreader/pointer/create_pointer

# rotate
scoreboard players operation #spreader_generator.x_rotation gm4_gv_component += #spreader_generator.interval_rotation.x gm4_gv_component

# loop
scoreboard players remove #spreader_generator.pointers_left gm4_gv_component 1
scoreboard players add #spreader_generator.pointers_current gm4_gv_component 1
execute if score #spreader_generator.pointers_left gm4_gv_component matches 1.. at @s if block ~ ~ ~ #gm4_garden_variety:passthrough rotated as @s run function gm4_garden_variety:generation/component/spreader/loop_pointers
