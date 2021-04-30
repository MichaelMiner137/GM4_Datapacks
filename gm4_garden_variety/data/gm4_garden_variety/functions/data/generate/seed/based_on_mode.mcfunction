# generates a new seed using the tree's uuid
# @s = custom tree marker
# run from TODO

# generate seed
execute if score seed_mode gm4_tree_data matches 0 as @s run function gm4_garden_variety:data/generate/seed/position
execute if score seed_mode gm4_tree_data matches 1 as @s run function gm4_garden_variety:data/generate/seed/uuid
execute if score seed_mode gm4_tree_data matches 2 as @s run function gm4_garden_variety:data/generate/seed/uuid_time

# reset seed mode
scoreboard players set seed_mode gm4_tree_data 1