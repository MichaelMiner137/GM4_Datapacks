
# get lost rotation
scoreboard players operation #pointer.y.rotation.original gm4_gv_component = #pointer.y.rotation gm4_gv_component
execute if score #pointer.y.rotation.original gm4_gv_component matches 9001.. run scoreboard players remove #pointer.y.rotation gm4_gv_component 18000
execute if score #pointer.y.rotation.original gm4_gv_component matches ..-9001 run scoreboard players add #pointer.y.rotation gm4_gv_component 18000
scoreboard players operation #pointer.y.rotation gm4_gv_component *= #-1 gm4_garden_variety

# flip
scoreboard players add #pointer.x.rotation gm4_gv_component 18000

# correct x rotation
execute if score #pointer.x.rotation gm4_gv_component matches 18001.. run scoreboard players remove #pointer.x.rotation gm4_gv_component 36000
execute if score #pointer.x.rotation gm4_gv_component matches ..-18001 run scoreboard players add #pointer.x.rotation gm4_gv_component 36000

# flip y direction
scoreboard players operation $y.rotation.offset.direction gm4_gv_component *= #-1 gm4_garden_variety
scoreboard players operation $x.rotation.offset.direction gm4_gv_component *= #-1 gm4_garden_variety
