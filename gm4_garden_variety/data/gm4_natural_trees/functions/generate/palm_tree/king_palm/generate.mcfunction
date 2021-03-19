# initializes the TREE_TYPE tree's AEC marker
# @s = TREE_TYPE generation AEC marker
# run from gm4_natural_trees:generate/palm_tree/TREE_TYPE/fruiting/tree/generate & gm4_natural_trees:orbis/chunk/generate

# decode
execute if score seed_mode gm4_tree_data matches 0 run scoreboard players set @s gm4_trait_data 333321
function gm4_garden_variety:storage_data/decode

# summon trunk marker and begin generation
kill @s[type=!player]
summon area_effect_cloud ~ ~ ~ {Tags:["gm4_tree_trunk"]}
execute as @e[type=area_effect_cloud,tag=gm4_tree_trunk,limit=1,sort=nearest] at @s align xyz positioned ~.5 ~ ~.5 run tp @s ~ ~ ~
execute as @e[type=area_effect_cloud,tag=gm4_tree_trunk,limit=1,sort=nearest] at @s run function gm4_natural_trees:generate/palm_tree/king_palm/generation/initialize

# summon nametag
execute if score tagged gm4_gv_nbt_data matches 2 run summon item ~ ~ ~ {Tags:["gm4_gv_add_trait_lore"],Item:{id:"minecraft:name_tag",Count:1b}}
execute if score tagged gm4_gv_nbt_data matches 2 as @e[type=item,distance=..1,limit=1,sort=nearest,tag=gm4_gv_add_trait_lore] run function gm4_garden_variety:storage_data/modify/item_lore/add_traits
