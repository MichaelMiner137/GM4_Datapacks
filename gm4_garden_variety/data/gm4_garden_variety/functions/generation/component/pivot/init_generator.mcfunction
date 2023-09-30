
# set rotation
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #pivot_generator.x_rotation gm4_gv_component
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get #pivot_generator.y_rotation gm4_gv_component

# create pointer
execute if score $pointer.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/component/pivot/pointer/create_pointer

# clean up
kill @s
