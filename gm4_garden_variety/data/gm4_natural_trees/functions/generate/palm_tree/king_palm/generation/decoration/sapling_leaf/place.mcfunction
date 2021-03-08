# places sapling leaf marker
# run from gm4_natural_trees:generate/palm_tree/king_palm/generation/decoration/fruit_leaf/attempt

setblock ~ ~ ~ birch_leaves[persistent=true] replace 
execute positioned ~ ~ ~ run function gm4_natural_trees:generate/palm_tree/king_palm/fruiting/leaf/sapling/generate
scoreboard players remove sapling_leaves gm4_tree_data 1
