
# get lost rotation
scoreboard players operation #builder.y.rotation.lost gm4_gv_component = #builder.y.rotation gm4_gv_component
execute if score #builder.y.rotation gm4_gv_component matches 91.. run scoreboard players remove #builder.y.rotation.lost gm4_gv_component 90
execute if score #builder.y.rotation gm4_gv_component matches ..-91 run scoreboard players add #builder.y.rotation.lost gm4_gv_component 90
scoreboard players operation #builder.y.rotation.lost gm4_gv_component *= #-1 gm4_garden_variety
scoreboard players operation #builder.y.rotation gm4_gv_component += #builder.y.rotation.lost gm4_gv_component

# flip
scoreboard players add #builder.x.rotation gm4_gv_component 180

# correct x rotation
execute if score #builder.x.rotation gm4_gv_component matches 181.. run scoreboard players remove #builder.x.rotation gm4_gv_component 360
execute if score #builder.x.rotation gm4_gv_component matches ..-181 run scoreboard players add #builder.x.rotation gm4_gv_component 360

# flip y direction
scoreboard players operation #builder.y.bend.direction gm4_gv_component *= #-1 gm4_garden_variety
scoreboard players operation #builder.x.bend.direction gm4_gv_component *= #-1 gm4_garden_variety
