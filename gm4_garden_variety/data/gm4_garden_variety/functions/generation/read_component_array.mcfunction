
# run each entry
data modify storage gm4_garden_variety:reference component set from storage gm4_garden_variety:process components[0]
data remove storage gm4_garden_variety:process components[0]

# pointer
execute store result score $target gm4_gv_component run data get storage gm4_garden_variety:reference component.target

data modify storage gm4_garden_variety:debug path append value "   ["
execute store result storage gm4_garden_variety:debug hold int 1 run scoreboard players get $target gm4_gv_component
data modify storage gm4_garden_variety:debug path append string storage gm4_garden_variety:debug hold
data modify storage gm4_garden_variety:debug path append value "]   "

# run current component at markers
execute as @e[type=marker,tag=gm4_gv_generation_pointer] if score @s gm4_gv_pointer = $target gm4_gv_component at @s run function gm4_garden_variety:generation/run_component

# loop
execute if data storage gm4_garden_variety:process components[0] run function gm4_garden_variety:generation/read_component_array
