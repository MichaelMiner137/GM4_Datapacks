
# get pattern
execute unless data storage gm4_garden_variety:process pointer_pattern[0] run data modify storage gm4_garden_variety:process pointer_pattern set from storage gm4_garden_variety:reference component.pointer.pattern.identifiers
execute store result score #line_marker.pointer.current_pattern gm4_gv_component run data get storage gm4_garden_variety:process pointer_pattern[0]
data remove storage gm4_garden_variety:process pointer_pattern[0]

# data
scoreboard players operation #x.rotation gm4_gv_pointer = #line_marker.x_rotation gm4_gv_component
scoreboard players operation #y.rotation gm4_gv_pointer = #line_marker.y_rotation gm4_gv_component
scoreboard players operation #x.bend.direction gm4_gv_pointer = #line_marker.x_bend_direction gm4_gv_component
scoreboard players operation #y.bend.direction gm4_gv_pointer = #line_marker.y_bend_direction gm4_gv_component
scoreboard players operation #identifier gm4_gv_pointer = #line_marker.pointer.current_pattern gm4_gv_component

# create pointer
execute if score #identifier gm4_gv_pointer matches 1.. run function gm4_garden_variety:generation/pointer/create_pointer
