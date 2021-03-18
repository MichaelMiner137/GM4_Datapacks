# @s = gm4_gv_analyzer
# run from main



# Keep armorstand lit up
data merge entity @s {Fire:2000}

# Destroy trash can if broken
execute unless block ~ ~ ~ furnace unless block ~ ~ ~ smoker unless block ~ ~ ~ blast_furnace run function gm4_garden_variety:analyzer/block/destroy



# prepare item check
execute if entity @s[tag=!gm4_gv_analyzing] run scoreboard players set @s gm4_gv_analyze 0
tag @s remove gm4_gv_analyzing
data modify storage gm4_garden_variety:data/analyzer Items set from block ~ ~ ~ Items

# get slot amounts
execute store result score slot_0_amount gm4_gv_analyze run data get storage gm4_garden_variety:data/analyzer Items[{Slot:0b}].Count
execute store result score slot_1_amount gm4_gv_analyze run data get storage gm4_garden_variety:data/analyzer Items[{Slot:1b}].Count
execute store result score slot_2_amount gm4_gv_analyze run data get storage gm4_garden_variety:data/analyzer Items[{Slot:2b}].Count

# analyze if recipe matching
execute unless data storage gm4_garden_variety:data/analyzer Items[{Slot:2b}] if data storage gm4_garden_variety:data/analyzer Items[{Slot:0b,id:"minecraft:paper"}] if data storage gm4_garden_variety:data/analyzer Items[{Slot:1b}] run function gm4_garden_variety:analyzer/recipes/paper_report/analyzing
execute unless data storage gm4_garden_variety:data/analyzer Items[{Slot:2b}] if data storage gm4_garden_variety:data/analyzer Items[{Slot:0b,id:"minecraft:book",Count:1b}] if data storage gm4_garden_variety:data/analyzer Items[{Slot:1b}] run function gm4_garden_variety:analyzer/recipes/book_report/analyzing
execute if score slot_0_amount gm4_gv_analyze >= slot_1_amount gm4_gv_analyze unless data storage gm4_garden_variety:data/analyzer Items[{Slot:2b}] if data storage gm4_garden_variety:data/analyzer Items[{Slot:0b,id:"minecraft:name_tag"}] if data storage gm4_garden_variety:data/analyzer Items[{Slot:1b}].tag.gm4_garden_variety.analyzer{tagged:0b} run function gm4_garden_variety:analyzer/recipes/tagged_sapling/analyzing

