
execute if score #line_generator.x_bend_direction gm4_gv_component matches 1 run scoreboard players operation #line_generator.x_rotation gm4_gv_component += $bend.x.value gm4_gv_component
execute if score #line_generator.x_bend_direction gm4_gv_component matches -1 run scoreboard players operation #line_generator.x_rotation gm4_gv_component -= $bend.x.value gm4_gv_component

execute if score #line_generator.x_rotation gm4_gv_component matches 18001.. run scoreboard players remove #line_generator.x_rotation gm4_gv_component 36000
execute if score #line_generator.x_rotation gm4_gv_component matches ..-18001 run scoreboard players add #line_generator.x_rotation gm4_gv_component 36000

execute unless score $bend.x.minimum gm4_gv_component matches 0 if score #line_generator.x_rotation gm4_gv_component < $bend.x.minimum gm4_gv_component run scoreboard players operation #line_generator.x_rotation gm4_gv_component = $bend.x.minimum gm4_gv_component
execute unless score $bend.x.maximum gm4_gv_component matches 0 if score #line_generator.x_rotation gm4_gv_component > $bend.x.maximum gm4_gv_component run scoreboard players operation #line_generator.x_rotation gm4_gv_component = $bend.x.maximum gm4_gv_component
