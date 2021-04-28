# run from TODO

# change level
data modify entity @s VillagerData.level set value 5

# change level tag
tag @s remove gm4_gv_level_4
tag @s add gm4_gv_level_5

# get seed and register trades
function gm4_garden_variety:data/generate/seed/uuid_time
function #gm4_garden_variety:arborist/register_trades/random_trait

# add trades
scoreboard players set trade_amount gm4_gv_trades 1
execute if score trade_amount gm4_gv_trades matches 1.. run function gm4_garden_variety:arborist/trading/trades/sell_mutated_saplings

# kill trade markers
kill @e[tag=gm4_gv_random_trait_trade_option]





