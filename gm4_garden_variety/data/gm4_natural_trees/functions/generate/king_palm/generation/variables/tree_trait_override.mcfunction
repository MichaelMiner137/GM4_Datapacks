# generates variables for the tree based on the current seed
# run from gm4_natural_trees:generate/palm_tree/TREE_TYPE/generate



########## HEIGHT ##########
# shortest (1)
execute if score height gm4_gv_nbt_data matches 1 run scoreboard players remove trunk_layers_minimum gm4_tree_data 4
execute if score height gm4_gv_nbt_data matches 1 if score trunk_layers_range gm4_tree_data matches 3.. run scoreboard players remove trunk_layers_range gm4_tree_data 2
# shorter (2)
execute if score height gm4_gv_nbt_data matches 2 run scoreboard players remove trunk_layers_minimum gm4_tree_data 2
execute if score height gm4_gv_nbt_data matches 2 if score trunk_layers_range gm4_tree_data matches 2.. run scoreboard players remove trunk_layers_range gm4_tree_data 1
# taller (4)
execute if score height gm4_gv_nbt_data matches 4 run scoreboard players add trunk_layers_minimum gm4_tree_data 2
execute if score height gm4_gv_nbt_data matches 4 run scoreboard players add trunk_layers_range gm4_tree_data 1
# tallest (5)
execute if score height gm4_gv_nbt_data matches 5 run scoreboard players add trunk_layers_minimum gm4_tree_data 4
execute if score height gm4_gv_nbt_data matches 5 run scoreboard players add trunk_layers_range gm4_tree_data 2



########## FLEXIBILITY ##########
# stiff (1)
execute if score flexibility gm4_gv_nbt_data matches 1 run scoreboard players set trunk_arc_rate gm4_tree_data 1
execute if score flexibility gm4_gv_nbt_data matches 1 run scoreboard players set trunk_arc_amount gm4_tree_data 0
execute if score flexibility gm4_gv_nbt_data matches 1 run scoreboard players set trunk_arc_addition_rate gm4_tree_data 0
execute if score flexibility gm4_gv_nbt_data matches 1 run scoreboard players set trunk_arc_addition_amount gm4_tree_data 0
# sturdy (2)
execute if score flexibility gm4_gv_nbt_data matches 2 run scoreboard players add trunk_arc_rate gm4_tree_data 1
# flexible (4)
execute if score flexibility gm4_gv_nbt_data matches 4 run scoreboard players add trunk_arc_rate gm4_tree_data 0
execute if score flexibility gm4_gv_nbt_data matches 4 run scoreboard players add trunk_arc_amount gm4_tree_data 1
execute if score flexibility gm4_gv_nbt_data matches 4 run scoreboard players add trunk_arc_addition_rate gm4_tree_data 2
execute if score flexibility gm4_gv_nbt_data matches 4 run scoreboard players add trunk_arc_addition_amount gm4_tree_data 1
# flexible (5)
execute if score flexibility gm4_gv_nbt_data matches 5 run scoreboard players add trunk_arc_rate gm4_tree_data 1
execute if score flexibility gm4_gv_nbt_data matches 5 run scoreboard players add trunk_arc_amount gm4_tree_data 2
execute if score flexibility gm4_gv_nbt_data matches 5 run scoreboard players add trunk_arc_addition_rate gm4_tree_data 3
execute if score flexibility gm4_gv_nbt_data matches 5 run scoreboard players add trunk_arc_addition_amount gm4_tree_data 2



########## FOLIAGE ##########
# smallest (1)
execute if score foliage gm4_gv_nbt_data matches 1 if score palm_amount_minimum gm4_tree_data > minimum_palm_amount gm4_tree_data run scoreboard players remove palm_amount_minimum gm4_tree_data 1
execute if score foliage gm4_gv_nbt_data matches 1 if score palm_amount_range gm4_tree_data matches 2.. run scoreboard players remove palm_amount_range gm4_tree_data 1
# smaller (2)
execute if score foliage gm4_gv_nbt_data matches 2 if score palm_amount_range gm4_tree_data matches 2.. run scoreboard players remove palm_amount_range gm4_tree_data 1
# larger (4)
execute if score foliage gm4_gv_nbt_data matches 4 run scoreboard players add palm_amount_range gm4_tree_data 1
execute if score foliage gm4_gv_nbt_data matches 4 run scoreboard players add leaf_layer_start_range gm4_tree_data 1
# largest (5)
execute if score foliage gm4_gv_nbt_data matches 5 run scoreboard players add palm_amount_minimum gm4_tree_data 1
execute if score foliage gm4_gv_nbt_data matches 5 run scoreboard players add palm_amount_range gm4_tree_data 1
execute if score foliage gm4_gv_nbt_data matches 5 run scoreboard players add leaf_layer_start_minimum gm4_tree_data 1



########## FERTILITY ##########
# sterile (2)
execute if score fertility gm4_gv_nbt_data matches 2 run scoreboard players set sapling_leaves_minimum gm4_tree_data 0
execute if score fertility gm4_gv_nbt_data matches 2 run scoreboard players set fruit_leaves_block_chance gm4_tree_data 0
# fertile (4)
execute if score fertility gm4_gv_nbt_data matches 4 run scoreboard players set sapling_leaves_block_chance gm4_tree_data 10
execute if score fertility gm4_gv_nbt_data matches 4 run scoreboard players set fruit_leaves_block_chance gm4_tree_data 3
execute if score fertility gm4_gv_nbt_data matches 4 run scoreboard players add fruit_leaves_minimum gm4_tree_data 1
execute if score fertility gm4_gv_nbt_data matches 4 run scoreboard players add fruit_leaves_range gm4_tree_data 1

