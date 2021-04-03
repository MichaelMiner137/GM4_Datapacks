# run from TODO



# add tag
tag @s add gm4_gv_arborist
tag @s add gm4_gv_level_2

# set nbt data
data modify entity @s CustomName set value '{"text":"Arborist"}'
data modify entity @s VillagerData set value {level:2,profession:"minecraft:nitwit",type:"minecraft:swamp",Xp:10}
data modify entity @s Offers.Recipes set value []

scoreboard players set @s gm4_gv_trades 2 

function gm4_garden_variety:arborist/trading/leveling/level_1-2

