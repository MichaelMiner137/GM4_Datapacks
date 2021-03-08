# checks whether @s is a gm4 king palm fruit leaf, and if so allows further evaluation of the age
# @s any gm4_fruiting_leaf
# at @s align xyz
# run from #gm4_fruiting_trees:tree/leaf/fruiting/age

execute if entity @s[tag=gm4_king_palm_fruit_leaf] run function gm4_natural_trees:generate/palm_tree/king_palm/fruiting/leaf/fruit/advance_stage
