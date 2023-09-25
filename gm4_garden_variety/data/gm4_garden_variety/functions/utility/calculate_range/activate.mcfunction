
# range
function gm4_garden_variety:generation/seed/next_seed

# inputs
$scoreboard players operation #input_min gm4_garden_variety = $(input_min)
$scoreboard players operation #input_max gm4_garden_variety = $(input_max)

# flip if needed
execute if score #input_min gm4_garden_variety > #input_max gm4_garden_variety run function gm4_garden_variety:utility/calculate_range/flip_input

# get sign
execute store result score #input_min_positive gm4_garden_variety if score #input_min gm4_garden_variety matches 0.. 
execute store result score #input_max_positive gm4_garden_variety if score #input_max gm4_garden_variety matches 0.. 

# get range and offset
execute if score #input_min_positive gm4_garden_variety matches 1 if score #input_max_positive gm4_garden_variety matches 1 run function gm4_garden_variety:utility/calculate_range/pos_pos
execute if score #input_min_positive gm4_garden_variety matches 0 if score #input_max_positive gm4_garden_variety matches 1 run function gm4_garden_variety:utility/calculate_range/neg_pos
execute if score #input_min_positive gm4_garden_variety matches 0 if score #input_max_positive gm4_garden_variety matches 0 run function gm4_garden_variety:utility/calculate_range/neg_neg

# calculate output
scoreboard players operation #output gm4_garden_variety = $sub_seed gm4_gv_generation
scoreboard players operation #output gm4_garden_variety %= #range gm4_garden_variety
scoreboard players operation #output gm4_garden_variety += #offset gm4_garden_variety

# output
$scoreboard players operation $(output) = #output gm4_garden_variety
