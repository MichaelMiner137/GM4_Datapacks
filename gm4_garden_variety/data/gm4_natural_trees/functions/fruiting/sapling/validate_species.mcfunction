# checks whether the placed sapling is a custom sapling, and if so allows further execution
# @s raycast AEC
# at @s align xyz
# run from #gm4_fruiting_trees:sapling/initialize

execute if data storage gm4_fruiting_trees:data Sapling{type:"king_palm"} run function gm4_natural_trees:generate/palm_tree/king_palm/fruiting/sapling/initialize

