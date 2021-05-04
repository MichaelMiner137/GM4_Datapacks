# @s = gm4_gv_analyzer that has been broken
# run from gm4_garden_variety:custom_crafters/update

# reset recipe check
scoreboard players set recipe_check gm4_gv_analyze 0

# check for conditions
execute if data storage gm4_garden_variety:data/analyzer Items[{Slot:0b,id:"minecraft:paper"}] run scoreboard players set recipe_check gm4_gv_analyze 1
execute if data storage gm4_garden_variety:data/analyzer Items[{Slot:0b,id:"minecraft:book"}] run scoreboard players set recipe_check gm4_gv_analyze 1
execute if data storage gm4_garden_variety:data/analyzer Items[{Slot:0b,id:"minecraft:name_tag"}] run scoreboard players set recipe_check gm4_gv_analyze 1
execute if data storage gm4_garden_variety:data/analyzer Items[{Slot:2b}] run scoreboard players set recipe_check gm4_gv_analyze 0

# complete
execute if score recipe_check gm4_gv_analyze matches 1 run function gm4_garden_variety:analyzer/recipes/invalid_item/complete
