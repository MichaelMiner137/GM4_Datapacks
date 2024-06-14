
say remove_newest

data remove storage gm4_potion_tipping:reference liquids[0]

item replace entity @s weapon.offhand with minecraft:glass_bottle
playsound minecraft:item.bottle.empty player @s ~ ~ ~ 1 1.5
