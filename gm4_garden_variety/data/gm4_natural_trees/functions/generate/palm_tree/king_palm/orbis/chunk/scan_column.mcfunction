# scans a vertical column of the chunk. The scan is aborted if there is any block except air or grass below the current location.
# The scan is ended if there is grass below the current location. The scan is iterated if there is any air below the current location.
# @s = orbis chunk marker to generate a new chunk: @e[type=area_effect_cloud,tag=gm4_chunk,tag=!gm4_generated] 
# at positioned ~7 248-n ~7, where n is the current recursion depth
# run from gm4_natural_trees:chunk/generate

scoreboard players remove structure_height gm4_count 1

# succeed if sand below
execute if block ~ ~-1 ~ minecraft:sand positioned ~ ~2 ~ if predicate gm4_fruiting_trees:5x5_clear positioned ~ ~-2 ~ run function gm4_natural_trees:generate/palm_tree/king_palm/orbis/chunk/spawn_tree

# next height
execute if block ~ ~-1 ~ #gm4_fruiting_trees:tree_replaceable if score structure_height gm4_count matches 64.. positioned ~ ~-1 ~ run function gm4_natural_trees:generate/palm_tree/king_palm/orbis/chunk/scan_column

