schedule function gm4_garden_variety:tick 1t

execute as @e[tag=gm4_gv_analyzing] if score @s gm4_gv_analyze matches 1.. at @s run function gm4_garden_variety:analyzer/update_visuals
