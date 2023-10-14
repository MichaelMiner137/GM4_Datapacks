
# load data
scoreboard players reset * gm4_gv_placeholder
data remove storage gm4_garden_variety:reference placeholder
data modify storage gm4_garden_variety:reference placeholder set from entity @s data.gm4_garden_variety.placeholder
execute store result score $facing gm4_gv_placeholder run data get storage gm4_garden_variety:reference placeholder.facing
execute store result score $axis gm4_gv_placeholder run data get storage gm4_garden_variety:reference placeholder.axis
execute store result score $composite_group gm4_gv_placeholder run data get storage gm4_garden_variety:reference placeholder.composite_group

# [macro] placeholder set block
data remove storage gm4_garden_variety:macro get_adjacent_data
execute unless score $composite_group gm4_gv_placeholder matches 2..6 run data modify storage gm4_garden_variety:macro get_adjacent_data.direction set value "up"
execute if score $composite_group gm4_gv_placeholder matches 2 run data modify storage gm4_garden_variety:macro get_adjacent_data.direction set value "down"
execute if score $composite_group gm4_gv_placeholder matches 3 run data modify storage gm4_garden_variety:macro get_adjacent_data.direction set value "north"
execute if score $composite_group gm4_gv_placeholder matches 4 run data modify storage gm4_garden_variety:macro get_adjacent_data.direction set value "south"
execute if score $composite_group gm4_gv_placeholder matches 5 run data modify storage gm4_garden_variety:macro get_adjacent_data.direction set value "east"
execute if score $composite_group gm4_gv_placeholder matches 6 run data modify storage gm4_garden_variety:macro get_adjacent_data.direction set value "west"

# capped ends and surrounded
function gm4_garden_variety:generation/placeholder/compositing/get_adjacent_data with storage gm4_garden_variety:macro get_adjacent_data

# update data
data modify storage gm4_garden_variety:new placeholder set from storage gm4_garden_variety:reference placeholder
execute store result storage gm4_garden_variety:new placeholder.capped int 1 run scoreboard players get $capped gm4_gv_placeholder
execute store result storage gm4_garden_variety:new placeholder.surrounded int 1 run scoreboard players get $surrounded gm4_gv_placeholder
data modify entity @s data.gm4_garden_variety.placeholder set from storage gm4_garden_variety:new placeholder
