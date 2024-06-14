
say apply_potion

data modify storage gm4_potion_tipping:reference liquids prepend from storage gm4_potion_tipping:static potion_config

item replace entity @s weapon.offhand with minecraft:glass_bottle
playsound minecraft:item.bottle.empty player @s ~ ~ ~ 1 1.5
