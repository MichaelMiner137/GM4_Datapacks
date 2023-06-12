
# get seed
function gm4_garden_variety:generation/seed/generate_seed_position

# clearance checker


# create initial pointer
kill @e[type=marker,tag=gm4_gv_generation_pointer]
summon marker ~ ~ ~ {Tags:["gm4_gv_generation_pointer"]}

# compile components and generate
data remove storage gm4_garden_variety:temp components
data modify storage gm4_garden_variety:temp components set from storage gm4_garden_variety:temp generation
execute if data storage gm4_garden_variety:temp components[0] run function gm4_garden_variety:generation/component/read_array

# clean up
kill @e[type=marker,tag=gm4_gv_generation_pointer]

# fill in placeholder blocks
function #gm4_garden_variety:generate_tree
