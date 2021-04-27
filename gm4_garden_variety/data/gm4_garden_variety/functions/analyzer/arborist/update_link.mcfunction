# run from TODO

# set current id
scoreboard players operation current_id gm4_gv_job_id = @s gm4_gv_job_id

# check if it can create more
scoreboard players set id_checks gm4_gv_job_id 0
execute if entity @s[tag=!gm4_gv_disable_job_site] as @e[type=villager,tag=gm4_gv_arborist,distance=..10] run function gm4_garden_variety:analyzer/arborist/check_villager

# check how many arborists are needed
scoreboard players set @s gm4_gv_arborist 3
scoreboard players operation @s gm4_gv_arborist -= id_checks gm4_gv_job_id

# check for linkable villagers
scoreboard players set link_villager_success gm4_gv_arborist 0
execute if entity @s[tag=!gm4_gv_disable_job_site] if score @s gm4_gv_arborist matches 1.. as @e[tag=!gm4_gv_has_job_site,type=villager,distance=..10,limit=1,sort=nearest] store success score link_villager_success gm4_gv_arborist run function gm4_garden_variety:analyzer/arborist/link_villager
execute if score link_villager_success gm4_gv_arborist matches 1 run scoreboard players remove @s gm4_gv_arborist 1
execute if score link_villager_success gm4_gv_arborist matches 1 run playsound minecraft:entity.cat.eat neutral @a[distance=..20] ~ ~ ~ 1 .5 

# tag if assigned
execute if entity @s[tag=!gm4_gv_assigned] if score @s gm4_gv_arborist matches 0 run tag @s add gm4_gv_assigned
execute if entity @s[tag=gm4_gv_assigned] unless score @s gm4_gv_arborist matches 0 run tag @s remove gm4_gv_assigned

# show status of arborist link
execute if entity @s[tag=gm4_gv_analyzer_force_update] if score @s gm4_gv_arborist matches 0 run particle happy_villager ~ ~1.2 ~ .1 .1 .1 1 3
execute if entity @s[tag=gm4_gv_analyzer_force_update] if score @s gm4_gv_arborist matches 1.. run particle angry_villager ~ ~.9 ~
execute if entity @s[tag=gm4_gv_analyzer_force_update] if score @s gm4_gv_arborist matches 2.. run particle angry_villager ~ ~.7 ~
execute if entity @s[tag=gm4_gv_analyzer_force_update] if score @s gm4_gv_arborist matches 3.. run particle angry_villager ~ ~.5 ~
tag @s remove gm4_gv_analyzer_force_update




