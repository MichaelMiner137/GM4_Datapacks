
execute if score $relative.y.direction gm4_gv_component matches 1 run scoreboard players operation #pivot_generator.y_rotation gm4_gv_component += $relative.y.offset gm4_gv_component
execute if score $relative.y.direction gm4_gv_component matches -1 run scoreboard players operation #pivot_generator.y_rotation gm4_gv_component -= $relative.y.offset gm4_gv_component

execute unless score #pivot_generator.y_rotation gm4_gv_component matches -9000..9000 run function gm4_garden_variety:generation/component/pivot/modify/flip_rot
