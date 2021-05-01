# generates variables for each palm based on the current seed
# run from gm4_garden_variety:generation/variables/per_palm



# arc rate for each palm
scoreboard players operation palm_arc gm4_gv_gen_data = current_seed gm4_gv_gen_data
scoreboard players operation palm_arc gm4_gv_gen_data %= palm_arc_range gm4_gv_gen_data
scoreboard players operation palm_arc gm4_gv_gen_data += palm_arc_minimum gm4_gv_gen_data
execute if score palm_arc gm4_gv_gen_data = matches 1000.. run scoreboard players set palm_arc gm4_gv_gen_data 0
function gm4_garden_variety:data/get/next_seed_value

# x rotation offset for each palm (1-10) (-/+)
scoreboard players operation palm_offet gm4_gv_gen_data = current_seed gm4_gv_gen_data
scoreboard players operation palm_offet gm4_gv_gen_data %= palm_offet_range gm4_gv_gen_data
scoreboard players operation palm_offet gm4_gv_gen_data += palm_offet_minimum gm4_gv_gen_data
execute if score palm_offet gm4_gv_gen_data = matches 1000.. run scoreboard players set palm_offet gm4_gv_gen_data 0
function gm4_garden_variety:data/generate/random_sign
scoreboard players operation palm_offet gm4_gv_gen_data *= random_sign gm4_gv_math_num
function gm4_garden_variety:data/get/next_seed_value

# length of each palm (layer based)
scoreboard players operation palm_layers gm4_gv_gen_data = current_seed gm4_gv_gen_data
scoreboard players operation palm_layers gm4_gv_gen_data %= palm_layers_range gm4_gv_gen_data
scoreboard players operation palm_layers gm4_gv_gen_data += palm_layers_minimum gm4_gv_gen_data
execute if score palm_layers gm4_gv_gen_data = matches 1000.. run scoreboard players set palm_layers gm4_gv_gen_data 0
function gm4_garden_variety:data/get/next_seed_value


