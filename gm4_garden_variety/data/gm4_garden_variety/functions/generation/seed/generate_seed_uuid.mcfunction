
scoreboard players set $seed gm4_gv_generation 0
scoreboard players set $sub_seed gm4_gv_generation 0
scoreboard players set $sub_seed_used gm4_gv_generation 0

execute store result score #seed.1 gm4_gv_generation run time query gametime
execute store result score #seed.2 gm4_gv_generation run data get entity @s UUID[0]

scoreboard players operation $seed gm4_gv_generation = #seed.1 gm4_gv_generation
scoreboard players operation $seed gm4_gv_generation += #seed.2 gm4_gv_generation

scoreboard players operation $sub_seed gm4_gv_generation = $seed gm4_gv_generation
