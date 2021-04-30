# generates a new seed using the tree's position
# @s = custom tree marker
# run from #gm4_garden_variety:data/generate/position_seed

# set seed based on coordinates and world seed
scoreboard players set seed gm4_tree_data 1
data modify storage gm4_garden_variety:data/position Pos set from entity @s Pos
execute store result score seed_mod gm4_tree_data run data get storage gm4_garden_variety:data/position Pos[0]
scoreboard players operation seed gm4_tree_data *= seed_mod gm4_tree_data
execute store result score seed_mod gm4_tree_data run data get storage gm4_garden_variety:data/position Pos[1]
scoreboard players operation seed gm4_tree_data *= seed_mod gm4_tree_data
execute store result score seed_mod gm4_tree_data run data get storage gm4_garden_variety:data/position Pos[2]
scoreboard players operation seed gm4_tree_data *= seed_mod gm4_tree_data
scoreboard players operation seed gm4_tree_data *= world_seed gm4_tree_data

# convert seed to 16 bit
scoreboard players operation seed gm4_tree_data %= #65536 gm4_gv_math_num

# copy seed to current seed
scoreboard players operation current_seed gm4_tree_data = seed gm4_tree_data
