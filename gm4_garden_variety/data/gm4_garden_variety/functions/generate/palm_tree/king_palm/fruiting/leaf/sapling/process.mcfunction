# handles operations on TREE_TYPE sapling leaves
# @s = any TREE_TYPE sapling leaf
# at @s align xyz positioned at the leaf block
# run from garden_variety:main

execute unless block ~ ~ ~ #minecraft:leaves run function gm4_garden_variety:generate/palm_tree/king_palm/fruiting/leaf/sapling/destroy
