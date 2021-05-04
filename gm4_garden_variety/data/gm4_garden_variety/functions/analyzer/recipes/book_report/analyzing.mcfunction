# @s = gm4_gv_analyzer that has been broken
# run from gm4_garden_variety:custom_crafters/update

# set requirements
scoreboard players set analyzing_speed gm4_gv_analyze 8
execute if data storage gm4_garden_variety:data/analyzer Items[{Slot:1b}].tag.gm4_garden_variety.analyzer{tagged:1b} run scoreboard players set analyzing_speed gm4_gv_analyze 4

# analyze
function gm4_garden_variety:analyzer/recipes/analyzing

# particle
particle item book ~ ~1.2 ~ 0 0 0 .1 3

# complete
execute if score @s gm4_gv_analyze >= analyzing_speed gm4_gv_analyze run function gm4_garden_variety:analyzer/recipes/book_report/complete


