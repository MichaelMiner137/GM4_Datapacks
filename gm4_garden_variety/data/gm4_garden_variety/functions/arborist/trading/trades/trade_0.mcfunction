# run from TODO



# reset storage
data remove storage gm4_garden_variety:data/arborist/next_trade Recipes

### buy ###

# set buy item
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.buy.id set value "minecraft:emerald"

# set buy amount (1-3)
scoreboard players operation trade_buy_amount gm4_gv_trades = current_seed gm4_tree_data
scoreboard players operation trade_buy_amount gm4_gv_trades %= #3 gm4_math_num
scoreboard players add trade_buy_amount gm4_gv_trades 1
function gm4_garden_variety:get/next_seed_value
execute store result storage gm4_garden_variety:data/arborist/next_trade Recipes.buy.Count byte 1 run scoreboard players get trade_buy_amount gm4_gv_trades

### sell ###

# pick item to sell
scoreboard players operation trade_sell_item gm4_gv_trades = current_seed gm4_tree_data
scoreboard players operation trade_sell_item gm4_gv_trades %= #6 gm4_math_num
function gm4_garden_variety:get/next_seed_value

# set item to sell
execute if score trade_sell_item gm4_gv_trades matches 0 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:oak_sapling"
execute if score trade_sell_item gm4_gv_trades matches 1 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:birch_sapling"
execute if score trade_sell_item gm4_gv_trades matches 2 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:spruce_sapling"
execute if score trade_sell_item gm4_gv_trades matches 3 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:jungle_sapling"
execute if score trade_sell_item gm4_gv_trades matches 4 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:dark_oak_sapling"
execute if score trade_sell_item gm4_gv_trades matches 5 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:acacia_sapling"

# set sell amounts (1,4)
scoreboard players set trade_sell_amount gm4_gv_trades 1
execute if score trade_sell_item gm4_gv_trades matches 4 run scoreboard players set trade_sell_amount gm4_gv_trades 4
execute store result storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.Count byte 1 run scoreboard players get trade_sell_amount gm4_gv_trades

### finalize ###

# set other trade data
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.xp set value 6
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.maxUses set value 12

# store trades into 
data modify entity @s Offers.Recipes append from storage gm4_garden_variety:data/arborist/next_trade Recipes

# loop
scoreboard players remove trade_0_amount gm4_gv_trades 1
execute if score trade_0_amount gm4_gv_trades matches 1.. run function gm4_garden_variety:arborist/trading/trades/trade_0