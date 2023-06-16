
scoreboard players operation #builder.x_bend_ac gm4_gv_component = #builder.length.current gm4_gv_component
scoreboard players operation #builder.x_bend_ac gm4_gv_component %= $x.bend.frequency gm4_gv_component
execute if score #builder.x_bend_ac gm4_gv_component matches 0 unless score $x.bend.static gm4_gv_component matches 1 run function gm4_garden_variety:generation/component/line/calc/x_bend
execute if score #builder.x_bend_ac gm4_gv_component matches 0 if score #builder.x.bend.direction gm4_gv_component matches 1 run scoreboard players operation #builder.x.rotation gm4_gv_component += $x.bend.value gm4_gv_component
execute if score #builder.x_bend_ac gm4_gv_component matches 0 if score #builder.x.bend.direction gm4_gv_component matches -1 run scoreboard players operation #builder.x.rotation gm4_gv_component -= $x.bend.value gm4_gv_component

# correct x rotation
execute if score #builder.x.rotation gm4_gv_component matches 181.. run scoreboard players remove #builder.x.rotation gm4_gv_component 360
execute if score #builder.x.rotation gm4_gv_component matches ..-181 run scoreboard players add #builder.x.rotation gm4_gv_component 360
