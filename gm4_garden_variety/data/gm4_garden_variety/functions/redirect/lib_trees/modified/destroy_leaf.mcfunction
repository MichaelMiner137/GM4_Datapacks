# @s = any gm4_tree_leaf
# at @s

# get data
data remove storage gm4_garden_variety:temp sapling
data modify storage gm4_garden_variety:temp sapling set from entity @s data.gm4_garden_variety

# function tag
function #gm4_garden_variety:destroy_leaf

# store data
execute as @e[type=item,nbt={Item:{tag:{gm4_garden_variety:{item:{unset:true}}}}},limit=1,dx=0] run data modify entity @s Item.tag.gm4_garden_variety.item set from storage gm4_garden_variety:temp sapling.item
