# plants custom tree saplings to be planted with podzol rooting soil
# @s = any sapling item that was rooted with podzol_rooting_soil
# at @s
# run from #gm4_podzol_rooting_soil:plant_custom_sapling

execute if entity @s[nbt={Item:{tag:{gm4_podzol_rooting_soil:{id:"king_palm_sapling"}}}}] align xyz run function gm4_natural_trees:generate/palm_tree/king_palm/sapling/initialize



