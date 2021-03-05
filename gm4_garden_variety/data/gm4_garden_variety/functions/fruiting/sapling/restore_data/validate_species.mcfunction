# checks whether the sapling is a custom sapling, and if so allows further execution
# @s apple tree sapling AEC
# at @s align xyz
# run from #gm4_fruiting_trees:sapling/restore_data

execute if entity @s[tag=gm4_king_palm_sapling] run function gm4_garden_variety:generate/palm_tree/king_palm/fruiting/sapling/restore_data/restore
execute if entity @s[tag=gm4_caranday_palm_sapling] run function gm4_garden_variety:generate/palm_trees/caranday_palm/fruiting/sapling/restore_data/restore
execute if entity @s[tag=gm4_fox_tail_palm_sapling] run function gm4_garden_variety:generate/palm_trees/fox_tail_palm/fruiting/sapling/restore_data/restore
execute if entity @s[tag=gm4_windmill_palm_sapling] run function gm4_garden_variety:generate/palm_trees/windmill_palm/fruiting/sapling/restore_data/restore
execute if entity @s[tag=gm4_spindle_palm_sapling] run function gm4_garden_variety:generate/palm_trees/spindle_palm/fruiting/sapling/restore_data/restore
execute if entity @s[tag=gm4_coconut_palm_sapling] run function gm4_garden_variety:generate/palm_trees/coconut_palm/fruiting/sapling/restore_data/restore

