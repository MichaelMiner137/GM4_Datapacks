# checks whether the sapling is a custom sapling, and if so allows further execution
# @s apple tree sapling AEC
# at @s align xyz
# run from #gm4_fruiting_trees:sapling/restore_data

execute if entity @s[tag=gm4_king_palm_sapling] run function gm4_natural_trees:generate/king_palm/fruiting/sapling/restore_data/restore

