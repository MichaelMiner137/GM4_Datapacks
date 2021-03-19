# checks whether @s is a custom sapling, and if so allows further execution
# @s any gm4_fruiting_sapling
# at @s align xyz
# run from #gm4_fruiting_trees:tree/layer/generate

execute if entity @s[tag=gm4_king_palm_sapling] run function gm4_natural_trees:generate/king_palm/fruiting/tree/generate


