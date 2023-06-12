# @s = sapling marker
# at @s align xyz

# get data
data remove storage gm4_garden_variety:temp sapling
data modify storage gm4_garden_variety:temp sapling set from entity @s data.gm4_garden_variety

# get raw data
data remove storage gm4_garden_variety:temp marker
data modify storage gm4_garden_variety:temp marker set from entity @s
data remove storage gm4_garden_variety:temp marker.data.gm4_garden_variety

# get seed
function gm4_garden_variety:generation/seed/generate_seed_position

# seperate generation data
data remove storage gm4_garden_variety:temp generation
data modify storage gm4_garden_variety:temp generation set from entity @s data.gm4_garden_variety.item.generation

# clearance checker


# create initial pointer
kill @e[type=marker,tag=gm4_gv_generation_pointer]
summon marker ~ ~ ~ {Tags:["gm4_gv_generation_pointer"]}

# generate tree
function gm4_garden_variety:generation/activate

# clean up
kill @e[type=marker,tag=gm4_gv_generation_pointer]

# fill in placeholder blocks
function #gm4_garden_variety:generate_tree
