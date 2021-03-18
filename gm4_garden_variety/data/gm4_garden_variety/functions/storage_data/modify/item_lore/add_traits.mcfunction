# generates the tree's leaf layers
# @s = TREE_TYPE leaf AEC marker
# run from TODO


# copy item nbt into storage
data modify storage gm4_garden_variety:data/item/modify Item set from entity @s Item
# append trait lore
function gm4_garden_variety:storage_data/modify/trait_lore
data modify storage gm4_garden_variety:data/item/modify Item.tag.display.Lore append from storage gm4_garden_variety:data/modify/lore Lore[]
# add analyzed tag
data modify storage gm4_garden_variety:data/item/modify Item.tag.gm4_garden_variety.analyzer.used set value 1b
# copy storage into item nbt
data modify entity @s Item set from storage gm4_garden_variety:data/item/modify Item
