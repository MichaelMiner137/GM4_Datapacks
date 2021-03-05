schedule function gm4_garden_variety:main 16t

# king palm (fruit, sapling)
execute as @e[type=armor_stand,tag=gm4_king_palm_fruit_leaf] at @s align xyz run function gm4_garden_variety:generate/palm_tree/king_palm/fruiting/leaf/fruit/process
execute as @e[type=area_effect_cloud,tag=gm4_king_palm_sapling_leaf] at @s align xyz run function gm4_garden_variety:generate/palm_tree/king_palm/fruiting/leaf/sapling/process

# caranday palm (sapling)
execute as @e[type=area_effect_cloud,tag=gm4_caranday_palm_sapling_leaf] at @s align xyz run function gm4_garden_variety:trees/caranday_palm/fruiting/leaf/sapling/process

# fox tail palm (fruit, sapling)
execute as @e[type=armor_stand,tag=gm4_fox_tail_palm_fruit_leaf] at @s align xyz run function gm4_garden_variety:trees/fox_tail_palm/fruiting/leaf/fruit/process
execute as @e[type=area_effect_cloud,tag=gm4_fox_tail_palm_sapling_leaf] at @s align xyz run function gm4_garden_variety:trees/fox_tail_palm/fruiting/leaf/sapling/process

# windmill palm (fruit, sapling)
execute as @e[type=armor_stand,tag=gm4_windmill_palm_fruit_leaf] at @s align xyz run function gm4_garden_variety:trees/windmill_palm/fruiting/leaf/fruit/process
execute as @e[type=area_effect_cloud,tag=gm4_windmill_palm_sapling_leaf] at @s align xyz run function gm4_garden_variety:trees/windmill_palm/fruiting/leaf/sapling/process

# spindle palm (fruit, sapling)
execute as @e[type=armor_stand,tag=gm4_spindle_palm_fruit_leaf] at @s align xyz run function gm4_garden_variety:trees/spindle_palm/fruiting/leaf/fruit/process
execute as @e[type=area_effect_cloud,tag=gm4_spindle_palm_sapling_leaf] at @s align xyz run function gm4_garden_variety:trees/spindle_palm/fruiting/leaf/sapling/process