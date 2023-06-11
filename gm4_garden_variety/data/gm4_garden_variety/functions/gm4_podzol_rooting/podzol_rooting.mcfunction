
execute if score gm4_apple_trees load.status matches 1.. if entity @s[nbt={Item:{tag:{gm4_podzol_rooting_soil:{id:"apple_tree_sapling"}}}}] align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_apple_trees:sapling/initialize
