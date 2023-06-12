
# get lost rotation
scoreboard players operation #builder.y_rotation.lost gm4_gv_component = #builder.y_rotation gm4_gv_component
execute if score #builder.y_rotation gm4_gv_component matches 91.. run scoreboard players remove #builder.y_rotation.lost gm4_gv_component 90
execute if score #builder.y_rotation gm4_gv_component matches ..-91 run scoreboard players add #builder.y_rotation.lost gm4_gv_component 90
scoreboard players operation #builder.y_rotation.lost gm4_gv_component *= #-1 gm4_garden_variety
scoreboard players operation #builder.y_rotation gm4_gv_component += #builder.y_rotation.lost gm4_gv_component

# mirror x rotation
scoreboard players operation #builder.x_rotation gm4_gv_component *= #-1 gm4_garden_variety
execute unless score #builder.x_rotation gm4_gv_component matches 45..135 unless score #builder.x_rotation gm4_gv_component matches -135..-45 run scoreboard players add #builder.x_rotation gm4_gv_component 180

# correct x rotation
execute if score #builder.x_rotation gm4_gv_component matches 181.. run scoreboard players remove #builder.x_rotation gm4_gv_component 360
execute if score #builder.x_rotation gm4_gv_component matches ..-181 run scoreboard players add #builder.x_rotation gm4_gv_component 360

# flip y direction
scoreboard players operation #builder.y_rotation_direction gm4_gv_component *= #-1 gm4_garden_variety
scoreboard players operation #builder.x_rotation_direction gm4_gv_component *= #-1 gm4_garden_variety
