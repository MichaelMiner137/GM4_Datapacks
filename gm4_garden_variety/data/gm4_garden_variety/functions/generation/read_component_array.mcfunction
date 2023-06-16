
# run each entry
data modify storage gm4_garden_variety:reference component set from storage gm4_garden_variety:process components[0]
data remove storage gm4_garden_variety:process components[0]

# pointer
execute store result score $pointer.target gm4_gv_component run data get storage gm4_garden_variety:reference component.target

# debug
#say -----
#tellraw @p [{"nbt":"component.type","storage":"gm4_garden_variety:temp"}]
#execute as @e[type=marker,tag=gm4_gv_generation_pointer] run tellraw @p [{"score":{"name":"@s","objective":"gm4_gv_pointer"}}," = ",{"score":{"name":"$pointer.target","objective":"gm4_gv_component"}}]

# run current component at markers
execute as @e[type=marker,tag=gm4_gv_generation_pointer] if score @s gm4_gv_pointer = $pointer.target gm4_gv_component at @s run function gm4_garden_variety:generation/run_component

# loop
execute if data storage gm4_garden_variety:process components[0] run function gm4_garden_variety:generation/read_component_array
