
# check if module loaded, and is from garden variety
execute if score gm4_garden_variety load.status matches 1.. if entity @s[nbt={Item:{tag:{gm4_garden_variety:{},gm4_podzol_rooting_soil:{}}}}] align xyz positioned ~0.5 ~0.5 ~0.5 run function gm4_garden_variety:redirect/gm4_podzol_rooting/modified/podzol_rooting
