schedule function gm4_garden_variety:1s 20t

execute as @e[type=armor_stand,tag=gm4_gv_analyzer,tag=!gm4_gv_disable_updates,sort=random] at @s run function gm4_garden_variety:analyzer/update

