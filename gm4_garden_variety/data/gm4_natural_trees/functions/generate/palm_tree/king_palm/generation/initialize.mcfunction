# initializes the TREE_TYPE tree's AEC marker
# @s = TREE_TYPE generation AEC marker
# run from gm4_natural_trees:generate/palm_tree/king_palm/generation

# prepare settings
scoreboard players reset * gm4_tree_type
scoreboard players set king_palm gm4_tree_type 1 

# generate seed
execute if score seed_mode gm4_tree_data matches -1 run scoreboard players set seed_mode gm4_tree_data 0
execute if score seed_mode gm4_tree_data matches 0 as @s run function gm4_garden_variety:get/position_seed
execute if score seed_mode gm4_tree_data matches 1 as @s run function gm4_garden_variety:get/uuid_seed

# set tree variables
function gm4_natural_trees:generate/palm_tree/king_palm/generation/variables/tree_default

# align and begin generation
execute as @s align xyz positioned ~.5 ~ ~.5 run tp @s ~ ~ ~
execute as @s at @s run function #gm4_garden_variety:generation/methods/palm_tree/generate