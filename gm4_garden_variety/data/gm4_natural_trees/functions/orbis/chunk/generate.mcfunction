# checks if the orbis chunk should spawn a custom tree
# @s = orbis chunk marker to generate a new chunk: @e[type=area_effect_cloud,tag=gm4_chunk,tag=!gm4_generated] 
# at @s aligned at the negative-most chunk corner
# run from #gm4_orbis:chunk/biome/beach

scoreboard players set structure_height gm4_count 248

# beach biome
execute if score beach gm4_orbis_biome matches 1 if predicate gm4_garden_variety:biome/beach run function gm4_natural_trees:orbis/chunk/biome/beach
