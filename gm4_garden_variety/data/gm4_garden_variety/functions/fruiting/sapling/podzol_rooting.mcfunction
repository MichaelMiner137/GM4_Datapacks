# plants custom tree saplings to be planted with podzol rooting soil
# @s = any sapling item that was rooted with podzol_rooting_soil
# at @s
# run from #gm4_podzol_rooting_soil:plant_custom_sapling

execute if entity @s[nbt={Item:{tag:{gm4_podzol_rooting_soil:{id:"king_palm_sapling"}}}}] align xyz run function gm4_garden_variety:generate/palm_tree/king_palm/sapling/initialize
execute if entity @s[nbt={Item:{tag:{gm4_podzol_rooting_soil:{id:"caranday_palm_sapling"}}}}] align xyz run function gm4_garden_variety:generate/palm_trees/caranday_palm/sapling/initialize
execute if entity @s[nbt={Item:{tag:{gm4_podzol_rooting_soil:{id:"fox_tail_palm_sapling"}}}}] align xyz run function gm4_garden_variety:generate/palm_trees/fox_tail_palm/sapling/initialize
execute if entity @s[nbt={Item:{tag:{gm4_podzol_rooting_soil:{id:"windmill_palm_sapling"}}}}] align xyz run function gm4_garden_variety:generate/palm_trees/windmill_palm/sapling/initialize
execute if entity @s[nbt={Item:{tag:{gm4_podzol_rooting_soil:{id:"spindle_palm_sapling"}}}}] align xyz run function gm4_garden_variety:generate/palm_trees/spindle_palm/sapling/initialize
execute if entity @s[nbt={Item:{tag:{gm4_podzol_rooting_soil:{id:"coconut_palm_sapling"}}}}] align xyz run function gm4_garden_variety:generate/palm_trees/coconut_palm/sapling/initialize


