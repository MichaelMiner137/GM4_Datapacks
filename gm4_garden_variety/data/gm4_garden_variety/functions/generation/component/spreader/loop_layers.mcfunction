
data modify storage gm4_garden_variety:debug path append value "|"

# load data
function gm4_garden_variety:generation/component/spreader/load_data_layer

# set rotation
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #spreader_generator.x_rotation gm4_gv_component
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get #spreader_generator.y_rotation gm4_gv_component

# build layer
scoreboard players operation #spreader_generator.pointers_left gm4_gv_component = $pointers.amount gm4_gv_component
scoreboard players set #spreader_generator.pointers_current gm4_gv_component 1
function gm4_garden_variety:generation/component/spreader/loop_pointers

# loop
execute if data storage gm4_garden_variety:process layers[0] run function gm4_garden_variety:generation/component/spreader/loop_layers
