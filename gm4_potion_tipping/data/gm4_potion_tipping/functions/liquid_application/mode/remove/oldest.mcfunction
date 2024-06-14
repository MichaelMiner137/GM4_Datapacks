
say remove_oldest

data remove storage gm4_potion_tipping:reference liquids[-1]

item replace entity @s weapon.offhand with minecraft:bucket
playsound minecraft:item.bucket.empty player @s ~ ~ ~ 1 1.25
