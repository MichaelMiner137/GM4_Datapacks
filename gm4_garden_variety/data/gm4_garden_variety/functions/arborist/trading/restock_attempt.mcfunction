# run from TODO

# restock randomizer
scoreboard players operation restock_check gm4_gv_arborist = current_seed gm4_gv_gen_data 
scoreboard players operation restock_check gm4_gv_arborist %= #10 gm4_gv_math_num 
function gm4_garden_variety:data/get/next_seed_value

# restock
execute if score restock_check gm4_gv_arborist matches 0..3 run function gm4_garden_variety:arborist/trading/restock
execute if score restock_check gm4_gv_arborist matches 0..3 run tag @s remove gm4_gv_can_restock
