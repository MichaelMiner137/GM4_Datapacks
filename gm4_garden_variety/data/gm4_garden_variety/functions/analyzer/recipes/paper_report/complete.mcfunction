# @s = gm4_gv_analyzer that has been broken
# run from gm4_garden_variety:custom_crafters/check_items



##### INITIALIZE #####

function gm4_garden_variety:analyzer/recipes/complete


##### SLOT MODIFICATIONS #####

### slot 0 ### (paper)
# move items from slot 0 to slot 2 (paper)
data modify storage gm4_garden_variety:data/analyzer/modify Items[{Slot:0b}].Slot set value 2b

### slot 2 ### (paper)
# delete all lore
data remove storage gm4_garden_variety:data/analyzer/modify Items[{Slot:2b}].tag.display.Lore
# append trait lore
function gm4_garden_variety:data/get/lore/traits
data modify storage gm4_garden_variety:data/analyzer/modify Items[{Slot:2b}].tag.display.Lore append from storage gm4_garden_variety:data/trait_lore Lore[]
# add used tag
data modify storage gm4_garden_variety:data/analyzer/modify Items[{Slot:2b}].tag.gm4_garden_variety.analyzer.used set value 1b



##### FINALIZE #####

# copy storage to nbt
data modify block ~ ~ ~ Items set from storage gm4_garden_variety:data/analyzer/modify Items

