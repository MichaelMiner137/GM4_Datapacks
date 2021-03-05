# Generates a tree using a world seed and location dependent seed.
# @s = orbis chunk marker to generate a new chunk: @e[type=area_effect_cloud,tag=gm4_chunk,tag=!gm4_generated] 
# at tree spawn position
# run from gm4_garden_variety:generate/palm_tree/TREE_TYPE/orbis/chunk/scan_column

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["gm4_king_palm_sapling","gm4_king_palm_tree_new"],Duration:1}
execute as @e[type=minecraft:area_effect_cloud,tag=gm4_king_palm_tree_new,limit=1] at @s align xyz run function gm4_garden_variety:generate/palm_tree/king_palm/orbis/chunk/generate_seed
