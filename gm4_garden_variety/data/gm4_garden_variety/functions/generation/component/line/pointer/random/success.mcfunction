
# data
scoreboard players operation #x.rotation gm4_gv_pointer = #line_marker.x_rotation gm4_gv_component
scoreboard players operation #y.rotation gm4_gv_pointer = #line_marker.y_rotation gm4_gv_component
scoreboard players operation #x.bend.direction gm4_gv_pointer = #line_marker.x_bend_direction gm4_gv_component
scoreboard players operation #y.bend.direction gm4_gv_pointer = #line_marker.y_bend_direction gm4_gv_component
scoreboard players operation #identifier gm4_gv_pointer = $pointer.random.identifier gm4_gv_component

# create pointer
execute unless score #identifier gm4_gv_pointer matches -1 run function gm4_garden_variety:generation/pointer/create_pointer
