# @s = garden_variety sapling with podzol_rooting tag
# at @s

# get data
data remove storage gm4_garden_variety:temp sapling
data modify storage gm4_garden_variety:temp sapling set from entity @s Item.tag.gm4_garden_variety

# SOON (remove nametag)

# function tag
function #gm4_garden_variety:podzol_rooting

# set data on marker
execute as @e[type=marker,tag=gm4_tree_sapling,distance=..0.1] run data modify entity @s data.gm4_garden_variety.item set from storage gm4_garden_variety:temp sapling.item
