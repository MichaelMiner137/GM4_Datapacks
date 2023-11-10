
# load data
scoreboard players reset * gm4_gv_placeholder
data modify storage gm4_garden_variety:reference placeholder set from entity @s data.gm4_garden_variety.placeholder
execute store result score $number gm4_gv_placeholder run data get storage gm4_garden_variety:reference placeholder.number
execute store result score $generation_speed gm4_gv_placeholder run data get storage gm4_garden_variety:reference placeholder.generation_speed
