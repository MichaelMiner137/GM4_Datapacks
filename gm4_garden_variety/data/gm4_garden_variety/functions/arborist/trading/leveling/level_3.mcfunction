# run from TODO

data modify entity @s VillagerData.level set value 3

tag @s remove gm4_gv_level_2
tag @s add gm4_gv_level_3

function gm4_garden_variety:get/random_seed


# set trade amounts
scoreboard players set trade_2_amount gm4_gv_trades 1
scoreboard players set trade_3_amount gm4_gv_trades 2

# blocks
execute if score trade_2_amount gm4_gv_trades matches 1.. run function gm4_garden_variety:arborist/trading/trades/trade_2
execute if score trade_3_amount gm4_gv_trades matches 1.. run function gm4_garden_variety:arborist/trading/trades/trade_3





