

data modify storage gm4_potion_tipping:static effects append from storage gm4_potion_tipping:process effects[0]

data remove storage gm4_potion_tipping:process effects[0]
execute if data storage gm4_potion_tipping:process effects[0] run function gm4_potion_tipping:attack/compile_effects/effect_loop
