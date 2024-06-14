
#execute as @e[distance=..2] run function gm4_potion_tipping:attack/nearby_mob

scoreboard players add $mobs_hit gm4_potion_tipping 1
tag @s add gm4_ptip_affected
