# checks whether @s is a gm4 king palm fruit leaf, and if so allows further evaluation of the age
# @s any gm4_fruiting_leaf
# at @s align xyz
# run from #gm4_fruiting_trees:tree/leaf/fruiting/age

execute if entity @s[tag=gm4_king_palm_fruit_leaf] run function gm4_garden_variety:generate/palm_tree/king_palm/fruiting/leaf/fruit/advance_stage
execute if entity @s[tag=gm4_caranday_palm_sapling] run function gm4_garden_variety:generate/palm_trees/caranday_palm/fruiting/leaf/fruit/advance_stage
execute if entity @s[tag=gm4_fox_tail_palm_sapling] run function gm4_garden_variety:generate/palm_trees/fox_tail_palm/fruiting/leaf/fruit/advance_stage
execute if entity @s[tag=gm4_windmill_palm_sapling] run function gm4_garden_variety:generate/palm_trees/windmill_palm/fruiting/leaf/fruit/advance_stage
execute if entity @s[tag=gm4_spindle_palm_sapling] run function gm4_garden_variety:generate/palm_trees/spindle_palm/fruiting/leaf/fruit/advance_stage
execute if entity @s[tag=gm4_coconut_palm_sapling] run function gm4_garden_variety:generate/palm_trees/coconut_palm/fruiting/leaf/fruit/advance_stage