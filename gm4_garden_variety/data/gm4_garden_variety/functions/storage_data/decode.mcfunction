# generates the tree's leaf layers
# @s = TREE_TYPE leaf AEC marker
# run from gm4_garden_variety:generation/methods/palm_tree/trunk



scoreboard players operation decoding gm4_gv_nbt_data = @s gm4_trait_data
scoreboard players operation traits gm4_trait_data = @s gm4_trait_data

scoreboard players operation status gm4_gv_nbt_data = decoding gm4_gv_nbt_data
scoreboard players operation status gm4_gv_nbt_data %= #10 gm4_math_num
scoreboard players operation decoding gm4_gv_nbt_data /= #10 gm4_math_num

scoreboard players operation height gm4_gv_nbt_data = decoding gm4_gv_nbt_data
scoreboard players operation height gm4_gv_nbt_data %= #10 gm4_math_num
scoreboard players operation decoding gm4_gv_nbt_data /= #10 gm4_math_num

scoreboard players operation flexibility gm4_gv_nbt_data = decoding gm4_gv_nbt_data
scoreboard players operation flexibility gm4_gv_nbt_data %= #10 gm4_math_num
scoreboard players operation decoding gm4_gv_nbt_data /= #10 gm4_math_num

scoreboard players operation foliage gm4_gv_nbt_data = decoding gm4_gv_nbt_data
scoreboard players operation foliage gm4_gv_nbt_data %= #10 gm4_math_num
scoreboard players operation decoding gm4_gv_nbt_data /= #10 gm4_math_num

scoreboard players operation fertility gm4_gv_nbt_data = decoding gm4_gv_nbt_data
scoreboard players operation fertility gm4_gv_nbt_data %= #10 gm4_math_num
scoreboard players operation decoding gm4_gv_nbt_data /= #10 gm4_math_num

