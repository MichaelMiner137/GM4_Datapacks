# @s = gm4_gv_analyzer that has been broken
# run from gm4_garden_variety:custom_crafters/check_items



##### INITIALIZE #####

function gm4_garden_variety:analyzer/recipes/complete

# get amount
scoreboard players operation slot_0_amount_unused gm4_gv_analyze = slot_0_amount gm4_gv_analyze
scoreboard players operation slot_0_amount_unused gm4_gv_analyze -= slot_1_amount gm4_gv_analyze

##### SLOT MODIFICATIONS #####

### slot 0 ### (name tag)
# delete item
execute store result storage gm4_garden_variety:data/analyzer/modify Items[{Slot:0b}].Count byte 1 run scoreboard players get slot_0_amount_unused gm4_gv_analyze

### slot 1 ### (sapling)
# move items from slot 1 to slot 2 (paper)
data modify storage gm4_garden_variety:data/analyzer/modify Items[{Slot:1b}].Slot set value 2b

### slot 2 ### (sapling)
# add spacer and header lore
data modify storage gm4_garden_variety:data/analyzer/modify Items[{Slot:2b}].tag.display.Lore append value '{"text":"Name Tag","color":"#CFAE6D","italic":false}'
# append trait lore
function gm4_garden_variety:data/get/lore/name_tag_traits
data modify storage gm4_garden_variety:data/analyzer/modify Items[{Slot:2b}].tag.display.Lore append from storage gm4_garden_variety:data/trait_lore Lore[]
# add tagged tag
data modify storage gm4_garden_variety:data/analyzer/modify Items[{Slot:2b}].tag.gm4_garden_variety.analyzer.tagged set value 1b



##### FINALIZE #####

# copy storage to nbt
data modify block ~ ~ ~ Items set from storage gm4_garden_variety:data/analyzer/modify Items
