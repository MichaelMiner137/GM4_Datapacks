# generates the tree's leaf layers
# @s = TREE_TYPE leaf AEC marker
# run from gm4_garden_variety:generation/methods/palm_tree/trunk



scoreboard players set traits gm4_trait_data 0

scoreboard players operation *encoding gm4_gv_nbt_data = tagged gm4_gv_nbt_data
scoreboard players operation *encoding gm4_gv_nbt_data *= #1 gm4_gv_math_num
scoreboard players operation traits gm4_trait_data += *encoding gm4_gv_nbt_data

scoreboard players operation *encoding gm4_gv_nbt_data = enabled gm4_gv_nbt_data
scoreboard players operation *encoding gm4_gv_nbt_data *= #10 gm4_gv_math_num
scoreboard players operation traits gm4_trait_data += *encoding gm4_gv_nbt_data

scoreboard players operation *encoding gm4_gv_nbt_data = height gm4_gv_nbt_data
scoreboard players operation *encoding gm4_gv_nbt_data *= #100 gm4_gv_math_num
scoreboard players operation traits gm4_trait_data += *encoding gm4_gv_nbt_data

scoreboard players operation *encoding gm4_gv_nbt_data = flexibility gm4_gv_nbt_data
scoreboard players operation *encoding gm4_gv_nbt_data *= #1000 gm4_gv_math_num
scoreboard players operation traits gm4_trait_data += *encoding gm4_gv_nbt_data

scoreboard players operation *encoding gm4_gv_nbt_data = foliage gm4_gv_nbt_data
scoreboard players operation *encoding gm4_gv_nbt_data *= #10000 gm4_gv_math_num
scoreboard players operation traits gm4_trait_data += *encoding gm4_gv_nbt_data

scoreboard players operation *encoding gm4_gv_nbt_data = fertility gm4_gv_nbt_data
scoreboard players operation *encoding gm4_gv_nbt_data *= #100000 gm4_gv_math_num
scoreboard players operation traits gm4_trait_data += *encoding gm4_gv_nbt_data

scoreboard players operation @s gm4_trait_data = traits gm4_trait_data


