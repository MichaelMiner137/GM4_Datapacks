# @s = sapling marker
# at @s align xyz

# get data
data remove storage gm4_garden_variety:temp sapling
data modify storage gm4_garden_variety:temp sapling set from entity @s data.gm4_garden_variety

# get raw data
data remove storage gm4_garden_variety:temp marker
data modify storage gm4_garden_variety:temp marker set from entity @s
data remove storage gm4_garden_variety:temp marker.data.gm4_garden_variety

# seperate generation data
data remove storage gm4_garden_variety:temp generation
data modify storage gm4_garden_variety:temp generation set from entity @s data.gm4_garden_variety.item.generation

# generate tree
function gm4_garden_variety:generation/begin_generation
