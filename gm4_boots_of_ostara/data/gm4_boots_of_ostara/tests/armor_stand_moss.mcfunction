# @template gm4:test_platform

setblock ~1 ~ ~1 stone
summon armor_stand ~1.5 ~1 ~1.5 {HandItems:[{id:"minecraft:moss_block",Count:1b},{}]}
loot replace entity @e[type=armor_stand,sort=nearest,limit=1] armor.feet loot gm4_boots_of_ostara:items/boots_of_ostara

await block ~1 ~ ~1 moss_block
