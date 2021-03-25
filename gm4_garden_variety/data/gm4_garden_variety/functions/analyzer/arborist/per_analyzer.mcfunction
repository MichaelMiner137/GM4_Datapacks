# run from TODO



execute if entity @s[tag=gm4_gv_assigned] at @s run function gm4_garden_variety:analyzer/arborist/is_assigned
execute if entity @s[tag=!gm4_gv_assigned] at @s run function gm4_garden_variety:analyzer/arborist/not_assigned


execute if entity @s[tag=!gm4_gv_cancel_job] at @s if block ~ ~1 ~ redstone_block run tag @s add gm4_gv_cancel_job
execute if entity @s[tag=gm4_gv_cancel_job] at @s unless block ~ ~1 ~ redstone_block run tag @s remove gm4_gv_cancel_job