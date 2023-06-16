
# get seed
function gm4_garden_variety:generation/seed/generate_seed_position

# create initial pointer
kill @e[type=marker,tag=gm4_gv_generation_pointer]
summon marker ~ ~ ~ {Rotation:[0F,-90F],Tags:["gm4_gv_generation_pointer"],data:{gm4_garden_variety:{}}}
scoreboard players set @e[type=marker,tag=gm4_gv_generation_pointer] gm4_gv_pointer 0

# debug
#say =====

# compile components and generate
data remove storage gm4_garden_variety:process components
data modify storage gm4_garden_variety:process components set from storage gm4_garden_variety:reference generation
execute if data storage gm4_garden_variety:process components[0] run function gm4_garden_variety:generation/read_component_array

# clean up
kill @e[type=marker,tag=gm4_gv_generation_pointer]

# fill in placeholder blocks
function #gm4_garden_variety:generate_tree
