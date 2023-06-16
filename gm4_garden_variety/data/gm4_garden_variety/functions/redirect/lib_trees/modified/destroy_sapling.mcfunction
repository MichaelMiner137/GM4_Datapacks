# @s = any gm4_tree_sapling
# at @s

# get data
data remove storage gm4_garden_variety:reference sapling
data modify storage gm4_garden_variety:reference sapling set from entity @s data.gm4_garden_variety

# function tag
function #gm4_garden_variety:destroy_sapling

# store data
execute as @e[type=item,nbt={Item:{tag:{gm4_trees:{item:{id:"sapling"}}}}},limit=1,dx=0,nbt={Age:0s}] run data modify entity @s Item.tag.gm4_garden_variety.item set from storage gm4_garden_variety:reference sapling.item
