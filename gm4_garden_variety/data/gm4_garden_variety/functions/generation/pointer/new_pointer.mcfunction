
tag @s remove gm4_gv_new
data modify entity @s data.gm4_garden_variety.pointer set from storage gm4_garden_variety:new pointer
data modify entity @s Rotation set from entity @s Rotation
scoreboard players operation @s gm4_gv_pointer = #identifier gm4_gv_pointer
