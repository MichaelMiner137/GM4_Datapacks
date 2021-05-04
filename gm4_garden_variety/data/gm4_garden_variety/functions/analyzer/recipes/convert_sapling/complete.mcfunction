# @s = gm4_gv_analyzer that has been broken
# run from gm4_garden_variety:custom_crafters/check_items



##### INITIALIZE #####

# complete
function gm4_garden_variety:analyzer/recipes/complete

# get amount
scoreboard players operation slot_0_amount_unused gm4_gv_analyze = slot_0_amount gm4_gv_analyze
scoreboard players operation slot_0_amount_unused gm4_gv_analyze -= slot_1_amount gm4_gv_analyze



##### SLOT MODIFICATIONS #####

### slot 0 ### (name tag)
# delete item
execute store result block ~ ~ ~ Items[{Slot:0b}].Count byte 1 run scoreboard players get slot_0_amount_unused gm4_gv_analyze

### slot 1 ### (sapling)
execute if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:oak_sapling"}] run loot replace block ~ ~ ~ container.1 loot gm4_natural_trees:items/sapling/wild_oak
execute store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run scoreboard players get slot_1_amount gm4_gv_analyze

### slot 1 ### (sapling)
# move items from slot 1 to slot 2 (paper)
data modify block ~ ~ ~ Items[{Slot:1b}].Slot set value 2b


