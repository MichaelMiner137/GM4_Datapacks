# @s = gm4_gv_analyzer that has been broken
# run from gm4_garden_variety:custom_crafters/check_items

# reset gm4_gv_analyze_p counter
scoreboard players set @s gm4_gv_analyze_p 0

# check for mutated trait
scoreboard players set normality_check gm4_gv_analyze 0
execute unless data storage gm4_garden_variety:data/analyzer Items[{Slot:1b}].tag.gm4_garden_variety.traits{enabled:1b} run scoreboard players set normality_check gm4_gv_analyze -1
execute if data storage gm4_garden_variety:data/analyzer Items[{Slot:1b}].tag.gm4_garden_variety.traits{height:"average"} run scoreboard players add normality_check gm4_gv_analyze 1
execute if data storage gm4_garden_variety:data/analyzer Items[{Slot:1b}].tag.gm4_garden_variety.traits{flexibility:"average"} run scoreboard players add normality_check gm4_gv_analyze 1
execute if data storage gm4_garden_variety:data/analyzer Items[{Slot:1b}].tag.gm4_garden_variety.traits{foliage:"average"} run scoreboard players add normality_check gm4_gv_analyze 1
execute if data storage gm4_garden_variety:data/analyzer Items[{Slot:1b}].tag.gm4_garden_variety.traits{fertility:"average"} run scoreboard players add normality_check gm4_gv_analyze 1

# advancement
execute unless score normality_check gm4_gv_analyze matches -1 if score normality_check gm4_gv_analyze matches ..3 run advancement grant @a[distance=..10] only gm4:discover_mutation
execute unless score normality_check gm4_gv_analyze matches -1 if score normality_check gm4_gv_analyze matches 0 run advancement grant @a[distance=..10] only gm4:mad_science


