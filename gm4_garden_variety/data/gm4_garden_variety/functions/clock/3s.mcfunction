schedule function gm4_garden_variety:clock/3s 60t

execute as @e[type=armor_stand,tag=gm4_gv_analyzer] at @s run function gm4_garden_variety:analyzer/disable_check

execute as @e[type=villager,tag=gm4_gv_arborist] at @s run function gm4_garden_variety:arborist/disable_check
