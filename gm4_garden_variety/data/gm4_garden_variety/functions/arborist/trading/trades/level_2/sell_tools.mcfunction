# run from TODO



### initialize ###

# reset storage
data remove storage gm4_garden_variety:data/arborist/next_trade Recipes


### sell ###

# set trade item
loot replace entity @s weapon loot gm4_garden_variety:arborist/trades/level_2/sell_tools/sell
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell set from entity @s HandItems[0]


### buy ###

# set trade item
loot replace entity @s weapon loot gm4_garden_variety:arborist/trades/level_2/sell_tools/buy
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.buy set from entity @s HandItems[0]


### finalize ###

# set other trade data
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.xp set value 5
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.maxUses set value 8
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.priceMultiplier set value 1f

# store trades into nbt
data modify entity @s Offers.Recipes append from storage gm4_garden_variety:data/arborist/next_trade Recipes

# update debug storage
data modify storage gm4_garden_variety:debug/arborist trades.level_2.sell_tools append from storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id

# loop
scoreboard players remove trade_amount gm4_gv_trades 1
execute if score trade_amount gm4_gv_trades matches 1.. run function gm4_garden_variety:arborist/trading/trades/level_2/sell_tools