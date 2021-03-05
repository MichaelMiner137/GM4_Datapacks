# advances the stage of the fruit
# @s = TREE_TYPE_fruit_leaf
# at @s align xyz
# run from garden_variety:fruiting/tree/leaf/fruiting/validate_species

# set the visual stage of the fruit depending the score

execute if score @s gm4_fruit_age = #king_palm_fruit_stage_1_start gm4_fruit_data run function gm4_garden_variety:generate/palm_tree/king_palm/fruiting/leaf/fruit/set_stage/1
execute if score @s gm4_fruit_age = #king_palm_fruit_stage_2_start gm4_fruit_data run function gm4_garden_variety:generate/palm_tree/king_palm/fruiting/leaf/fruit/set_stage/2
execute if score @s gm4_fruit_age = #king_palm_fruit_stage_0_start gm4_fruit_data run function gm4_garden_variety:generate/palm_tree/king_palm/fruiting/leaf/fruit/set_stage/0
