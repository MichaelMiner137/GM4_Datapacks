
execute if score #builder.x.bend.direction gm4_gv_component matches 1 run scoreboard players operation #builder.x.rotation gm4_gv_component += $x.bend.value gm4_gv_component
execute if score #builder.x.bend.direction gm4_gv_component matches -1 run scoreboard players operation #builder.x.rotation gm4_gv_component -= $x.bend.value gm4_gv_component

execute if score #builder.x.rotation gm4_gv_component matches 18001.. run scoreboard players remove #builder.x.rotation gm4_gv_component 36000
execute if score #builder.x.rotation gm4_gv_component matches ..-18001 run scoreboard players add #builder.x.rotation gm4_gv_component 36000
