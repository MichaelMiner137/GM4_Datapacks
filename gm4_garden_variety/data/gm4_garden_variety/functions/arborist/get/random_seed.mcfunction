# generates a new seed using the tree's uuid
# @s = custom tree marker
# run from #gm4_garden_variety:get/random_seed

# get current time
execute store result score current_time gm4_gv_arborist run time query daytime

# set seed based on uuid + time
execute store result score seed gm4_tree_data run data get entity @s UUID[1]
scoreboard players operation seed gm4_tree_data += current_time gm4_gv_arborist

# copy seed to current seed
scoreboard players operation current_seed gm4_tree_data = seed gm4_tree_data

