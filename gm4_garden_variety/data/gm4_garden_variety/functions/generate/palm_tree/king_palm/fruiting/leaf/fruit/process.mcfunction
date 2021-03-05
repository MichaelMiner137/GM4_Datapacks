# handles operations on TREE_TYPE fruit leaves
# @s = any TREE_TYPE fruit leaf
# at @s align xyz positioned at the leaf block
# run from garden_variety:main

execute if entity @s[tag=!gm4_ripe_king_palm_fruit] positioned ~ ~1 ~ unless block ~ ~ ~ #minecraft:leaves run function gm4_garden_variety:generate/palm_tree/king_palm/fruiting/leaf/fruit/destroy
execute if entity @s[tag=gm4_ripe_king_palm_fruit] positioned ~ ~2 ~ unless block ~ ~ ~ #minecraft:leaves run function gm4_garden_variety:generate/palm_tree/king_palm/fruiting/leaf/fruit/destroy