
tag @s remove gm4_ptip_affected

data remove storage gm4_potion_tipping:reference mob_effects
data modify storage gm4_potion_tipping:reference mob_effects set from entity @s active_effects

data modify storage gm4_potion_tipping:process add_effects set from storage gm4_potion_tipping:static effects
execute if data storage gm4_potion_tipping:reference mob_effects run function gm4_potion_tipping:attack/apply_effects/loop
execute unless data storage gm4_potion_tipping:reference mob_effects run data modify storage gm4_potion_tipping:reference mob_effects set from storage gm4_potion_tipping:process add_effects

data modify entity @s active_effects set from storage gm4_potion_tipping:reference mob_effects
