
scoreboard players set $seed gm4_gv_generation 0
scoreboard players set $sub_seed gm4_gv_generation 0
scoreboard players set $sub_seed_used gm4_gv_generation 0

execute store result score #seed.1 gm4_gv_generation run data get storage gm4_garden_variety:temp marker.Pos[0]
scoreboard players operation #seed.1 gm4_gv_generation *= #1 gm4_garden_variety
execute store result score #seed.2 gm4_gv_generation run data get storage gm4_garden_variety:temp marker.Pos[1]
scoreboard players operation #seed.2 gm4_gv_generation *= #100 gm4_garden_variety
execute store result score #seed.3 gm4_gv_generation run data get storage gm4_garden_variety:temp marker.Pos[2]
scoreboard players operation #seed.3 gm4_gv_generation *= #10 gm4_garden_variety
scoreboard players operation #seed.4 gm4_gv_generation = #seed gm4_garden_variety

scoreboard players operation $seed gm4_gv_generation = #seed.1 gm4_gv_generation
scoreboard players operation $seed gm4_gv_generation += #seed.2 gm4_gv_generation
scoreboard players operation $seed gm4_gv_generation += #seed.3 gm4_gv_generation
scoreboard players operation $seed gm4_gv_generation += #seed.4 gm4_gv_generation

scoreboard players operation $sub_seed gm4_gv_generation = $seed gm4_gv_generation
