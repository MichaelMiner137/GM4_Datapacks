
data modify storage gm4_potion_tipping:reference mob_effects append from storage gm4_potion_tipping:process add_effects[0]

data remove storage gm4_potion_tipping:process add_effects[0]
execute if data storage gm4_potion_tipping:process add_effects[0] run function gm4_potion_tipping:attack/apply_effects/loop
