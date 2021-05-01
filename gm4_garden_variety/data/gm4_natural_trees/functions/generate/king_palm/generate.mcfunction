# initializes the TREE_TYPE tree's AEC marker
# @s = TREE_TYPE generation AEC marker
# run from gm4_natural_trees:generate/palm_tree/TREE_TYPE/fruiting/tree/generate & gm4_natural_trees:orbis/chunk/generate

# decode
execute unless score @s gm4_trait_data matches 1.. if score seed_mode gm4_gv_gen_data matches 0 run scoreboard players set @s gm4_trait_data 333321
execute if score @s gm4_trait_data matches 1.. run function gm4_garden_variety:data/convert/gv_string_to_scores

# delete sapling
fill ~ ~ ~ ~ ~ ~ air replace #minecraft:saplings

# summon trunk marker and begin generation
kill @s[type=!player]
summon area_effect_cloud ~ ~ ~ {Tags:["gm4_tree_trunk"]}
execute as @e[type=area_effect_cloud,tag=gm4_tree_trunk,limit=1,sort=nearest] at @s align xyz positioned ~.5 ~ ~.5 run tp @s ~ ~ ~
execute as @e[type=area_effect_cloud,tag=gm4_tree_trunk,limit=1,sort=nearest] at @s run function gm4_natural_trees:generate/king_palm/generation/initialize

