

data modify storage gm4_potion_tipping:process effects set from storage gm4_potion_tipping:process liquids[0].effects
function gm4_potion_tipping:attack/compile_effects/effect_loop

item modify entity @s weapon.mainhand gm4_potion_tipping:lore/create_line
tellraw @p {"nbt":"liquids[0].name","storage":"gm4_potion_tipping:process","interpret": true}
tellraw @p {"color":"red","nbt":"SelectedItem.components.\"minecraft:lore\"","entity":"@s"}

data remove storage gm4_potion_tipping:process liquids[0]
execute if data storage gm4_potion_tipping:process liquids[0] run function gm4_potion_tipping:attack/compile_effects/liquid_loop
