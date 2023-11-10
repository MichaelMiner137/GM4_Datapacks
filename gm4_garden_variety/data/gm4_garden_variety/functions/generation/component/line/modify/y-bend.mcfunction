
execute if score #line_generator.y_bend_direction gm4_gv_component matches 1 run scoreboard players operation #line_generator.y_rotation gm4_gv_component += $bend.y.value gm4_gv_component
execute if score #line_generator.y_bend_direction gm4_gv_component matches -1 run scoreboard players operation #line_generator.y_rotation gm4_gv_component -= $bend.y.value gm4_gv_component

execute unless score #line_generator.y_rotation gm4_gv_component matches -9000..9000 run function gm4_garden_variety:generation/component/line/modify/flip_rot

execute unless score $bend.y.minimum gm4_gv_component matches 0 if score #line_generator.y_rotation gm4_gv_component < $bend.y.minimum gm4_gv_component run scoreboard players operation #line_generator.y_rotation gm4_gv_component = $bend.y.minimum gm4_gv_component
execute unless score $bend.y.maximum gm4_gv_component matches 0 if score #line_generator.y_rotation gm4_gv_component > $bend.y.maximum gm4_gv_component run scoreboard players operation #line_generator.y_rotation gm4_gv_component = $bend.y.maximum gm4_gv_component

execute store result entity @s Rotation[1] float 0.01 run scoreboard players get #line_generator.y_rotation gm4_gv_component
