# run from TODO

# change level
data modify entity @s VillagerData.level set value 2

# change level tag
tag @s remove gm4_gv_level_1
tag @s add gm4_gv_level_2

# add trades
scoreboard players set trade_amount gm4_gv_trades 1
execute if score trade_amount gm4_gv_trades matches 1.. run function gm4_garden_variety:arborist/trading/trades/sell_tools
scoreboard players set trade_amount gm4_gv_trades 1
execute if score trade_amount gm4_gv_trades matches 1.. run function gm4_garden_variety:arborist/trading/trades/sell_blocks
scoreboard players set trade_amount gm4_gv_trades 1
execute if score trade_amount gm4_gv_trades matches 1.. run function gm4_garden_variety:arborist/trading/trades/sell_decor





