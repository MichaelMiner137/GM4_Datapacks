
# get lost rotation
scoreboard players operation #line_generator.y_rotation.lost gm4_gv_component = #line_generator.y_rotation gm4_gv_component
execute if score #line_generator.y_rotation gm4_gv_component matches 9001.. run scoreboard players remove #line_generator.y_rotation.lost gm4_gv_component 9000
execute if score #line_generator.y_rotation gm4_gv_component matches ..-9001 run scoreboard players add #line_generator.y_rotation.lost gm4_gv_component 9000
scoreboard players operation #line_generator.y_rotation.lost gm4_gv_component *= #-1 gm4_garden_variety
scoreboard players operation #line_generator.y_rotation gm4_gv_component += #line_generator.y_rotation.lost gm4_gv_component

# flip
scoreboard players add #line_generator.x_rotation gm4_gv_component 18000

# correct x rotation
execute if score #line_generator.x_rotation gm4_gv_component matches 18001.. run scoreboard players remove #line_generator.x_rotation gm4_gv_component 36000
execute if score #line_generator.x_rotation gm4_gv_component matches ..-18001 run scoreboard players add #line_generator.x_rotation gm4_gv_component 36000

# flip y direction
scoreboard players operation #line_generator.y_bend_direction gm4_gv_component *= #-1 gm4_garden_variety
scoreboard players operation #line_generator.x_bend_direction gm4_gv_component *= #-1 gm4_garden_variety

execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #line_generator.x_rotation gm4_gv_component
