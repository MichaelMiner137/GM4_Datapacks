# @s = gm4_gv_analyzer that has been broken
# run from gm4_garden_variety:custom_crafters/update

# set requirements
scoreboard players set analyzing_speed gm4_gv_analyze 15
execute if data storage gm4_garden_variety:data/analyzer Items[{Slot:0b}].tag.gm4_garden_variety.analyzer{used:1b} run scoreboard players add analyzing_speed gm4_gv_analyze 5
# increase timer required based on item count
scoreboard players set analyzing_speed_add gm4_gv_analyze 2
scoreboard players operation analyzing_speed_add gm4_gv_analyze *= slot_1_amount gm4_gv_analyze 
scoreboard players remove analyzing_speed_add gm4_gv_analyze 2
scoreboard players operation analyzing_speed gm4_gv_analyze += analyzing_speed_add gm4_gv_analyze
execute if score analyzing_speed gm4_gv_analyze matches 121.. run scoreboard players set analyzing_speed gm4_gv_analyze 120

# update percentage amount
scoreboard players set analyzing_percentage gm4_gv_analyze 200
scoreboard players operation analyzing_percentage gm4_gv_analyze /= analyzing_speed gm4_gv_analyze
scoreboard players operation @s gm4_gv_analyze_p = @s gm4_gv_analyze
scoreboard players add @s gm4_gv_analyze_p 1
scoreboard players operation @s gm4_gv_analyze_p *= analyzing_percentage gm4_gv_analyze

# add scanning tag
tag @s add gm4_gv_analyzing

# increase timer
scoreboard players add @s gm4_gv_analyze 1

# audio
playsound minecraft:block.grass.break block @a[distance=..5]
particle block birch_sapling ~ ~1.2 ~ 0 0 0 .1 3

# complete
execute if score @s gm4_gv_analyze >= analyzing_speed gm4_gv_analyze run function gm4_garden_variety:analyzer/recipes/tagged_sapling/complete


