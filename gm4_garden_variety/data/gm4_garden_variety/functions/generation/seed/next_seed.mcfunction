
scoreboard players add $sub_seed_used gm4_gv_generation 1

scoreboard players operation #sub_seed.1 gm4_gv_generation = $sub_seed gm4_gv_generation
scoreboard players operation #sub_seed.1 gm4_gv_generation /= #10 gm4_garden_variety
scoreboard players operation #sub_seed.2 gm4_gv_generation = $sub_seed gm4_gv_generation
scoreboard players operation #sub_seed.2 gm4_gv_generation %= #10 gm4_garden_variety
scoreboard players operation #sub_seed.3 gm4_gv_generation = #sub_seed.2 gm4_gv_generation
scoreboard players operation #sub_seed.3 gm4_gv_generation *= #10000 gm4_garden_variety

scoreboard players operation #sub_seed.4 gm4_gv_generation = $sub_seed_used gm4_gv_generation
scoreboard players operation #sub_seed.4 gm4_gv_generation %= #10 gm4_garden_variety
scoreboard players operation #sub_seed.4 gm4_gv_generation *= #100000 gm4_garden_variety

scoreboard players operation $sub_seed gm4_gv_generation = #sub_seed.1 gm4_gv_generation
scoreboard players operation $sub_seed gm4_gv_generation += #sub_seed.2 gm4_gv_generation
scoreboard players operation $sub_seed gm4_gv_generation += #sub_seed.3 gm4_gv_generation
scoreboard players operation $sub_seed gm4_gv_generation += #sub_seed.4 gm4_gv_generation
