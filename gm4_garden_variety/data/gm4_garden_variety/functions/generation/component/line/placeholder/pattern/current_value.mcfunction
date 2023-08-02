
# get pattern
execute unless data storage gm4_garden_variety:process placeholder_pattern[0] run data modify storage gm4_garden_variety:process placeholder_pattern set from storage gm4_garden_variety:reference component.placeholder.pattern
execute store result score #line_marker.placeholder.current_pattern gm4_gv_component run data get storage gm4_garden_variety:process placeholder_pattern[0]
data remove storage gm4_garden_variety:process placeholder_pattern[0]
