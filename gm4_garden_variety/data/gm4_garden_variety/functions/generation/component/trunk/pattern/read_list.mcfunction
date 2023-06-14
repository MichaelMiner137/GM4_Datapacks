
# set values
execute if score #builder.pattern_entry gm4_gv_component = #builder.pattern_entry_target gm4_gv_component store result score #builder.current_pattern gm4_gv_component run data get storage gm4_garden_variety:temp pattern[0]
scoreboard players add #builder.pattern_entry gm4_gv_component 1

# loop
data remove storage gm4_garden_variety:temp pattern[0]
execute if data storage gm4_garden_variety:temp pattern[0] run function gm4_garden_variety:generation/component/trunk/pattern/read_list
