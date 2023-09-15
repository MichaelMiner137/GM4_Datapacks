
tag @s remove gm4_gv_new
data modify entity @s data.gm4_garden_variety.pointer set from storage gm4_garden_variety:new pointer
data modify entity @s Rotation set from entity @s Rotation
execute store result score @s gm4_gv_pointer run data get storage gm4_garden_variety:new pointer.identifier
