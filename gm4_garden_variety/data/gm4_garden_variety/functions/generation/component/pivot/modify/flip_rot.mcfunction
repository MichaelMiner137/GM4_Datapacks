
# get lost rotation
scoreboard players operation #pivot_generator.y_rotation.original gm4_gv_component = #pivot_generator.y_rotation gm4_gv_component
execute if score #pivot_generator.y_rotation.original gm4_gv_component matches 9001.. run scoreboard players remove #pivot_generator.y_rotation gm4_gv_component 18000
execute if score #pivot_generator.y_rotation.original gm4_gv_component matches ..-9001 run scoreboard players add #pivot_generator.y_rotation gm4_gv_component 18000
scoreboard players operation #pivot_generator.y_rotation gm4_gv_component *= #-1 gm4_garden_variety

# flip
scoreboard players add #pivot_generator.x_rotation gm4_gv_component 18000

# correct x rotation
execute if score #pivot_generator.x_rotation gm4_gv_component matches 18001.. run scoreboard players remove #pivot_generator.x_rotation gm4_gv_component 36000
execute if score #pivot_generator.x_rotation gm4_gv_component matches ..-18001 run scoreboard players add #pivot_generator.x_rotation gm4_gv_component 36000

# flip y direction
scoreboard players operation $y.rotation.offset.direction gm4_gv_component *= #-1 gm4_garden_variety
scoreboard players operation $x.rotation.offset.direction gm4_gv_component *= #-1 gm4_garden_variety
