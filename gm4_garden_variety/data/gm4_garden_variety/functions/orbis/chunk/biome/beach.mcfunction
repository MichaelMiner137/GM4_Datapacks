# checks if the orbis chunk should spawn a custom tree
# @s = orbis chunk marker to generate a new chunk: @e[type=area_effect_cloud,tag=gm4_chunk,tag=!gm4_generated] 
# at @s aligned at the negative-most chunk corner
# run from gm4_garden_variety:orbis/chunk/generate

scoreboard players set structure_height gm4_count 248

# king palm tree
execute if block ~ 31 ~ minecraft:andesite positioned ~6 248 ~12 run function gm4_garden_variety:generate/palm_tree/king_palm/orbis/chunk/scan_column
execute if block ~ 41 ~ minecraft:andesite positioned ~9 248 ~4 run function gm4_garden_variety:generate/palm_tree/king_palm/orbis/chunk/scan_column
# caranday palm tree
execute if block ~ 31 ~ minecraft:granite positioned ~5 248 ~12 run function gm4_garden_variety:generate/palm_tree/caranday_palm/orbis/chunk/scan_column
execute if block ~ 41 ~ minecraft:granite positioned ~11 248 ~2 run function gm4_garden_variety:generate/palm_tree/caranday_palm/orbis/chunk/scan_column
# fox tail palm tree
execute if block ~ 31 ~ minecraft:diorite positioned ~10 248 ~4 run function gm4_garden_variety:generate/palm_tree/fox_tail_palm/orbis/chunk/scan_column
execute if block ~ 41 ~ minecraft:diorite positioned ~7 248 ~9 run function gm4_garden_variety:generate/palm_tree/fox_tail_palm/orbis/chunk/scan_column
# windmill palm tree
execute if block ~ 31 ~ minecraft:coal_ore positioned ~4 248 ~7 run function gm4_garden_variety:generate/palm_tree/king_palm/orbis/chunk/scan_column
execute if block ~ 41 ~ minecraft:coal_ore positioned ~12 248 ~11 run function gm4_garden_variety:generate/palm_tree/king_palm/orbis/chunk/scan_column
# spindle palm tree
execute if block ~ 31 ~ minecraft:iron_ore positioned ~12 248 ~9 run function gm4_garden_variety:generate/palm_tree/king_palm/orbis/chunk/scan_column
execute if block ~ 41 ~ minecraft:iron_ore positioned ~7 248 ~8 run function gm4_garden_variety:generate/palm_tree/king_palm/orbis/chunk/scan_column
# coconut palm tree
execute if block ~ 31 ~ minecraft:gravel positioned ~5 248 ~7 run function gm4_garden_variety:generate/palm_tree/king_palm/orbis/chunk/scan_column
execute if block ~ 41 ~ minecraft:gravel positioned ~8 248 ~10 run function gm4_garden_variety:generate/palm_tree/king_palm/orbis/chunk/scan_column

fill ~ 0 ~ ~ 100 ~ yellow_stained_glass_pane keep

