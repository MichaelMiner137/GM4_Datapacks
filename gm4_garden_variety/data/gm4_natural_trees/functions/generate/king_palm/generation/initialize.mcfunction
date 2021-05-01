# initializes the TREE_TYPE tree's AEC marker
# @s = TREE_TYPE generation AEC marker
# run from gm4_natural_trees:generate/king_palm/generation

# prepare settings
scoreboard players reset * gm4_tree_type
scoreboard players set king_palm gm4_tree_type 1 

# generate seed
function gm4_garden_variety:data/generate/seed/based_on_mode

# set tree variables
function gm4_natural_trees:generate/king_palm/generation/variables/tree_default

# align and begin generation
execute as @s align xyz positioned ~.5 ~ ~.5 run tp @s ~ ~ ~
execute as @s at @s run function gm4_garden_variety:generation/trees/palm_tree/generate