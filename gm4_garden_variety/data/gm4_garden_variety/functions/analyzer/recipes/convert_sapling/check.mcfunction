# @s = gm4_gv_analyzer that has been broken
# run from gm4_garden_variety:custom_crafters/update

# reset recipe check
scoreboard players set recipe_check gm4_gv_analyze 1

# check for conditions
execute unless score slot_0_amount gm4_gv_analyze >= slot_1_amount gm4_gv_analyze run scoreboard players set recipe_check gm4_gv_analyze 0
execute if data storage gm4_garden_variety:data/analyzer Items[{Slot:2b}] run scoreboard players set recipe_check gm4_gv_analyze 0
execute if data storage gm4_garden_variety:data/analyzer Items[{Slot:1b}].tag.gm4_garden_variety run scoreboard players set recipe_check gm4_gv_analyze 0

# check for items
execute if score recipe_check gm4_gv_analyze matches 1 if data storage gm4_garden_variety:data/analyzer Items[{Slot:1b,id:"minecraft:oak_sapling"}] run scoreboard players set recipe_check gm4_gv_analyze 2

# complete
execute if score recipe_check gm4_gv_analyze matches 2 run function gm4_garden_variety:analyzer/recipes/convert_sapling/analyzing
