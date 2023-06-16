
# get pattern
scoreboard players operation #builder.pattern_entry_target gm4_gv_component = #builder.length.current gm4_gv_component
scoreboard players remove #builder.pattern_entry_target gm4_gv_component 1
scoreboard players operation #builder.pattern_entry_target gm4_gv_component %= $pattern.length gm4_gv_component
scoreboard players set #builder.pattern_entry gm4_gv_component 0
data modify storage gm4_garden_variety:temp pattern set from storage gm4_garden_variety:reference component.pattern.list

# read
function gm4_garden_variety:generation/component/line/pattern/read_list
