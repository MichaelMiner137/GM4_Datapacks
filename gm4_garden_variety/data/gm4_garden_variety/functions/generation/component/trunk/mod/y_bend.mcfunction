
scoreboard players operation #builder.y_bend_ac gm4_gv_component = #builder.current_length gm4_gv_component
scoreboard players operation #builder.y_bend_ac gm4_gv_component %= $y.bend.freq gm4_gv_component
execute if score #builder.y_bend_ac gm4_gv_component matches 0 unless score $y.bend.static gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/trunk/calc/y_bend
execute if score #builder.y_bend_ac gm4_gv_component matches 0 if score #builder.y_rotation_direction gm4_gv_component matches 1 run scoreboard players operation #builder.y_rotation gm4_gv_component += $y.bend.value gm4_gv_component
execute if score #builder.y_bend_ac gm4_gv_component matches 0 if score #builder.y_rotation_direction gm4_gv_component matches -1 run scoreboard players operation #builder.y_rotation gm4_gv_component -= $y.bend.value gm4_gv_component

# check for loop
execute unless score #builder.y_rotation gm4_gv_component matches -90..90 run function gm4_garden_variety:generation/component/trunk/mod/flip_rot
