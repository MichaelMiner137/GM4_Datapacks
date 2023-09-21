
# set rotation
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #spreader_generator.x_rotation gm4_gv_component
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get #spreader_generator.y_rotation gm4_gv_component

# start
execute if data storage gm4_garden_variety:process layers[0] run function gm4_garden_variety:generation/component/spreader/loop_layers

# clean up
kill @s
