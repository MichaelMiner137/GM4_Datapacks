# run from TODO



# get nbt
data modify storage gm4_garden_variety:temp/villager NBT set from entity @s 

# check if job should be locked
execute store result score xp_value gm4_gv_arborist run data get storage gm4_garden_variety:temp/villager NBT.Xp
execute if entity @s[tag=!gm4_gv_locked_job] if score xp_value gm4_gv_arborist matches 1.. run tag @s add gm4_gv_locked_job

# undo transformation if not near workstation
execute if entity @s[tag=!gm4_gv_locked_job] unless entity @e[tag=gm4_gv_analyzer,tag=!gm4_gv_cancel_job,distance=..10] run function gm4_garden_variety:arborist/job/remove

# working time
execute if score current_time gm4_gv_arborist matches 1750..2000 run scoreboard players set @s gm4_gv_trades 2 
execute if score current_time gm4_gv_arborist matches 2000..6000 run function gm4_garden_variety:arborist/working

# level up villager
execute store result score xp_value gm4_gv_arborist run data get storage gm4_garden_variety:temp/villager NBT.Xp
execute if entity @s[tag=gm4_gv_level_2] if score xp_value gm4_gv_arborist matches 70.. run function gm4_garden_variety:arborist/trading/leveling/level_3
execute if entity @s[tag=gm4_gv_level_3] if score xp_value gm4_gv_arborist matches 150.. run function gm4_garden_variety:arborist/trading/leveling/level_4
execute if entity @s[tag=gm4_gv_level_4] if score xp_value gm4_gv_arborist matches 250.. run function gm4_garden_variety:arborist/trading/leveling/level_5
