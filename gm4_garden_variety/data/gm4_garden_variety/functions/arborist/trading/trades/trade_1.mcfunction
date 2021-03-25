# run from TODO



# reset storage
data remove storage gm4_garden_variety:data/arborist/next_trade Recipes

### buy ###

# pick item to buy
scoreboard players operation trade_buy_item gm4_gv_trades = current_seed gm4_tree_data
scoreboard players operation trade_buy_item gm4_gv_trades %= #6 gm4_math_num
function gm4_garden_variety:get/next_seed_value

# set item to buy
execute if score trade_buy_item gm4_gv_trades matches 0 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.buy.id set value "minecraft:oak_sapling"
execute if score trade_buy_item gm4_gv_trades matches 1 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.buy.id set value "minecraft:birch_sapling"
execute if score trade_buy_item gm4_gv_trades matches 2 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.buy.id set value "minecraft:spruce_sapling"
execute if score trade_buy_item gm4_gv_trades matches 3 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.buy.id set value "minecraft:jungle_sapling"
execute if score trade_buy_item gm4_gv_trades matches 4 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.buy.id set value "minecraft:dark_oak_sapling"
execute if score trade_buy_item gm4_gv_trades matches 5 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.buy.id set value "minecraft:acacia_sapling"

# set buy amounts
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.buy.Count set value 1b
execute if score trade_buy_item gm4_gv_trades matches 4 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.buy.Count set value 4b

### buyb ###

# pick item to buy
scoreboard players operation trade_buyb_item gm4_gv_trades = current_seed gm4_tree_data
scoreboard players operation trade_buyb_item gm4_gv_trades %= #6 gm4_math_num
function gm4_garden_variety:get/next_seed_value
execute if score trade_buyb_item gm4_gv_trades = trade_buy_item gm4_gv_trades run scoreboard players add trade_buyb_item gm4_gv_trades 1
execute if score trade_buyb_item gm4_gv_trades matches 6.. run scoreboard players remove trade_buyb_item gm4_gv_trades 5

# set item to buy
execute if score trade_buyb_item gm4_gv_trades matches 0 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.buyB.id set value "minecraft:oak_sapling"
execute if score trade_buyb_item gm4_gv_trades matches 1 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.buyB.id set value "minecraft:birch_sapling"
execute if score trade_buyb_item gm4_gv_trades matches 2 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.buyB.id set value "minecraft:spruce_sapling"
execute if score trade_buyb_item gm4_gv_trades matches 3 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.buyB.id set value "minecraft:jungle_sapling"
execute if score trade_buyb_item gm4_gv_trades matches 4 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.buyB.id set value "minecraft:dark_oak_sapling"
execute if score trade_buyb_item gm4_gv_trades matches 5 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.buyB.id set value "minecraft:acacia_sapling"

# set buy amounts
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.buyB.Count set value 1b
execute if score trade_buyb_item gm4_gv_trades matches 4 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.buyB.Count set value 4b

### sell ###

# pick item to sell
scoreboard players operation trade_sell_item gm4_gv_trades = current_seed gm4_tree_data
scoreboard players operation trade_sell_item gm4_gv_trades %= #6 gm4_math_num
function gm4_garden_variety:get/next_seed_value
execute if score trade_sell_item gm4_gv_trades = trade_buy_item gm4_gv_trades run scoreboard players add trade_sell_item gm4_gv_trades 1
execute if score trade_sell_item gm4_gv_trades = trade_buyb_item gm4_gv_trades run scoreboard players add trade_sell_item gm4_gv_trades 1
execute if score trade_sell_item gm4_gv_trades matches 6.. run scoreboard players remove trade_sell_item gm4_gv_trades 5

# set item to sell
execute if score trade_sell_item gm4_gv_trades matches 0 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:oak_sapling"
execute if score trade_sell_item gm4_gv_trades matches 1 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:birch_sapling"
execute if score trade_sell_item gm4_gv_trades matches 2 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:spruce_sapling"
execute if score trade_sell_item gm4_gv_trades matches 3 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:jungle_sapling"
execute if score trade_sell_item gm4_gv_trades matches 4 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:dark_oak_sapling"
execute if score trade_sell_item gm4_gv_trades matches 5 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.id set value "minecraft:acacia_sapling"

# set sell amounts
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.Count set value 1b
execute if score trade_sell_item gm4_gv_trades matches 4 run data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.sell.Count set value 4b

### finalize ###

# set other trade data
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.xp set value 9
data modify storage gm4_garden_variety:data/arborist/next_trade Recipes.maxUses set value 8

# store trades into nbt
data modify entity @s Offers.Recipes append from storage gm4_garden_variety:data/arborist/next_trade Recipes

# loop
scoreboard players remove trade_1_amount gm4_gv_trades 1
execute if score trade_1_amount gm4_gv_trades matches 1.. run function gm4_garden_variety:arborist/trading/trades/trade_1