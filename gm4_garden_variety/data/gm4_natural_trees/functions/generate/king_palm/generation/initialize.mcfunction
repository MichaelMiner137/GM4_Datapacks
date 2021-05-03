# initializes the TREE_TYPE tree's AEC marker
# @s = TREE_TYPE generation AEC marker
# run from gm4_natural_trees:generate/king_palm/generation



# set current tree
scoreboard players reset * gm4_tree_type
scoreboard players set king_palm gm4_tree_type 1 

# delete sapling
fill ~ ~ ~ ~ ~ ~ air replace #minecraft:saplings

# advancement
advancement grant @a[distance=..15] only gm4:grow_king_palm_tree

# decode
execute unless score @s gm4_trait_data matches 1.. if score seed_mode gm4_gv_gen_data matches 0 run scoreboard players set @s gm4_trait_data 1444421
execute if score @s gm4_trait_data matches 1.. run function gm4_garden_variety:data/convert/gv_string_to_scores

# generate seed
function gm4_garden_variety:data/generate/seed/based_on_mode

# set tree variables
function gm4_natural_trees:generate/king_palm/generation/variables/tree_default

# convert soil
execute if score enable_soil_conversion gm4_gv_gen_data matches 1 run function gm4_garden_variety:generation/soil_conversion/initialize

# align and begin generation
execute as @s align xyz positioned ~.5 ~ ~.5 run tp @s ~ ~ ~
execute as @s at @s run function gm4_garden_variety:generation/trees/palm_tree/generate
