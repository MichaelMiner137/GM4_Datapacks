

# get pattern
execute unless data storage gm4_garden_variety:process pointer_pattern[0] run data modify storage gm4_garden_variety:process pointer_pattern set from storage gm4_garden_variety:reference component.pointer.pattern.identifiers
execute store result score #line_marker.pointer.current_pattern gm4_gv_component run data get storage gm4_garden_variety:process pointer_pattern[0]
data remove storage gm4_garden_variety:process pointer_pattern[0]

# data
scoreboard players operation #new_pointer.identifier gm4_gv_component = #line_marker.pointer.current_pattern gm4_gv_component
function gm4_garden_variety:generation/component/line/pointer/store_data

# create pointer
execute if score #new_pointer.identifier gm4_gv_component matches 1.. run function gm4_garden_variety:generation/pointer/create_pointer

execute if score #new_pointer.identifier gm4_gv_component matches 1.. run scoreboard players add #counter.pointer.pattern gm4_gv_component 1
