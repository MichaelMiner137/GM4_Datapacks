# @s = sapling marker
# at @s align xyz

# get data
data remove storage gm4_garden_variety:temp sapling
data modify storage gm4_garden_variety:temp sapling set from entity @s data.gm4_garden_variety

# function tag
function #gm4_garden_variety:generate_tree
