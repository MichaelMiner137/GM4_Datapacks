
data remove storage gm4_garden_variety:debug path

# get seed
function gm4_garden_variety:generation/seed/generate_seed_position

# clearance reset
scoreboard players set $clearance gm4_gv_generation 0

# get sapling
scoreboard players set $sapling gm4_gv_generation 0
execute if block ~ ~ ~ oak_sapling run scoreboard players set $sapling gm4_gv_generation 1
execute if block ~ ~ ~ birch_sapling run scoreboard players set $sapling gm4_gv_generation 2
execute if block ~ ~ ~ spruce_sapling run scoreboard players set $sapling gm4_gv_generation 3
execute if block ~ ~ ~ jungle_sapling run scoreboard players set $sapling gm4_gv_generation 4
execute if block ~ ~ ~ dark_oak_sapling run scoreboard players set $sapling gm4_gv_generation 5
execute if block ~ ~ ~ acacia_sapling run scoreboard players set $sapling gm4_gv_generation 6
execute if block ~ ~ ~ cherry_sapling run scoreboard players set $sapling gm4_gv_generation 7
execute if block ~ ~ ~ mangrove_propagule run scoreboard players set $sapling gm4_gv_generation 8
fill ~ ~ ~ ~ ~ ~ air replace #saplings

# create initial pointer
kill @e[type=marker,tag=gm4_gv_generation_pointer]
summon marker ~ ~ ~ {Rotation:[0F,-90F],Tags:["gm4_gv_generation_pointer"],data:{gm4_garden_variety:{}}}
scoreboard players set @e[type=marker,tag=gm4_gv_generation_pointer] gm4_gv_pointer 0

# compile components and generate
data remove storage gm4_garden_variety:reference component
data remove storage gm4_garden_variety:process components
data modify storage gm4_garden_variety:process components set from storage gm4_garden_variety:reference generation.components
execute if data storage gm4_garden_variety:process components[0] run function gm4_garden_variety:generation/read_component_array

# clearance: pass or fail
execute if score $clearance gm4_gv_generation matches 1 run function gm4_garden_variety:generation/passed_generation
execute if score $clearance gm4_gv_generation matches 0 run function gm4_garden_variety:generation/failed_generation

# clean up
kill @e[type=marker,tag=gm4_gv_generation_pointer]
kill @e[type=marker,tag=gm4_gv_generation_placeholder]

tellraw @p ""
tellraw @p {"nbt":"path","storage":"gm4_garden_variety:debug","interpret":true}
