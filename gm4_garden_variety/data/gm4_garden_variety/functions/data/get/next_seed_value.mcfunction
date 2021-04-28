# generates the next current seed using the tree's seed
# @s = any equation that needs another seed value
# run from #gm4_garden_variety:

# cycle to next current seed
scoreboard players operation current_seed gm4_tree_data /= #10 gm4_gv_math_num
execute if score current_seed gm4_tree_data matches ..99 run scoreboard players operation current_seed gm4_tree_data = seed gm4_tree_data

