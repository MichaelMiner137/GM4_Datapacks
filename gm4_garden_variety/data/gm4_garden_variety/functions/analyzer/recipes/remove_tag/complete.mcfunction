# @s = gm4_gv_analyzer that has been broken
# run from gm4_garden_variety:custom_crafters/check_items



##### INITIALIZE #####

# complete
function gm4_garden_variety:analyzer/recipes/complete

# set output item
replaceitem block ~ ~ ~ container.2 minecraft:name_tag



##### SLOT MODIFICATIONS #####

### slot 0 ### (shears)
# remove durability
execute store result score slot_0_durability gm4_gv_analyze run data get block ~ ~ ~ Items[{Slot:0b}].tag.Damage
scoreboard players operation slot_0_durability gm4_gv_analyze += slot_1_amount gm4_gv_analyze
execute store result block ~ ~ ~ Items[{Slot:0b}].tag.Damage int 1 run scoreboard players get slot_0_durability gm4_gv_analyze

### slot 1 ### (sapling)
# remove lore
data remove block ~ ~ ~ Items[{Slot:1b}].tag.display.Lore[1]
data remove block ~ ~ ~ Items[{Slot:1b}].tag.display.Lore[1]
data remove block ~ ~ ~ Items[{Slot:1b}].tag.display.Lore[1]
data remove block ~ ~ ~ Items[{Slot:1b}].tag.display.Lore[1]
data remove block ~ ~ ~ Items[{Slot:1b}].tag.display.Lore[1]
data remove block ~ ~ ~ Items[{Slot:1b}].tag.display.Lore[1]
# remove tagged tag
data modify block ~ ~ ~ Items[{Slot:1b}].tag.gm4_garden_variety.analyzer.tagged set value 0b

### slot 2 ### (name tag)
# set amount
execute store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get slot_1_amount gm4_gv_analyze
# append trait lore
function gm4_garden_variety:data/get/lore/traits
data modify block ~ ~ ~ Items[{Slot:2b}].tag.display.Lore append from storage gm4_garden_variety:data/trait_lore Lore[]
data modify block ~ ~ ~ Items[{Slot:2b}].tag.gm4_garden_variety.analyzer.used set value 1b

