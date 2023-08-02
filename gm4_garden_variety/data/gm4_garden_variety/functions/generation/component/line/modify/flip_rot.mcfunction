
# get lost rotation
scoreboard players operation #line_marker.y_rotation.lost gm4_gv_component = #line_marker.y_rotation gm4_gv_component
execute if score #line_marker.y_rotation gm4_gv_component matches 9001.. run scoreboard players remove #line_marker.y_rotation.lost gm4_gv_component 9000
execute if score #line_marker.y_rotation gm4_gv_component matches ..-9001 run scoreboard players add #line_marker.y_rotation.lost gm4_gv_component 9000
scoreboard players operation #line_marker.y_rotation.lost gm4_gv_component *= #-1 gm4_garden_variety
scoreboard players operation #line_marker.y_rotation gm4_gv_component += #line_marker.y_rotation.lost gm4_gv_component

# flip
scoreboard players add #line_marker.x_rotation gm4_gv_component 18000

# correct x rotation
execute if score #line_marker.x_rotation gm4_gv_component matches 18001.. run scoreboard players remove #line_marker.x_rotation gm4_gv_component 36000
execute if score #line_marker.x_rotation gm4_gv_component matches ..-18001 run scoreboard players add #line_marker.x_rotation gm4_gv_component 36000

# flip y direction
scoreboard players operation #line_marker.y_bend_direction gm4_gv_component *= #-1 gm4_garden_variety
scoreboard players operation #line_marker.x_bend_direction gm4_gv_component *= #-1 gm4_garden_variety
