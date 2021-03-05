# initializes the TREE_TYPE tree's AEC marker
# @s = TREE_TYPE generation AEC marker
# run from gm4_garden_variety:trees/TREE_TYPE/fruiting/tree/generate & gm4_garden_variety:orbis/chunk/generate

# summon trunk marker and begin generation
kill @s[type=!player]
summon area_effect_cloud ~ ~ ~ {Tags:["gm4_tree_trunk"]}
execute as @e[type=area_effect_cloud,tag=gm4_tree_trunk,limit=1,sort=nearest] at @s align xyz positioned ~.5 ~ ~.5 run tp @s ~ ~ ~
execute as @e[type=area_effect_cloud,tag=gm4_tree_trunk,limit=1,sort=nearest] at @s run function gm4_garden_variety:generate/palm_tree/king_palm/generation/initialize