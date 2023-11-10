
# load data
scoreboard players reset * gm4_gv_placeholder
data modify storage gm4_garden_variety:new placeholder set from entity @s data.gm4_garden_variety.placeholder
execute store result score $axis gm4_gv_placeholder run data get storage gm4_garden_variety:new placeholder.axis

# capped ends and surrounded
function gm4_garden_variety:generation/placeholder/compositing/get_adjacent_data with storage gm4_garden_variety:macro get_adjacent_data

# store data
execute store result storage gm4_garden_variety:new placeholder.capped int 1 run scoreboard players get $capped gm4_gv_placeholder
execute store result storage gm4_garden_variety:new placeholder.surrounded int 1 run scoreboard players get $surrounded gm4_gv_placeholder
data modify entity @s data.gm4_garden_variety.placeholder set from storage gm4_garden_variety:new placeholder
