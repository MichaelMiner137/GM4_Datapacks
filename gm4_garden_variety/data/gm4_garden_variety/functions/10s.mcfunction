schedule function gm4_garden_variety:10s 10s

# get current time
execute store result score current_time gm4_gv_arborist run time query daytime



# check if arborist nearby, if not make one
execute as @e[type=armor_stand,tag=gm4_gv_analyzer,limit=20,sort=random] at @s run function gm4_garden_variety:analyzer/arborist/per_analyzer

# update arborist
execute as @e[type=villager,tag=gm4_gv_arborist] at @s run function gm4_garden_variety:arborist/update
