# checks whether the placed sapling is a custom sapling, and if so allows further execution
# @s raycast AEC
# at @s align xyz
# run from #gm4_fruiting_trees:sapling/initialize

execute if data storage gm4_fruiting_trees:data Sapling{type:"king_palm"} run function gm4_garden_variety:generate/palm_tree/king_palm/fruiting/sapling/initialize
execute if data storage gm4_fruiting_trees:data Sapling{type:"caranday_palm"} run function gm4_garden_variety:generate/palm_trees/caranday_palm/fruiting/sapling/initialize
execute if data storage gm4_fruiting_trees:data Sapling{type:"fox_tail_palm"} run function gm4_garden_variety:generate/palm_trees/fox_tail_palm/fruiting/sapling/initialize
execute if data storage gm4_fruiting_trees:data Sapling{type:"windmill_palm"} run function gm4_garden_variety:generate/palm_trees/windmill_palm/fruiting/sapling/initialize
execute if data storage gm4_fruiting_trees:data Sapling{type:"spindle_palm"} run function gm4_garden_variety:generate/palm_trees/spindle_palm/fruiting/sapling/initialize
execute if data storage gm4_fruiting_trees:data Sapling{type:"coconut_palm"} run function gm4_garden_variety:generate/palm_trees/coconut_palm/fruiting/sapling/initialize
