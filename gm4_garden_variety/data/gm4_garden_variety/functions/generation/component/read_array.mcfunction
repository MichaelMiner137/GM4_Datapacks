
# run each entry
data modify storage gm4_garden_variety:temp component set from storage gm4_garden_variety:temp components[0]
data remove storage gm4_garden_variety:temp components[0]

# run current component at markers
execute as @e[type=marker,tag=gm4_gv_generation_pointer] at @s run function gm4_garden_variety:generation/component/list

# loop
execute if data storage gm4_garden_variety:temp components[0] run function gm4_garden_variety:generation/component/read_array
