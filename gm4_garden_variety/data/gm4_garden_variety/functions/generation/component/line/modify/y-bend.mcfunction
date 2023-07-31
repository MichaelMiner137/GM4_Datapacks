
execute if score #builder.y.bend.direction gm4_gv_component matches 1 run scoreboard players operation #builder.y.rotation gm4_gv_component += $y.bend.value gm4_gv_component
execute if score #builder.y.bend.direction gm4_gv_component matches -1 run scoreboard players operation #builder.y.rotation gm4_gv_component -= $y.bend.value gm4_gv_component

execute unless score #builder.y.rotation gm4_gv_component matches -9000..9000 run function gm4_garden_variety:generation/component/line/modify/flip_rot
