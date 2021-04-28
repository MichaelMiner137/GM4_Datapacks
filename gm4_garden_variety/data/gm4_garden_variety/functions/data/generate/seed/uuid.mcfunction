# generates a new seed using the tree's uuid
# @s = custom tree marker
# run from TODO

# set seed based on uuid
execute store result score seed gm4_tree_data run data get entity @s UUID[0]

# convert seed to 16 bit
scoreboard players operation seed gm4_tree_data %= #65536 gm4_gv_math_num

# copy seed to current seed
scoreboard players operation current_seed gm4_tree_data = seed gm4_tree_data

