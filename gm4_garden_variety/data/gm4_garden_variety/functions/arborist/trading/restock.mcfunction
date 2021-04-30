# run from TODO

playsound minecraft:entity.villager.work_farmer neutral @a[distance=..20]
particle minecraft:block oak_sapling ~ ~1 ~ 0 0 0 1 3

# restock
data modify storage gm4_garden_variety:data/villager NBT.Offers.Recipes[0].uses set value 0
data modify storage gm4_garden_variety:data/villager NBT.Offers.Recipes[1].uses set value 0
data modify storage gm4_garden_variety:data/villager NBT.Offers.Recipes[2].uses set value 0
data modify storage gm4_garden_variety:data/villager NBT.Offers.Recipes[3].uses set value 0
data modify storage gm4_garden_variety:data/villager NBT.Offers.Recipes[4].uses set value 0
data modify storage gm4_garden_variety:data/villager NBT.Offers.Recipes[5].uses set value 0
data modify storage gm4_garden_variety:data/villager NBT.Offers.Recipes[6].uses set value 0
data modify storage gm4_garden_variety:data/villager NBT.Offers.Recipes[7].uses set value 0
data modify storage gm4_garden_variety:data/villager NBT.Offers.Recipes[8].uses set value 0
data modify storage gm4_garden_variety:data/villager NBT.Offers.Recipes[9].uses set value 0
scoreboard players remove @s gm4_gv_trades 1
data modify entity @s Offers set from storage gm4_garden_variety:data/villager NBT.Offers

tag @s remove gm4_gv_restock
