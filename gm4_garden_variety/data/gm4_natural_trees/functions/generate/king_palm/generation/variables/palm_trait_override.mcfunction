# generates variables for the tree based on the current seed
# run from gm4_natural_trees:generate/palm_tree/TREE_TYPE/generate



########## FOLIAGE ##########
# smallest (1)
execute if score foliage gm4_gv_nbt_data matches 1 run scoreboard players remove palm_layers_minimum gm4_gv_gen_data 2
execute if score foliage gm4_gv_nbt_data matches 1 if score palm_layers_range gm4_gv_gen_data matches 2.. run scoreboard players remove palm_layers_range gm4_gv_gen_data 1
# smaller (2)
execute if score foliage gm4_gv_nbt_data matches 2 run scoreboard players remove palm_layers_minimum gm4_gv_gen_data 1
# larger (4)
execute if score foliage gm4_gv_nbt_data matches 4 run scoreboard players add palm_layers_minimum gm4_gv_gen_data 1
execute if score foliage gm4_gv_nbt_data matches 4 run scoreboard players add palm_layers_range gm4_gv_gen_data 1
execute if score foliage gm4_gv_nbt_data matches 4 run scoreboard players remove palm_arc_minimum gm4_gv_gen_data 1
# largeest (5)
execute if score foliage gm4_gv_nbt_data matches 5 run scoreboard players add palm_layers_minimum gm4_gv_gen_data 1
execute if score foliage gm4_gv_nbt_data matches 5 run scoreboard players add palm_layers_range gm4_gv_gen_data 2
execute if score foliage gm4_gv_nbt_data matches 5 run scoreboard players remove palm_arc_minimum gm4_gv_gen_data 1
execute if score foliage gm4_gv_nbt_data matches 5 run scoreboard players remove palm_arc_addition_amount gm4_gv_gen_data 1

