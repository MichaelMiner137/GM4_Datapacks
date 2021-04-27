# run from TODO

# remove arborist job if not locked
execute if entity @s[tag=!gm4_gv_locked_job] run function gm4_garden_variety:arborist/job/remove

# remove job site
execute if entity @s[tag=gm4_gv_has_job_site] run scoreboard players set @s gm4_gv_job_id 0
execute if entity @s[tag=gm4_gv_has_job_site] run tag @s remove gm4_gv_has_job_site
playsound minecraft:entity.villager.no neutral @a ~ ~ ~ 1 0.80 