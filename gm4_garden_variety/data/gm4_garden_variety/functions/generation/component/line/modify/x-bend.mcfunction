
execute if score #line_generator.x_bend_direction gm4_gv_component matches 1 run scoreboard players operation #line_generator.x_rotation gm4_gv_component += $x.bend.value gm4_gv_component
execute if score #line_generator.x_bend_direction gm4_gv_component matches -1 run scoreboard players operation #line_generator.x_rotation gm4_gv_component -= $x.bend.value gm4_gv_component

execute if score #line_generator.x_rotation gm4_gv_component matches 18001.. run scoreboard players remove #line_generator.x_rotation gm4_gv_component 36000
execute if score #line_generator.x_rotation gm4_gv_component matches ..-18001 run scoreboard players add #line_generator.x_rotation gm4_gv_component 36000
