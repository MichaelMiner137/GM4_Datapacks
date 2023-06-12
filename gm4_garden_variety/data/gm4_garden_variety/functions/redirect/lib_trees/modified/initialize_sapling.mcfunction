# @s = player who placed the custom sapling
# located at the center of the placed block

# get data from item
data remove storage gm4_garden_variety:temp sapling
data modify storage gm4_garden_variety:temp sapling set from entity @s SelectedItem.tag.gm4_garden_variety

# SOON (remove nametag)

# function tag
function #gm4_garden_variety:initialize_sapling

# set data on marker
execute as @e[type=marker,tag=gm4_tree_sapling,distance=..0.1] run data modify entity @s data.gm4_garden_variety.item set from storage gm4_garden_variety:temp sapling.item
