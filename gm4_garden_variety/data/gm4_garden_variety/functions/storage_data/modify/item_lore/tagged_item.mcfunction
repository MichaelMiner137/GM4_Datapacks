# generates the tree's leaf layers
# @s = TREE_TYPE leaf AEC marker
# run from TODO


# copy item nbt into storage
data modify storage gm4_garden_variety:data/item/modify Item set from entity @s Item
# add spacer and header lore
data modify storage gm4_garden_variety:data/item/modify Item.tag.display.Lore append value '{"text":"             "}'
data modify storage gm4_garden_variety:data/item/modify Item.tag.display.Lore append value '{"text":"Name Tag","color":"#CFAE6D","italic":false}'
# append trait lore
function gm4_garden_variety:storage_data/modify/trait_lore
data modify storage gm4_garden_variety:data/item/modify Item.tag.display.Lore append from storage gm4_garden_variety:data/modify/lore Lore[]
# add tagged tag
data modify storage gm4_garden_variety:data/item/modify Item.tag.gm4_garden_variety.analyzer.tagged set value 1b
# copy storage into item nbt
data modify entity @s Item set from storage gm4_garden_variety:data/item/modify Item
