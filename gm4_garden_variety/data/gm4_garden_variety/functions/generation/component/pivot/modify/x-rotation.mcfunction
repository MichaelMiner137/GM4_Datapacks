
execute if score $relative.x.direction gm4_gv_component matches 1 run scoreboard players operation #pivot_generator.x_rotation gm4_gv_component += $relative.x.offset gm4_gv_component
execute if score $relative.x.direction gm4_gv_component matches -1 run scoreboard players operation #pivot_generator.x_rotation gm4_gv_component -= $relative.x.offset gm4_gv_component

execute if score #pivot_generator.x_rotation gm4_gv_component matches 18001.. run scoreboard players remove #pivot_generator.x_rotation gm4_gv_component 36000
execute if score #pivot_generator.x_rotation gm4_gv_component matches ..-18001 run scoreboard players add #pivot_generator.x_rotation gm4_gv_component 36000
