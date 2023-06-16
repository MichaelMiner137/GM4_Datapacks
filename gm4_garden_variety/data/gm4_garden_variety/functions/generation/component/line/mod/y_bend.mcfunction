
scoreboard players operation #builder.y_bend_ac gm4_gv_component = #builder.length.current gm4_gv_component
scoreboard players operation #builder.y_bend_ac gm4_gv_component %= $y.bend.frequency gm4_gv_component
execute if score #builder.y_bend_ac gm4_gv_component matches 0 unless score $y.bend.static gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/line/calc/y_bend
execute if score #builder.y_bend_ac gm4_gv_component matches 0 if score #builder.y.bend.direction gm4_gv_component matches 1 run scoreboard players operation #builder.y.rotation gm4_gv_component += $y.bend.value gm4_gv_component
execute if score #builder.y_bend_ac gm4_gv_component matches 0 if score #builder.y.bend.direction gm4_gv_component matches -1 run scoreboard players operation #builder.y.rotation gm4_gv_component -= $y.bend.value gm4_gv_component

# check for loop
execute unless score #builder.y.rotation gm4_gv_component matches -90..90 run function gm4_garden_variety:generation/component/line/mod/flip_rot
