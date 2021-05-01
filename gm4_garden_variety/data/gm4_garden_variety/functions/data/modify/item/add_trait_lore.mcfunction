# generates the tree's leaf layers
# @s = TREE_TYPE leaf AEC marker
# run from TODO


# copy item nbt into storage
data modify storage gm4_garden_variety:data/modify Item set from entity @s Item
# append trait lore
function gm4_garden_variety:data/get/lore/traits
data modify storage gm4_garden_variety:data/modify Item.tag.display.Lore append from storage gm4_garden_variety:data/trait_lore Lore[]
# add used tag
data modify storage gm4_garden_variety:data/modify Item.tag.gm4_garden_variety.analyzer.used set value 1b
# copy storage into item nbt
data modify entity @s Item set from storage gm4_garden_variety:data/modify Item
# remove tag
tag @s remove gm4_gv_add_trait_lore
