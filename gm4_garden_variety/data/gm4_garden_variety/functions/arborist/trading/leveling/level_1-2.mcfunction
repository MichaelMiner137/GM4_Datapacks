# run from TODO

function gm4_garden_variety:get/random_seed


# set trade amounts
scoreboard players set trade_0_amount gm4_gv_trades 1
scoreboard players set trade_1_amount gm4_gv_trades 1

# vanilla saplings
execute if score trade_0_amount gm4_gv_trades matches 1.. run function gm4_garden_variety:arborist/trading/trades/trade_0
execute if score trade_1_amount gm4_gv_trades matches 1.. run function gm4_garden_variety:arborist/trading/trades/trade_1
# tools
execute if score trade_2_amount gm4_gv_trades matches 1.. run function gm4_garden_variety:arborist/trading/trades/trade_2




