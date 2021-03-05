# places fruit leaf
# run from gm4_garden_variety:generate/palm_tree/king_palm/generation/decoration/fruit_leaf/attempt

setblock ~ ~ ~ birch_leaves[persistent=true]
execute positioned ~ ~-1 ~ run function gm4_garden_variety:generate/palm_tree/king_palm/fruiting/leaf/fruit/generate
scoreboard players remove fruit_leaves gm4_tree_data 1
