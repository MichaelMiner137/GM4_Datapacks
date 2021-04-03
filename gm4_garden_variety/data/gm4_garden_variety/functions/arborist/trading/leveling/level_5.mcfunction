# run from TODO

data modify entity @s VillagerData.level set value 5

tag @s remove gm4_gv_level_4
tag @s add gm4_gv_level_5

function gm4_garden_variety:get/random_seed
function #gm4_garden_variety:arborist/register_trades

# set trade amounts
scoreboard players set trade_6_amount gm4_gv_trades 2

# decorative saplings
execute if score trade_6_amount gm4_gv_trades matches 1.. run function gm4_garden_variety:arborist/trading/trades/trade_6

# kill trade markers
kill @e[tag=gm4_gv_natural_trade_option]
kill @e[tag=gm4_gv_decorative_trade_option]





