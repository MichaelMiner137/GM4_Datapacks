schedule function gm4_natural_trees:main 16t

# king palm (fruit, sapling)
execute as @e[type=armor_stand,tag=gm4_king_palm_fruit_leaf] at @s align xyz run function gm4_natural_trees:generate/palm_tree/king_palm/fruiting/leaf/fruit/process
execute as @e[type=area_effect_cloud,tag=gm4_king_palm_sapling_leaf] at @s align xyz run function gm4_natural_trees:generate/palm_tree/king_palm/fruiting/leaf/sapling/process
