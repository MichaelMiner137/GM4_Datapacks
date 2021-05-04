# @s = gm4_gv_analyzer that has been broken
# run from gm4_garden_variety:custom_crafters/check_items


##### INITIALIZE #####

# set output item
function gm4_garden_variety:analyzer/recipes/complete



##### SLOT MODIFICATIONS #####

### slot 0 ### (book)
# move items from slot 0 to slot 2 (book)
data modify block ~ ~ ~ Items[{Slot:0b}].Slot set value 2b

### slot 2 ### (book)
# delete all lore
data remove block ~ ~ ~ Items[{Slot:2b}].tag.display.Lore
# append trait lore
function gm4_garden_variety:data/get/lore/traits
data modify block ~ ~ ~ Items[{Slot:2b}].tag.display.Lore append from storage gm4_garden_variety:data/trait_lore Lore[]
# add used tag
data modify block ~ ~ ~ Items[{Slot:2b}].tag.gm4_garden_variety.analyzer.used set value 1b

